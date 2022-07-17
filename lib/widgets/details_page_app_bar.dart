import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/icon_back_btn.dart';

class DetailsPageAppBar extends StatelessWidget {
  const DetailsPageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Details',style: TextStyle(color: Colors.black,fontFamily: 'Roboto',fontWeight: FontWeight.bold),),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Color.fromRGBO(222, 245, 255, 1),
      leading: Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 22.0),
        child: IconBackBtn(
            iconData: Icons.arrow_back_ios_outlined,
            press: () => Navigator.pop(context)
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 18.0, right: 12.0),

          child: FlatButton(
            onPressed: () {

            },
            child: Icon(Icons.favorite,color: Colors.red,),
          ),
        )
      ],
    );
  }
}