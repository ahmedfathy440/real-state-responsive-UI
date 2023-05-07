import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';
import 'package:real_state_app/models/peojects.dart';
import 'package:real_state_app/responsive.dart';
import 'package:real_state_app/widgets/main/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Our Projects', style: Theme.of(context).textTheme.titleLarge),
        Responsive(
          desktop: buildGridView(
            crossAxsitCount: 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
            itemCount: demoProjects.length,
          ),
          tablet: buildGridView(
            crossAxsitCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
            itemCount: demoProjects.length,
          ),
          mobileLarge: buildGridView(
            crossAxsitCount: 1,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
            itemCount: demoProjects.length,
          ),
          mobile: buildGridView(
            crossAxsitCount: 1,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
            itemCount: demoProjects.length,
          ),
        ),
      ],
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxsitCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxsitCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: kDefaultPadding,
          mainAxisSpacing: kDefaultPadding,
        ),
        itemBuilder: itemBuilder);
  }
}


