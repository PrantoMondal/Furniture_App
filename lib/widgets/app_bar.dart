import 'package:flutter/material.dart';

import 'category_button.dart';


class app_bar extends StatelessWidget {
  const app_bar({
    Key? key,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 0,top: 12,left: 16,right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                  'assets/icons/menu.png',
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * .06,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * .06
              ),
              Image.asset(
                'assets/icons/em.png',
                height: MediaQuery
                    .of(context)
                    .size
                    .height * .11,
                width: MediaQuery
                    .of(context)
                    .size
                    .width * .11,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0,right: 12.0),
          child: Text('Choose your Best Furniture', style: TextStyle(fontSize:  MediaQuery
              .of(context)
              .size
              .height*.035,
            fontWeight: FontWeight.bold,
            color: color1,
            fontFamily: 'Roboto',),),
        ),
        Text('best and high quality furniture', style: TextStyle(
          height: MediaQuery.of(context).size.height*0.0020,
          fontSize: MediaQuery
              .of(context)
              .size
              .height*.02,
          color: color2,
          fontFamily: 'Poppins',),),
        Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search",
              suffixIcon: Icon(Icons.keyboard_voice),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.blue),
              ),
              contentPadding: EdgeInsets.symmetric(vertical:  MediaQuery
                  .of(context)
                  .size
                  .height*0.02,),
            ),
          ),

        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: categoryBtn(),
        )
      ],
    );
  }
}