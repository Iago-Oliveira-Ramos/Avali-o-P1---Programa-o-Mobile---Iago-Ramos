
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final_test1/about.dart';
import 'package:projeto_final_test1/main.dart';
import 'package:projeto_final_test1/reset-password.dart';
import 'package:projeto_final_test1/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var nome;
  var senha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        padding: EdgeInsets.only(
          top: 20, 
          left: 40, 
          right: 40,    
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/ic_launcher-web (Grande).png"),
            ),
            SizedBox(
              height: 20,
            ),

            //Barra Nome

            TextFormField(
              // autofocus: true,
              onChanged: (value){
                  nome = value;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20
                ),
            ),

            //Barra Senha

            SizedBox(
              height: 10,
            ),
          
            TextFormField(
              // autofocus: true,
              onChanged: (value){
                  senha = value;
              },
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Recuperar Senha",
                  textAlign: TextAlign.right,
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    )
                  );
                },
                ),
              ),

              //Botão laranja

              SizedBox( 
                height: 40,
              ),
              Container( 
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration( 
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color(0xFFF58524),
                      Color(0xFFF92B7F),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          
                          child: SizedBox(
                            child: Image.asset("assets/prsdr-icons-white-angel.png"),
                            height: 45,
                            width: 45,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () => {
                      if(nome == 'Usuario' && senha == 'flutter123'){
                           Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                         )
                      )
                      }
                      else if(nome == null){
                          nomeVazio(context)
                      }
                      else if(senha == null){
                          senhaVazia(context)
                      }
                      else if(nome != 'Usuario'){
                          
                          nomeErrado(context)
                          
                      }
                      else if(senha != 'flutter123'){
                        
                        senhaErrada(context)
                       
                      }
                      
                    },
                  ),
                ),
              ),
              SizedBox(
                height:10,
              ),
             Container( 
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration( 
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color(0xFFF58524),
                      Color(0xFFe65100),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Sobre o Projeto",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          child: SizedBox(
                            child: Image.asset("assets/round_description_black_18dp.png"),
                            height: 28,
                            width: 28,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () => {
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => About(),
                    ),
                    ),
                    },
                  ),
                ),
              ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  child: FlatButton(
                    child: Text(
                      "Cadastre-se",
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => SignupPage(),
                         )
                      )
                    } ,
                  ),
                ),
          ]
          ),
      ),
    );
  }

  Widget nomeVazio(BuildContext context){

    showDialog(
      context: context,
      builder: (BuildContext context){
        
          return Container(
            padding: EdgeInsets.only(top:  160.0, bottom: 170.0),
            child: AlertDialog(
               shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10.0))
                 ),
              title: Text(
                "Atenção",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),
              ),
              content: Column(
                children: <Widget>[
                  Text("Seu nome está vazio!",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Insira um nome para fazer login.",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  MaterialButton(
                    color: Colors.blueGrey,
                    onPressed: (){
                    Navigator.of(context).pop();
                  },
                 child:Text("OK",style: TextStyle(fontWeight: FontWeight.bold))
                 ),
                ],
              ),
            ),
          );
      }
    );
  }


  Widget senhaVazia(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context){
        
          return Container(
            padding: EdgeInsets.only(top:  160.0, bottom: 170.0),
            child: AlertDialog(
               shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10.0))
                 ),
              title: Text(
                "Atenção",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),
              ),
              content: Column(
                children: <Widget>[
                  Text("Sua senha está vazia!",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Insira uma senha para fazer login.",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  MaterialButton(
                    color: Colors.blueGrey,
                    onPressed: (){
                    Navigator.of(context).pop();
                  },
                 child:Text("OK",style: TextStyle(fontWeight: FontWeight.bold))
                 ),
                ],
              ),
            ),
          );
      }
    );
  }

 
  Widget nomeErrado(BuildContext context){

    showDialog(
      context: context,
      builder: (BuildContext context){
        
          return Container(
            padding: EdgeInsets.only(top:  160.0, bottom: 150.0),
            child: AlertDialog(
               shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10.0))
                 ),
              title: Text(
                "Atenção",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),
              ),
              content: Column(
                children: <Widget>[
                  Text("Nome de usuário inválido!",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Insira um nome cadastrado para fazer login.",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  MaterialButton(
                    color: Colors.blueGrey,
                    onPressed: (){
                    Navigator.of(context).pop();
                  },
                 child:Text("OK",style: TextStyle(fontWeight: FontWeight.bold))
                 ),
                ],
              ),
            ),
          );
      }
    );
  }

  Widget senhaErrada(BuildContext context){

    showDialog(
      context: context,
      builder: (BuildContext context){
        
          return Container(
            padding: EdgeInsets.only(top:  160.0, bottom: 150.0),
            child: AlertDialog(
               shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10.0))
                 ),
              title: Text(
                "Atenção",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),
              ),
              content: Column(
                children: <Widget>[
                  Text("Senha inválida!",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Insira uma senha cadastrada para fazer login.",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  MaterialButton(
                    color: Colors.blueGrey,
                    onPressed: (){
                    Navigator.of(context).pop();
                  },
                 child:Text("OK",style: TextStyle(fontWeight: FontWeight.bold))
                 ),
                ],
              ),
            ),
          );
      }
    );
  } 
}
