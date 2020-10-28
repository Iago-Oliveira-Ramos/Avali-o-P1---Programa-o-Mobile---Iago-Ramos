import 'package:flutter/material.dart';

class Dados extends StatelessWidget {
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
      body: Container(
        padding: EdgeInsets.only(top: 5, left: 40, right: 40 ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              alignment: Alignment(0.0,1.15),
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                image:  DecorationImage(
                  image: AssetImage("assets/perfil1.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Container(
                height: 56,
                width: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3,1.0],
                    colors: [
                      Color(0xFFF58524),
                      Color(0xFFF92B7F),
                    ]
                  ),
                  border: Border.all(
                    width: 4.0,
                    color: const Color(0xFFFFFFFF),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(56),
                  ),
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
               ),
             SizedBox(
               height: 20,
             ),
             Text('Nome: Jessica Pereira',style: TextStyle(fontSize: 18,fontStyle: FontStyle.italic)),
             SizedBox(
               height: 10,
             ),
             Text('Email: JessicaP@gmail.com',style: TextStyle(fontSize: 18,fontStyle: FontStyle.italic)),

             SizedBox(
               height: 10,
             ),

             Text('Idade: 23',style: TextStyle(fontSize: 18,fontStyle: FontStyle.italic)),
             SizedBox(
               height: 10,
             ),

             Text('Sexo: Feminino',style: TextStyle(fontSize: 18,fontStyle: FontStyle.italic)),
             SizedBox(
               height: 20,
             ),
          ],
        ),
      ),
    );
  }
}