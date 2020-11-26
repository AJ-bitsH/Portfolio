import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/extensions/translate_on_hover.dart';

extension HoverExtensions on Widget {
  Widget get showCursorOnHover {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: this,
    );
  }

  Widget get translateOnHover {
    return TranslateOnHover(
      child: this,
    );
  }
}
