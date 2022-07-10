import 'package:flutter/material.dart';
import 'package:furniture_app/db/temp_db.dart';
import 'package:furniture_app/details_page.dart';
import '../widgets/app_bar.dart';
import '../widgets/furniture_item.dart';


class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Color color1 = _colorFromHex("#4F4F4F");
    Color color2 = _colorFromHex("#9C9C9C");
    Color color3 = _colorFromHex("#00B2FF");
    return Scaffold(
        appBar: AppBar(
          toolbarHeight:  MediaQuery.of(context).size.height*.37, // Set this height
          flexibleSpace: Container(
            color: Colors.white,
            child: app_bar(color1: color1, color2: color2),

          ),
          elevation: 0,


        ),
        body: GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  FurnitureDetails(furniture)));
          },
          child: GridView.count(
            crossAxisCount: 1,
            childAspectRatio: 2.416,
            padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 8),
            children: furnitureList
                .map((furniture) => FurnitureItem(furniture: furniture))
                .toList(),
          ),
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        //tooltip: 'Increment',
        child: Icon(Icons.add,),
        elevation: 5.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width*.20,
                      onPressed: (){
                      setState((){

                      });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          //color: isActive?Colors.blue:Colors.black,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width*.20,
                      onPressed: (){
                      setState((){

                      });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_outlined,
                          //color: isActive?Colors.blue:Colors.black,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width*.20,
                      onPressed: (){
                      setState((){

                      });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_bubble_outline_rounded,
                          //color: isActive?Colors.blue:Colors.black,
                        )
                      ],
                    ),
                  ),MaterialButton(
                    minWidth: MediaQuery.of(context).size.width*.20,
                      onPressed: (){
                      setState((){

                      });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outline_outlined,
                          //color: isActive?Colors.blue:Colors.black,
                        )
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),

    );

  }



}



Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}



