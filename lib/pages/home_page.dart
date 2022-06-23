import 'package:flutter/material.dart';
import 'package:furniture_app/db/temp_db.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Furniture Dev'),),
      body: ListView(

        children: furnitureList.map((furniture) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            tileColor: Colors.blue.shade100,
            onTap: (){

            },
            title: Text(furniture.name!),
            subtitle: Text(furniture.details!),
            leading: Image.asset(furniture.image!,fit: BoxFit.fill),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Text(furniture.rating!.toString()),
                    Row(
                      children: [
                        Text('\$',style: TextStyle(height: 1.5, fontSize: 20)),
                        Text(furniture.price!.toString(),style: TextStyle(height: 1.5, fontSize: 20)),
                      ],
                    ),
                  ],
                ),


                //Icon(Icons.star,color: index.isEven?Colors.green:Colors.red,)
              ],
            ),

          ),

        )).toList(),
      ),

    );
  }
}
