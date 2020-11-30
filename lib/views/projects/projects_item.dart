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
          margin: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[600], width: 0.5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          width: 500,
          height: 500,
          child: _hovering
              ? Image.asset(widget.projectImageSource)
              : Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.80),
                    image: DecorationImage(
                      image: ExactAssetImage(widget.projectImageSource),
                    ),
                  ),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Container(
                        margin: const EdgeInsets.all(30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                widget.projectTitle,
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
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
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87),
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
