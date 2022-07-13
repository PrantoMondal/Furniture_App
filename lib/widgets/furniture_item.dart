import 'package:flutter/material.dart';
import '../models/models.dart';

class FurnitureItem extends StatelessWidget {
  final Furniture furniture;

  const FurnitureItem({
    Key? key,
    required this.furniture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
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
                              width: MediaQuery.of(context).size.width * .35,
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
                              top: 20, left: 20.0, right: 10.0),
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
                              top: 5, left: 20.0, right: 10.0),
                          child: (Text(
                            furniture.type!,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 5, left: 20.0, right: 10.0),
                          //*****************************************************************        rating
                          child: Row(
                            children: [
                              starBuild(),
                              starBuild(),
                              starBuild(),
                              starBuild(),
                              starBuild(),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, left: 20.0, right: 10.0),
                          child: Row(
                            children: [
                              (Text(
                                '\$' + '${furniture.price}',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.lineThrough),
                              )),
                              Text(
                                '     \$' + '${furniture.newPrice}',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
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
        ));
  }

  Icon starBuild() {
    return Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            );
  }
}
