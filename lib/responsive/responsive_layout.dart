import 'package:flutter/material.dart';
import '../widgets/mobile_body.dart';
import '../widgets/desktop_body.dart';
import '../helper/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  ResponsiveLayout({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return MyMobileBody();
        } else {
          return MyDesktopBody();
        }
      },
    );
  }
}
