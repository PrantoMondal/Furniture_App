import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/models/models.dart';
import 'package:furniture_app/pages/checkout_page.dart';
import 'package:furniture_app/widgets/details_page_app_bar.dart';


class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: DetailsPageAppBar(),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            // color: Colors.cyan.shade50,
            decoration: BoxDecoration(
                color: Colors.cyan.shade50,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(31),
                    bottomRight: Radius.circular(31))),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.4,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset('assets/images/f1.png'),
              ),
            ),
          ),
          // TODO:dot Widget
          Container(
            width: double.infinity,
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.only(top: 12, left: 25),
              child: Text(
                'Mona Chair',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: MediaQuery.of(context).size.height * 0.04,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: 20.0, right: 10.0),
            //*****************************************************************        rating
            child: Row(
              children: [
                buildIcon(),
                buildIcon(),
                buildIcon(),
                buildIcon(),
                buildIcon(),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 25, top: 16),
            child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting. Lorem Ipsum has been standard dummy text.',
                maxLines: 3,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black26,
                  fontSize: MediaQuery.of(context).size.height * 0.020,
                )),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25, top: 16),
                child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // border: Border.all(color: Colors.redAccent)
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 16),
                child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        shape: BoxShape.circle,
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 16),
                child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        shape: BoxShape.circle,
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 16),
                child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        shape: BoxShape.circle,
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 16),
                child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    )),
              ),
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 25),
                  child: Row(
                    children: [
                      (Text(
                        '\$' + '100',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Text(
                        '     \$' + '50',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width*0.22,
                    child: RaisedButton(
                      child: Text("Add to cart",
                        style: TextStyle(color: Colors.white),

                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const CheckoutPage()),
                        );
                      },
                      color: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }

  Icon buildIcon() {
    return Icon(
      Icons.star,
      color: Colors.amber,
      size: 20,
    );
  }
}

class ProductDetailsArguments {
  final Furniture furniture;

  ProductDetailsArguments({required this.furniture});
}
