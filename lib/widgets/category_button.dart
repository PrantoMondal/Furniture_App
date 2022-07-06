import 'package:flutter/material.dart';

class categoryBtn extends StatefulWidget {
  @override
  _CategoryBtnState createState() => _CategoryBtnState();
}

class _CategoryBtnState extends State<categoryBtn> {
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) => Container(
    color: Colors.green.withOpacity(0.5),
    child: ToggleButtons(
      isSelected: isSelected,
      selectedColor: Colors.white,
      color: Colors.black,
      fillColor: Colors.lightBlue.shade900,
      renderBorder: false,
      //splashColor: Colors.red,
      highlightColor: Colors.orange,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text('For Rent', style: TextStyle(fontSize: 18)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text('For Sale', style: TextStyle(fontSize: 18)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text('Sold', style: TextStyle(fontSize: 18)),
        ),
      ],
      onPressed: (int newIndex) {
        setState(() {
          for (int index = 0; index < isSelected.length; index++) {
            if (index == newIndex) {
              isSelected[index] = true;
            } else {
              isSelected[index] = false;
            }
          }
        });
      },
    ),
  );
}