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
    String _selectedGender = 'male';
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart', style: TextStyle(color: Colors.black,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
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
              child: Icon(Icons.delete_outline, color: Colors.blue,),
            ),
          )
        ],
      ),

      body: ListTile(

        leading: Radio<String>(
          value: 'male',
          groupValue: _selectedGender,
          onChanged: (value) {
            setState(() {

            });
          },
        ),
        title:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/f1.png'),
        ),

      ),
    );
    
  }
}

