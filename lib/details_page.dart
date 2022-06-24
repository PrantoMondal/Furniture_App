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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Details',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.blue.shade50,
            floating: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                widget.furniture.image!,
                width: 200,
                height: 200,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                ListTile(
                  title: Text(widget.furniture.name!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  subtitle: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star),
                      Text('${widget.furniture.rating}')
                    ],
                  ),
                  trailing:Text(widget.furniture.type!,style: TextStyle(height: 2),),
                  tileColor: Colors.lightBlue.shade100,

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                  child: Text(widget.furniture.details!),
                ),
              ]),
          ),

        ],
      ),
    );
  }
}
