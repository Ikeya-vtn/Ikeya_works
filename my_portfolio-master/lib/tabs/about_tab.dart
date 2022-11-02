import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/config/assets.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_portfolio/config/constants.dart';
import 'package:my_portfolio/widgets/wrap_chip_list.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TypewriterAnimatedTextKit(
                    text: myName,
                    totalRepeatCount: 1,
                    speed: const Duration(milliseconds: 500),
                    textStyle: const TextStyle(
                      fontSize: 60,
                      fontFamily: 'SourceSansPro',
                    ),
                    textAlign: TextAlign.start,
                    alignment: AlignmentDirectional.topStart,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Opacity(
                opacity: 0.5,
                child: Text(
                  'Flutterと競プロすき\u{1F60A}\n'
                  'コード書くのすき\u{1F60F}',
                  textScaleFactor: 1.5,
                ),
              ),
              const SizedBox(height: 20),
              WrapChipList(children: kSnsChipList),
              const SizedBox(height: 100),

              // ---------------------------------------------------------
              // About Me
              const Text('About Me',
                  textScaleFactor: 2, style: kSubTitleTextStyle),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Text(
                  aboutMeDescription,
                  textScaleFactor: 1.5,
                ),
              ),
              const SizedBox(height: 100),

              // --------------------------------------------------------
              // Interests/Hobbies
              const Text('Interests/Hobbies',
                  textScaleFactor: 2, style: kSubTitleTextStyle),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  qualifications,
                  textScaleFactor: 1.5,
                  style: kSubTitleTextStyle.copyWith(height: 2),
                ),
              ),

              const SizedBox(height: 100),
              // ---------------------------------------------------------
              // Qualifications
              const Text(
                'Qualifications',
                textScaleFactor: 2,
                style: kSubTitleTextStyle,
              ),
              const SizedBox(height: 20),
              const QualificationItem(title: 'データベーススペシャリスト, April 2019'),
              const QualificationItem(title: '情報安全確保支援士, Oct 2018'),
              const QualificationItem(title: '応用情報技術者試験, April 2018'),
              const QualificationItem(title: '基本情報技術者意見, Oct 2017'),
              const QualificationItem(title: 'G検定, Aug 2019'),
              const QualificationItem(title: 'LinuC lv1, July 2018'),
              const SizedBox(height: 100),

              // ---------------------------------------------------------
              // Skill Set
              const Text('Skill Set',
                  textScaleFactor: 2, style: kSubTitleTextStyle),
              const SizedBox(height: 20),
              WrapChipList(children: kSkillLanguageChipList),
              WrapChipList(children: kSkillFWChipList),
              WrapChipList(children: kSkillToolsChipList),
              WrapChipList(children: kSkillOsChipList),
            ],
          ),
        ),
      ),
    );
  }
}

class QualificationItem extends StatelessWidget {
  const QualificationItem({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Icon(Icons.school),
        const SizedBox(width: 10),
        Text(
          title,
          textScaleFactor: 1.5,
        ),
      ],
    );
  }
}
