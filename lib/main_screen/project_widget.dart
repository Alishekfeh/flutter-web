
import 'package:flutter/material.dart';
import 'package:new_web_app/const.dart';
import 'package:new_web_app/models/projects.dart';
import 'package:new_web_app/responsive.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Our Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        Responsive(
          desktop: buildGridView(
              itemCount: demoProjects.length,
              childAspectRatio: 0.7,
              crossAxisCount: 3,
              itemBuilder: (context, index) => ProjectCard(
                    project: demoProjects[index],
                  )),
          mobile: buildGridView(
              itemCount: demoProjects.length,
              childAspectRatio: 0.7,
              crossAxisCount: 1,
              itemBuilder: (context, index) => ProjectCard(
                    project: demoProjects[index],
                  )),
          mobileLarge: buildGridView(
              itemCount: demoProjects.length,
              childAspectRatio: 0.7,
              crossAxisCount: 2,
              itemBuilder: (context, index) => ProjectCard(
                    project: demoProjects[index],
                  )),
          tablet: buildGridView(
              itemCount: demoProjects.length,
              childAspectRatio: 0.7,
              crossAxisCount: MediaQuery.of(context).size.width<900?2:3,
              itemBuilder: (context, index) => ProjectCard(
                    project: demoProjects[index],
                  )),
        )
      ],
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required Widget Function(BuildContext, int) itemBuilder,
  }) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: demoProjects.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          crossAxisSpacing: kDefaultPadding,
          mainAxisSpacing: kDefaultPadding,
        ),
        itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ));
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            project.title!,
            maxLines: 2,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
              child: Text(
            project.description!,
            style: const TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
            maxLines: 6,
          )),
          const SizedBox(
            height: kDefaultPadding,
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "More Info >",
                style: TextStyle(color: kPrimaryColor),
              ))
        ],
      ),
    );
  }
}
