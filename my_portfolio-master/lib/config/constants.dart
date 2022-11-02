import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/my_chip.dart';
import 'package:url_launcher/url_launcher.dart';
import 'assets.dart';

const kSubTitleTextStyle = TextStyle(
  fontFamily: 'FZ',
);

const String myGithub = 'https://github.com/Javateaboy';
const String myTwitter = 'https://twitter.com/dogetemmie';
const String myFacebook = 'https://www.facebook.com/noikari.gomaabura';
const String myNote = 'https://note.com/javateaboy';
const String myQiita = 'https://qiita.com/UpMountains';
const String myAtCoder = 'https://atcoder.jp/users/cowgirl';

const String aboutMeDescription = '高校卒業後１年間プロゲーマーを目指してフリーター。\n'
    '限界を感じ、昔からパソコンが好きだったのでプログラミングを学ぶ為に情報専門に入学。\n'
    '実情は、資格対策学校だったが為にプログラミングは独学で紆余曲折を経て習得。\n'
    '現在はFlutterでモバイル開発を趣味にしてます。Web系/モバイルアプリ系で就活中。コロナがコワイ\u{1F637}';

const String qualifications =
    '・Flutter\n'
    '・WebDev\n'
    '・ダーツ\n'
    '・ビリヤード\n'
    '・インディーズゲーム\n'
    '・ボードゲーム\n'
    '・RocketLeague\n'
    '・Listen to Music(EDM)';

const List<String> myName = ['Up Mountains'];

    List<MyChip> kSkillLanguageChipList = [
  MyChip(
    title: 'HTML',
    icon: Image.asset(Assets.html),
    onPressed: (){},
  ),
  MyChip(
    title: 'CSS',
    icon: Image.asset(Assets.css),
    onPressed: (){},
  ),
  MyChip(
    title: 'Dart',
    icon: Image.asset(Assets.dart),
    onPressed: (){},
  ),
  MyChip(
    title: 'Python',
    icon: Image.asset(Assets.python),
    onPressed: (){},
  ),
  MyChip(
    title: 'C++',
    icon: Image.asset(Assets.cpp),
    onPressed: (){},
  ),
  MyChip(
    title: 'Ruby',
    icon: Image.asset(Assets.ruby),
    onPressed: (){},
  )
];

List<MyChip> kSkillFWChipList = [
  MyChip(
    title: 'Flutter',
    icon: const FlutterLogo(),
    onPressed: (){},
  ),
  MyChip(
    title: 'Django',
    icon: Image.asset(Assets.django),
    onPressed: (){},
  ),
  MyChip(
    title: 'Flask',
    icon: Image.asset(Assets.flask),
    onPressed: (){},
  ),
  MyChip(
    title: 'Ruby on Rails',
    icon: Image.asset(Assets.ror),
    onPressed: (){},
  ),
  MyChip(
    title: 'Bootstrap',
    icon: Image.asset(Assets.bootstrap),
    onPressed: (){},
  )
];

List<MyChip> kSkillToolsChipList = [
  MyChip(
    title: 'git',
    icon: Image.asset(Assets.git),
    onPressed: (){},
  ),
  MyChip(
    title: 'Sketch',
    icon: Image.asset(Assets.sketch),
    onPressed: (){},
  ),
  MyChip(
    title: 'SourceTree',
    icon: Image.asset(Assets.sourceTree),
    onPressed: (){},
  ),
  MyChip(
    title: 'VSCode',
    icon: Image.asset(Assets.vsCode),
    onPressed: (){},
  ),
  MyChip(
    title: 'AndroidStudio',
    icon: Image.asset(Assets.androidStudio),
    onPressed: (){},
  ),
  MyChip(
    title: 'Firebase',
    icon: Image.asset(Assets.fireBase),
    onPressed: (){},
  ),
  // TODO: Slackの追加
];

List<MyChip> kSkillOsChipList = [
  MyChip(
    title: 'Mac',
    icon: Image.asset(Assets.mac),
    onPressed: (){},
  ),
  MyChip(
    title: 'Windows',
    icon: Image.asset(Assets.win10),
    onPressed: (){},
  ),
  MyChip(
    title: 'CentOS',
    icon: Image.asset(Assets.centOs),
    onPressed: (){},
  )
];

List<MyChip> kSnsChipList = [
  MyChip(
    title: 'GitHub',
    icon: Image.asset(Assets.github),
    onPressed: (){
      launch(myGithub);
    },
  ),
  MyChip(
    title: 'Twitter',
    icon: Image.asset(Assets.twitter),
    onPressed: (){
      launch(myTwitter);
    },
  ),
  MyChip(
    title: 'FaceBook',
    icon: Image.asset(Assets.facebook),
    onPressed: (){
      launch(myFacebook);
    },
  ),
  MyChip(
    title: 'Note',
    icon: Image.asset(Assets.note),
    onPressed: (){
      launch(myNote);
    },
  ),
  MyChip(
    title: 'Qiita',
    icon: Image.asset(Assets.qiita),
    onPressed: (){
      launch(myQiita);
    },
  ),
  MyChip(
    title: 'AtCoder',
    icon: Image.asset(Assets.atCoder),
    onPressed: () {
      launch(myAtCoder);
    },
  )
];
