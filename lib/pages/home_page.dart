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
          children: furnitureList
              .map((furniture) => FurnitureItem(furniture: furniture))
              .toList(),
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.blue.shade50,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      //margin: const EdgeInsets.only(left: 20.0,right: 20.0),
                      color: Colors.white,
                      child: Image.asset(
                        furniture.image!,
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          top: 30, left: 50.0, right: 20.0),
                      child: (Text(
                        furniture.name!,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 5, left: 50.0, right: 20.0),
                      child: (Text(
                        furniture.type!,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 5, left: 50.0, right: 20.0),
                      child: Row(
                        children: [
                          (Icon(
                            Icons.star,
                            color: Colors.yellow,size: 20,
                          )),
                          Text('${furniture.rating}',
                              style: TextStyle(
                                fontSize: 16,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 10, left: 50.0, right: 20.0),
                      child: (Text(
                        '\$' + '${furniture.price}',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: ElevatedButton(onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>FurnitureDetails(
                  furniture))), child: Text('Details')),
            )
          ],
        ));
  }
}
