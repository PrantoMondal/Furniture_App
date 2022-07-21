import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/icon_back_btn.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    final int _selected = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 22.0),
          child: IconBackBtn(
              iconData: Icons.arrow_back_ios_outlined,
              press: () => Navigator.pop(context)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0, right: 12.0),
            child: FlatButton(
              onPressed: () {},
              child: Icon(
                Icons.delete_outline,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: SizedBox(
              child: Radio<int>(
                value: 1,
                groupValue: _selected,
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            title: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: Color(0xFFDEF5FF),
                child: Image.asset('assets/images/f1.png'),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 0, left: 20, right: 50),
              child: Column(
                children: [
                  Text(
                    'Mona Chair',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        color: Color(0xFF787878)),
                  ),
                  Text(
                    '\$ 50.50',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Color(0xFF1A1919)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
