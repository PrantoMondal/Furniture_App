import 'package:flutter/material.dart';
import 'package:furniture_app/db/temp_db.dart';
import 'package:furniture_app/details_page.dart';

import '../models/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Furniture Dev'),

        ),
        body: GridView.count(
          crossAxisCount: 1,
          childAspectRatio: 3,
          children: furnitureList.map((furniture) => FurnitureItem(furniture: furniture)).toList(),
    ));
  }
}

class FurnitureItem extends StatelessWidget {
  final Furniture furniture;
  const FurnitureItem({
    Key? key,
    required this.furniture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      color: Colors.blue.shade50,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),

                  child: Container(

                      //margin: const EdgeInsets.only(left: 20.0,right: 20.0),
                      color: Colors.white,
                      child: Image.asset(furniture.image!,width:120,fit: BoxFit.cover,)
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(furniture.name!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text(furniture.type!),
                    Text('\$'+furniture.price!.toString()),
                  ],
                ),
              ],

            ),
            Positioned(
              right: 10,bottom: 10,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Details')),
            )
          ],
        )

    );
  }
}


