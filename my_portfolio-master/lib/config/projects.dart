import 'package:my_portfolio/config/assets.dart';
import 'package:my_portfolio/models/project_model.dart';

// TODO: 成果物を載せる。と言っても多分1個か2個しかない悲しみ。
/*
どんな技術を使ったのか
なぜその技術を使ったのか
制作で自分がどの領域を担当したか
なぜその技術を採用したか
どのような工夫をしたか
 */

final List<Project> projects = [
  Project(
    name: 'AtCoder Tracker',
    description: 'AtCoder Problems上に登録されているユーザーの情報と'
        'AtCoder上のユーザー情報を取得し管理します。',
    image: Assets.atCoderTracker,
    link: 'https://github.com/Javateaboy/tracker_status_atcoder',
  ),
  Project(
    name: '掃除を2名選ぶN先生',
    description: 'LINE-BOT-SDKを利用してグループに所属している中からランダムに2名選出し、'
        '掃除係として任命するBOTです。',
    link: 'https://github.com/Javateaboy/line-bot-souzi',
    image: Assets.messaging,
  ),
  Project(
    name: 'MyPortfolio',
    description: 'Flutter-webで作りました。仕事をください。',
    image: Assets.myPortfolio,
  ),
  Project(
    name: 'TBC/CPC',
    description: '競プロ部のHPです。HTML/CSS/JS & NES.cssを使っています。',
    image: Assets.tbccpc,
    link: 'https://javateaboy.github.io/tbccpc/',
  ),
  Project(
    name: 'SunApp',
    description: '射精管理アプリです。卒業までにはSNS化してデザインも一新し、使いやすくします（断言）',
    image: Assets.noImage,
    link: 'https://github.com/Javateaboy/sun_app',
  ),
];