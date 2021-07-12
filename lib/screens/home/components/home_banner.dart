import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class HomeBannder extends StatelessWidget {
  const HomeBannder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.jpeg',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover my Amazing \nArt Space !!',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: size.width < 1024 ? 24 : null,
                      ),
                ),
                AnimatedTextWidget(),
                SizedBox(
                  height: defaultPadding,
                ),
                if (size.width > 700)
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding,
                      ),
                      backgroundColor: primaryColor,
                    ),
                    child: Text(
                      'Explore now'.toUpperCase(),
                      style: TextStyle(
                        color: darkColor,
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          if (size.width > 700) FlutterCodedText(),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text("I'm a "),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'Flutter Developer',
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'Full-stack Developer',
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'Android and iOS Developer',
                speed: Duration(milliseconds: 60),
              ),
            ],
          ),
          SizedBox(
            width: defaultPadding / 2,
          ),
          if (size.width > 700) FlutterCodedText(),
        ],
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(
            text: 'flutter',
            style: TextStyle(
              color: primaryColor,
            ),
          ),
          TextSpan(text: '>'),
        ],
      ),
    );
  }
}
