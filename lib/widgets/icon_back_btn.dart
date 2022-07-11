import 'package:flutter/material.dart';


class IconBackBtn extends StatelessWidget {
  const IconBackBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);
  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,

        child: FlatButton(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),

    );
  }
}