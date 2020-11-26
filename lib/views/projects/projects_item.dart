import 'package:flutter/material.dart';

class ProjectItem extends StatefulWidget {
  final String projectTitle;
  final String projectType;
  final String projectDescription;
  final String projectImageSource;
  const ProjectItem(this.projectTitle, this.projectType,
      this.projectDescription, this.projectImageSource);

  @override
  _ProjectItemState createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  final String changed = "../../assets/bphc.png";

  bool _hovering = true;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(false),
      onExit: (e) => _mouseEnter(true),
      child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          width: 500,
          height: 500,
          child: _hovering
              ? Image.asset(widget.projectImageSource)
              : Container(
                  width: 500,
                  height: 500,
                  child: Column(children: [
                    Text(widget.projectTitle),
                    Text(widget.projectType),
                    Text(widget.projectDescription),
                  ]),
                )),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}
