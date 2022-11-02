import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const JankenPage(),
    );
  }
}

class JankenPage extends StatefulWidget {
  const JankenPage({super.key});

  @override
  State<JankenPage> createState() => _JankenPageState();
}

class _JankenPageState extends State<JankenPage> {
  /// 自分の手
  String myHand = '✊';

  /// コンピューターの手
  String computerHand = '✊';

  /// 勝敗を保持する変数
  String result = '引き分け';

  //勝負の回数
  int gamecount = 0;

  //勝った回数
  int wincount = 0;

  String winmessage = '';

  // 関数の定義も、State の {} の中で行います。
  void selectHand(String selectedHand) {
    if (gamecount == 5) {
      gamecount = 0;
      wincount = 0;
    }
    winmessage = '';
    myHand = selectedHand; // myHand に 引数として受けとった selectedHand を代入します。
    print(myHand);
    generateComputerHand(); // コンピューターの手を決める。
    judge(); // 勝敗を判定する。
    setState(() {});
  }
  // ※ 本当は selectHand という名前の関数の中にそれ以外の処理をたくさん詰め込むのはよくありません
  // 解説の流れの都合上こうなってしまっていますが、できればもう一つ別の関数を用意してそこに処理をまとめるとよいでしょう。

  /// コンピューターの手をランダムで生成
  void generateComputerHand() {
    // randomNumberに一時的に値を格納します。
    final randomNumber = Random().nextInt(3);
    // 生成されたランダムな数字を ✊, ✌️, 🖐 に変換して、コンピューターの手に代入します。
    computerHand = randomNumberToHand(randomNumber);
  }

  /// ランダムで選んだ数字を絵文字に変換する
  String randomNumberToHand(int randomNumber) {
    // () のなかには条件となる値を書きます。
    switch (randomNumber) {
      case 0: // 入ってきた値がもし 0 だったら。
        return '✊'; // ✊を返す。
      case 1: // 入ってきた値がもし 1 だったら。
        return '✌️'; // ✌️を返す。
      case 2: // 入ってきた値がもし 2 だったら。
        return '🖐'; // 🖐を返す。
      default: // 上で書いてきた以外の値が入ってきたら。
        return '✊'; // ✊を返す。（0, 1, 2 以外が入ることはないが念のため）
    }
  }

  /// 勝敗を判定する関数
  void judge() {
    // 引き分けの場合
    if (myHand == computerHand) {
      result = '引き分け';
      // 勝ちの場合

    } else if (myHand == '✊' && computerHand == '✌️' ||
        myHand == '✌️' && computerHand == '🖐' ||
        myHand == '🖐' && computerHand == '✊') {
      result = '勝ち';
      wincount++; //勝った時にカウントする
      // 負けの場合
    } else {
      result = '負け';
    }
    gamecount++;

    if (gamecount == 5) {
      winmessage = 'あなたは5回勝負して$wincount回勝ちました'; //５回勝負した時にwinmessageに代入
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('じゃんけん'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //勝敗回数
            Text(
              winmessage,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),

            /// 勝敗
            Text(
              result,
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 48),

            /// コンピューターの手
            Text(
              computerHand,
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 48),

            /// 自分の手
            Text(
              myHand,
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 16),

            /// 出す手を選ぶためのボタン
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    selectHand('✊'); // 作った関数を呼び出すときはこのように書きます。
                  },
                  child: const Text('✊'),
                ),
                ElevatedButton(
                  onPressed: () {
                    selectHand('✌️'); // 作った関数を呼び出すときはこのように書きます。
                  },
                  child: const Text('✌️'),
                ),
                ElevatedButton(
                  onPressed: () {
                    selectHand('🖐'); // 作った関数を呼び出すときはこのように書きます。
                  },
                  child: const Text('🖐'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
