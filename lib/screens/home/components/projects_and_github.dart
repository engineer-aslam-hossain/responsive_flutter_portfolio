import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class ProjectsAndGithub extends StatelessWidget {
  const ProjectsAndGithub({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding),
      child: Column(
        children: [
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              YoutubeGithubInfo(
                title: '50+',
                label: 'Projects',
              ),
              YoutubeGithubInfo(
                title: '10+',
                label: 'Clients',
              ),
              if (size.width > 700)
                YoutubeGithubInfo(
                  title: '65+',
                  label: 'Github Projects',
                ),
              if (size.width > 700)
                YoutubeGithubInfo(
                  title: '2+',
                  label: 'Company Experience',
                ),
            ],
          ),
          if (size.width < 700)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                YoutubeGithubInfo(
                  title: '65+',
                  label: 'Github Projects',
                ),
                YoutubeGithubInfo(
                  title: '2+',
                  label: 'Company Experience',
                ),
              ],
            )
        ],
      ),
    );
  }
}

class YoutubeGithubInfo extends StatelessWidget {
  final String title, label;

  YoutubeGithubInfo({
    required this.title,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: defaultPadding / 4),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: primaryColor,
                  fontSize: 20,
                ),
          ),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
