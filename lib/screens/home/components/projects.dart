import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(right: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: defaultPadding * 2,
          ),
          Text(
            'My Projects',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          GridView.builder(
            itemCount: demo_projects.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: size.width > 900
                  ? 3
                  : size.width > 700
                      ? 2
                      : 1,
              childAspectRatio: size.width > 1100
                  ? 1.3
                  : size.width > 900
                      ? 1
                      : size.width > 700
                          ? 1.7
                          : size.width < 500
                              ? 1.8
                              : 2.5,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (ctx, index) => ProjectsCard(
              title: demo_projects[index].title!,
              description: demo_projects[index].description!,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
        ],
      ),
    );
  }
}

class ProjectsCard extends StatelessWidget {
  final String title, description;
  ProjectsCard({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Flexible(
            child: Text(
              description,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.double_arrow,
              color: primaryColor,
            ),
            label: Text(
              'Read More',
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
