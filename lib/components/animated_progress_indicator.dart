import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  final String label;
  final double percentage;

  AnimatedCircularProgressIndicator({
    required this.label,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (ctx, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + '%',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  final String label;
  final double percentage;
  AnimatedLinearProgressIndicator({
    required this.label,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: percentage),
      duration: defaultDuration,
      builder: (ctx, double value, child) => Column(
        children: [
          Row(
            children: [
              Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Text('${(value * 100).toInt()} %'),
            ],
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          LinearProgressIndicator(
            value: value,
            color: primaryColor,
            backgroundColor: darkColor,
          ),
          SizedBox(
            height: defaultPadding,
          ),
        ],
      ),
    );
  }
}
