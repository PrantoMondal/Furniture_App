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
        toolbarHeight: 200, // Set this height
        flexibleSpace: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/icons/a.png',
                      height: 20,
                      width: 20,
                    ),
                    Image.asset(
                      'assets/icons/em.png',
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
              ),
              Text('Chose your Best Furniture',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
              Text('best and high quality furniture',style: TextStyle(height:2,fontSize: 10,color: Colors.black54),),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 8.0),
                child: TextField(
                  decoration: InputDecoration(

                    border: OutlineInputBorder(),
                    hintText: 'Search',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 4,
        padding: const EdgeInsets.all(8.0),
        children: furnitureList
            .map((furniture) => FurnitureItem(furniture: furniture))
            .toList(),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
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
        child: InkWell(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            color: Colors.white,
                            child: Image.asset(
                              furniture.image!,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width*.25,
                              fit: BoxFit.contain,
                            )),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 50.0, right: 20.0),
                          child: (Text(
                            furniture.name!,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                                fontFamily: 'Poppins',
                            ),
                          )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 5, left: 50.0, right: 20.0),
                          child: (Text(
                            furniture.type!,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 5, left: 50.0, right: 20.0),
                          //*****************************************************************        rating
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, left: 50.0, right: 20.0),
                          child: (Text(
                            '\$' + '${furniture.price}',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
          // onTap: () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) =>  FurnitureDetails(furniture))
          // },
        )
    );
  }
}
