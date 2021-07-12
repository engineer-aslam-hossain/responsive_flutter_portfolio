import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
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
            'Knowledges',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: 'React, Redux, React Native'),
        KnowledgeText(text: 'NextJs, VueJs, ExpressJs'),
        KnowledgeText(text: 'Bootstrap, FontAwesome, MaterialUI'),
        KnowledgeText(text: 'SASS, Socket, WebRTC'),
        KnowledgeText(text: 'MongoDB, ReactBootstrap, Firebase'),
        KnowledgeText(text: 'NPM , Github, Cmder'),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  final String text;
  KnowledgeText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/check.svg'),
            SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
