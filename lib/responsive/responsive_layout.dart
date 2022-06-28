import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabBody;
  final Widget webApp;


  ResponsiveLayout(this.mobileBody, this.tabBody, this.webApp);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        return Scaffold(

        );
      },
    );
  }
}
