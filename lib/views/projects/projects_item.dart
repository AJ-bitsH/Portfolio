import 'package:flutter/material.dart';

class ProjectItem extends StatelessWidget {
  final String projectTitle;
  final String projectType;
  final String projectDescription;
  final String projectImageSource;
  const ProjectItem(this.projectTitle, this.projectType,
      this.projectDescription, this.projectImageSource);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: Image.asset(projectImageSource),
    );
  }
}
