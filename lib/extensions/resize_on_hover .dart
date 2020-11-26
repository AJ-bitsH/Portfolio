// import 'package:flutter/material.dart';

// class ResizeOnHover extends StatefulWidget {
//   final Widget child;
//   final double width;
//   final double height;
//   ResizeOnHover({Key key, this.child, this.height, this.width})
//       : super(key: key);

//   @override
//   _ResizeOnHoverState createState() => _ResizeOnHoverState();
// }

// class _ResizeOnHoverState extends State<ResizeOnHover> {
//   double width;
//   double height;

//   bool _hovering = false;

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (e) => _mouseEnter(true),
//       onExit: (e) => _mouseEnter(false),
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 200),
//         child: widget.child,
//       ),
//     );
//   }

//   void _mouseEnter(bool hovering) {
//     setState(() {
//       _hovering = hovering;
//     });
//   }
// }
