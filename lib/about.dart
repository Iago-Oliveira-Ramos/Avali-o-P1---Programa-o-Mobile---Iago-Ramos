import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre o Projeto"),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context,false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 5, left: 15, right: 15),
        child: ListView(
         children: <Widget>[
           SizedBox(
                 height: 20,
               ),
               Text(
                 "APLICATIVO: Guardian",
                 style: TextStyle(
                   fontSize: 32,
                   fontWeight: FontWeight.bold,
                 ),
                 textAlign: TextAlign.center,
               ),
            SizedBox(
                 height: 20,
               ),
               Text(
                 "Tema Escolhido",
                 style: TextStyle(
                   fontSize: 32,
                   fontStyle: FontStyle.italic,
                   fontWeight: FontWeight.w500,
                 ),
                 textAlign: TextAlign.center,
               ),
                SizedBox(
                 height: 20,
               ),
               Text(
                 "Aplicativo para auxiliar homens e mulheres a encontrarem pessoas para os ajudarem quando estiverem com medo ou se sentindo ameaçados em algum local público ou privado, utilizando uma API de mapa. ",
                 style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.w500,
                 ),
                 textAlign: TextAlign.justify,
               ),
               SizedBox(
                 height: 20,
               ),
               Text(
                 "Objetivo do Aplicativo",
                 style: TextStyle(
                   fontSize: 32,
                   fontStyle: FontStyle.italic,
                   fontWeight: FontWeight.w500,
                 ),
                 textAlign: TextAlign.center,
               ),
                SizedBox(
                 height: 20,
               ),
               Text(
                 "O objetivo do APP Guardian é conectar por um curto período de tempo e de uma forma rápida uma pessoa que precisa de ajuda por se encontrar em uma situação que a causa medo ou desconforto com outra pessoa disposta a ajudar (que pode também estar na mesma situação), trazendo essa ideia de um “Anjo da Guarda” vindo para te socorrer, por isso o nome do aplicativo. ",
                 style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.w500,
                 ),
                 textAlign: TextAlign.justify,
               ),
               SizedBox(
                 height: 20,
               ),
               Text(
                 "Desenvolvedor",
                 style: TextStyle(
                   fontSize: 32,
                   fontStyle: FontStyle.italic,
                   fontWeight: FontWeight.w500,
                 ),
                 textAlign: TextAlign.center,
               ),
                SizedBox(
                 height: 30,
               ),
               Text(
                 " Iago Oliveira Ramos",
                 style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.w500,
                 ),
                 textAlign: TextAlign.center,
               ),
            SizedBox(width: 70,
                 height: 50,),
             ClipRRect(
              borderRadius: BorderRadius.circular(8),
                child: Image.asset("assets/Foto Iago.png", scale: 2)
              
            ),
             SizedBox(
                 height: 20,
               ),
          ]
        ),
      ),
         
        
    
      
    );
  }
}