import 'package:flutter/material.dart';

class Chatlog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context,false),
        ),
         ),
        body: ListView(
            children: <Widget> [
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.blueGrey[50],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.person,size: 50),
                    SizedBox(width: 30),
                    Text('Ricardo Salas', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                  ],
                )
                ),
                SizedBox(height: 5),
                Container(
                padding: EdgeInsets.all(20),
                color: Colors.blueGrey[50],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.person,size: 50),
                    SizedBox(width: 30),
                    Text('Sandra Barbosa', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                  ],
                )
                ),
                 SizedBox(height: 5),
                Container(
                padding: EdgeInsets.all(20),
                color: Colors.blueGrey[50],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.person,size: 50),
                    SizedBox(width: 30),
                    Text('Cameron Dias', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                  ],
                )
                ),
            ],
        ),
    );
  }
}