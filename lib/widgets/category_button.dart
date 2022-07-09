import 'package:flutter/material.dart';

class categoryBtn extends StatefulWidget {
  @override
  _CategoryBtnState createState() => _CategoryBtnState();
}

class _CategoryBtnState extends State<categoryBtn> {
  List<bool> isSelected = [true, false, false];


  @override
  Widget build(BuildContext context) {
    Color buttonSelectedColor = _colorFromHex("#00B2FF");
    Color buttonUnselectedColor = _colorFromHex("#EFFAFF");
    return Container(

      decoration: BoxDecoration(
        color: buttonUnselectedColor,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    //color: buttonUnselectedColor,

    child: ToggleButtons(

      borderRadius: BorderRadius.all(Radius.circular(16)),
      isSelected: isSelected,
      selectedColor: Colors.white,
      color: Colors.black,
      fillColor: buttonSelectedColor,
      renderBorder: false,
      //splashColor: Colors.red,
      highlightColor: Colors.orange,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Chair', style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.025)),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Table', style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.025)),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Bed', style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.025)),
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
}

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}