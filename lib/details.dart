import 'package:flutter/material.dart';
import 'package:furniture_app/models/models.dart';
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
          Container(
            width: double.infinity,
            decoration: BoxDecoration(

            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 16,left: 25),
              child: Text(
                'Mona Chair',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
      Container(
        margin: const EdgeInsets.only(
            top: 5, left: 20.0, right: 10.0),
        //*****************************************************************        rating
        child: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            ),
          ],
        ),
      ),
        ],
      ),
    );
  }
}

class ProductDetailsArguments {
  final Furniture furniture;

  ProductDetailsArguments({required this.furniture});
}
