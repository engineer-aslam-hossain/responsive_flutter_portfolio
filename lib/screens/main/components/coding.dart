import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';
import 'package:flutter_profile/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: defaultPadding,
          ),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          label: 'Dart',
          percentage: .8,
        ),
        AnimatedLinearProgressIndicator(
          label: 'Javascript',
          percentage: .85,
        ),
        AnimatedLinearProgressIndicator(
          label: 'Python',
          percentage: .65,
        ),
        AnimatedLinearProgressIndicator(
          label: 'Java',
          percentage: .5,
        ),
        AnimatedLinearProgressIndicator(
          label: 'HTML',
          percentage: .9,
        ),
        AnimatedLinearProgressIndicator(
          label: 'CSS',
          percentage: .75,
        ),
      ],
    );
  }
}
