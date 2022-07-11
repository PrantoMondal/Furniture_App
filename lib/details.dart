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
            child: SizedBox(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.4,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset('assets/images/f1.png'),
              ),
            ),
          ),Row(
            children: [
              ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Radio(
                    value: 1,
                    groupValue: AspectRatio,
                    activeColor: Colors.red,
                    onChanged: (val) {

                    },
                  ),
                  Radio(
                    value: 2,
                    groupValue: AspectRatio,
                    activeColor: Colors.blue,
                    onChanged: (val) {

                    },
                  ),
                  Radio(
                    value: 3,
                    groupValue: AspectRatio,
                    activeColor: Colors.blue,
                    onChanged: (val) {

                    },
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class ProductDetailsArguments {
  final Furniture furniture;

  ProductDetailsArguments({required this.furniture});
}
