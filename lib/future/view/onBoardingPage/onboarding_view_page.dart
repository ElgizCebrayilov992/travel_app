import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:travel_app/core/constans/app_constantsa.dart';
import 'package:travel_app/core/constans/text_constants.dart';
import 'package:travel_app/future/view/homePage/home_page_view.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: context.paddingMedium,
          child: Column(
            children: [
              buildTitle(context),
              buildImagesText(context),
              buildButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Container buildButton(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: context.dynamicHeight(0.08),
      width: context.dynamicWidth(0.4),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
              (route) => false);
        },
        child: Text(UITrravelConstans.onBoardingButton),
        style: ElevatedButton.styleFrom(
            primary: Colors.indigo, textStyle: context.textTheme.headline5),
      ),
    );
  }

  buildImagesText(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: context.dynamicHeight(0.4),
            width: context.dynamicWidth(100),
            child: Image(
              image: AssetImage(AppConstants.imageUrl),
            ),
          ),
          Text(
            UITrravelConstans.onBoardingFirst,
            style: context.textTheme.headline4!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: context.dynamicHeight(0.05),
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(UITrravelConstans.onBoardingSecond,
                  textStyle: context.textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                  textAlign: TextAlign.center),
            ],
          )
        ],
      ),
    );
  }

  Container buildTitle(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: context.dynamicHeight(0.08),
      child: AnimatedTextKit(
        //displayFullTextOnTap: true,
        animatedTexts: [
          WavyAnimatedText(
            UITrravelConstans.title,
            textStyle: context.textTheme.headline3!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.indigo),
          ),
        ],
        isRepeatingAnimation: true,
      ),
    );
  }
}
