import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/icon_back_btn.dart';
import 'package:furniture_app/widgets/checkout_bottom.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  List<String> productName = ['Mona Chair', 'Mona Chair', 'Camo Chair'];

  //List<bool> _selected = [true,true,false] ;
  List<double> productPrice = [50.50, 70.50, 90.50];

  List<String> productImage = [
    'assets/images/f1.png',
    'assets/images/f2.png',
    'assets/images/f7.png',
  ];

  @override
  Widget build(BuildContext context) {
    var _selected = 1;
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
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: productName.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Radio<int>(
                                value: 1,
                                groupValue: _selected,
                                onChanged: (value) {
                                  setState(() {});
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                color: Color(0xFFDEF5FF),
                                child: Image.asset(
                                  productImage[index].toString(),
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.height * 0.15,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productName[index].toString(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF787878)),
                                  ),
                                  Text(
                                    '\$' + productPrice[index].toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF1A1919)),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF220D0D),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Color(0xFF1A1919)),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF220D0D),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.40,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xFFDADADA).withOpacity(0.15),
              )
            ]),
        child: CheckoutBottomWidget(),
      ),
    );
  }
}


