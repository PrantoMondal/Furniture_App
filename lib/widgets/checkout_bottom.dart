import 'package:flutter/material.dart';
import 'package:furniture_app/pages/home_page.dart';

class CheckoutBottomWidget extends StatelessWidget {
  const CheckoutBottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22, top: 22),
          child: Text(
            'Selected Item',
            style: TextStyle(
                color: Color(0xFF4E4E4E),
                fontSize: 18,
                fontFamily: 'Poppins'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22, right: 22, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Black Chair',
                  style: TextStyle(
                    color: Color(0xFF4E4E4E),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  )
              ),
              Text('\$50.50',
                  style: TextStyle(
                    color: Color(0xFF4E4E4E),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  )
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22, right: 22, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Mona Chair',
                  style: TextStyle(
                    color: Color(0xFF4E4E4E),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  )
              ),
              Text('\$70.50',
                  style: TextStyle(
                    color: Color(0xFF4E4E4E),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  )
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22, right: 22, top: 8),
          child: Row(
            children: List.generate(150~/1, (index) => Expanded(
              child: Container(
                color: index%2==0?Colors.transparent
                    :Colors.black,
                height: 2,
              ),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22, right: 22, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total',
                  style: TextStyle(
                    color: Color(0xFF4E4E4E),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  )
              ),
              Text('\$121.00',
                  style: TextStyle(
                    color: Color(0xFF4E4E4E),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  )
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22, right: 22, top: 22),
          child: ButtonTheme(
            minWidth: MediaQuery.of(context).size.width,
            height: 50.0,
            child: RaisedButton(
              child: Text("Checkout",
                style: TextStyle(color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 20),
              ),
              elevation: 16,

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              color: Color(0xFF00B2FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }
}