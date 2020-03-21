import 'package:cookiestore/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class CookieDetails extends StatelessWidget {

  final assetPath, cookieprice, cookiename;

  CookieDetails({this.assetPath, this.cookieprice, this.cookiename});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Pickup',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 20,
            color: Color(0xFF545D68),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
        children: <Widget>[
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Cookie',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: Color(0xFF17532),
              ),
            ),
          ),
          SizedBox(height: 15),
          Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
            height: 150,
            width: 100,
            fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(cookieprice,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF17532)
                ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text('Cold, creamy ice sandwiched between delicious deluxe cokies. Pick you favorite deluxe cookies and ice cream flavor.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 16,
                  color: Color(0xFFB4B8B9),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(

            ),
          ),
        ],
      ),
      ///A much better approach would be to keep the
      ///base design in main.dart and load eachpage in


      floatingActionButton: FloatingActionButton(onPressed:(){},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
