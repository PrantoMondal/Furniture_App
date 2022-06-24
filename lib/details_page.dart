import 'package:flutter/material.dart';

import 'models/models.dart';


class FurnitureDetails extends StatefulWidget {
  // const FurnitureDetails({Key? key}) : super(key: key);
  final Furniture furniture;


  FurnitureDetails(this.furniture);

  @override
  State<FurnitureDetails> createState() => _FurnitureDetailsState();
}

class _FurnitureDetailsState extends State<FurnitureDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.furniture.name!),),
      body: Container(
        child: Image.asset(widget.furniture.image!),


      ),
    );
  }
}
