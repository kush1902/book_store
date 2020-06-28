import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:book_store/components/horizontal_listview.dart';
import 'package:book_store/components/products.dart';
import 'package:book_store/pages/cart.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images\WhatsApp Image 2020-06-21 at 13.34.57.jpeg'),
          AssetImage('images\WhatsApp Image 2020-06-21 at 14.20.28.jpeg'),
          AssetImage('images\WhatsApp Image 2020-06-21 at 14.20.28 (1).jpeg'),
          AssetImage('images\WhatsApp Image 2020-06-21 at 14.20.29.jpeg'),
          AssetImage('images\WhatsApp Image 2020-06-21 at 14.20.29 (1).jpeg'),
          AssetImage('images\WhatsApp Image 2020-06-21 at 14.20.30.jpeg'),
          AssetImage('images\WhatsApp Image 2020-06-21 at 14.20.30 (1).jpeg'),
          AssetImage('images\WhatsApp Image 2020-06-21 at 14.20.31.jpeg'),
          AssetImage('images\WhatsApp Image 2020-06-21 at 14.20.31 (1).jpeg'),
          AssetImage('images\WhatsApp Image 2020-06-21 at 14.20.32.jpeg'),

        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.green,
        indicatorBgPadding: 2.0,

      ),

    );

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Singhal Book House",
        ),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            new UserAccountsDrawerHeader(
                accountName: Text('Kushagra'),
                accountEmail: Text('lakhmanikushagra@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white,),
              ),

            ),
            decoration: new BoxDecoration(
              color: Colors.green
            ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),

            Divider(color: Colors.black),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue,),
              ),
            ),

          ],
        ),
      ),

      body: ListView(
        children: [
          image_carousel,
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),

          ),
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(20.0),
          child: new Text('Recent Products'),
          ),
          Container(
            height: 400.0,
            child: Products(),
          )



        ],
      ),
    );
  }
}
