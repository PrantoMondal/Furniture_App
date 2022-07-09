import 'package:flutter/material.dart';
import 'package:furniture_app/db/temp_db.dart';
import 'package:furniture_app/details_page.dart';
import '../models/models.dart';
import '../widgets/category_button.dart';


class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 2;

  @override
  Widget build(BuildContext context) {
    Color color1 = _colorFromHex("#4F4F4F");
    Color color2 = _colorFromHex("#9C9C9C");
    Color color3 = _colorFromHex("#00B2FF");
    return Scaffold(
        appBar: AppBar(
          toolbarHeight:  MediaQuery.of(context).size.height*.39, // Set this height
          flexibleSpace: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 0,top: 12,left: 16,right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                          'assets/icons/menu.png',
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * .06,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * .06
                      ),
                      Image.asset(
                        'assets/icons/em.png',
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * .11,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * .11,
                      ),
                    ],
                  ),
                ),
                Text('Choose your Best Furniture', style: TextStyle(fontSize:  MediaQuery
                    .of(context)
                    .size
                    .height*.0369,
                  fontWeight: FontWeight.bold,
                  color: color1,
                  fontFamily: 'Roboto',),),
                Text('best and high quality furniture', style: TextStyle(
                  height: MediaQuery.of(context).size.height*0.0020,
                  fontSize: MediaQuery
                      .of(context)
                      .size
                      .height*.02,
                  color: color2,
                  fontFamily: 'Poppins',),),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      suffixIcon: Icon(Icons.keyboard_voice),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical:  MediaQuery
                          .of(context)
                          .size
                          .height*0.02,),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: categoryBtn(),
                )
              ],
            ),

          ),
          elevation: 0,


        ),
        body: GridView.count(
          crossAxisCount: 1,
          childAspectRatio: 2.416,
          padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 8),
          children: furnitureList
              .map((furniture) => FurnitureItem(furniture: furniture))
              .toList(),
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
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
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
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * .35,
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
                                color: Colors.amber,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ), Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ), Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ), Icon(
                                Icons.star,
                                color: Colors.amber,
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

