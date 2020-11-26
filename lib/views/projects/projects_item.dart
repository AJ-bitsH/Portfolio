import 'package:flutter/material.dart';
import "dart:ui";

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
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: ExactAssetImage(widget.projectImageSource),
                    ),
                  ),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        color: Colors.grey.withOpacity(0.1),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                widget.projectTitle,
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                widget.projectType,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                widget.projectDescription,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                              ),
                            ]),
                      ),
                    ),
                  ),
                )),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}
