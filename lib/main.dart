import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:projeto_final_test1/login.dart';
import 'package:projeto_final_test1/options.dart';
import 'chatlog.dart';
import 'meusdados.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guardian',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.deepOrange,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //Google Map
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          
          Container(
            
            height: MediaQuery.of(context).size.height ,
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
              
               mapType: MapType.normal,
               minMaxZoomPreference: MinMaxZoomPreference(13,17),
               initialCameraPosition: CameraPosition(target: LatLng(-21.14363264,-47.84312654), zoom: 15.75), //Localização
              )
              ),
              //Gradiente Branco
              Positioned(
                child: IgnorePointer(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.2,0.4],
                      colors: [Colors.white, Color.fromRGBO(255, 255, 255, 0)]
                    )
                  ),
                ),
              ),  
                top: 0,
                left: 0,    
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),

               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                            alignment: Alignment.topLeft,   
                            padding: EdgeInsets.all(42),
                              color: Colors.deepOrangeAccent[400],
                              
                          ),
                 ],
               ),
               
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [

                 
                  
                  Container(
                    alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(1,40,1,1),
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => Options(),
                           ),
                          );
                        },
                        child: Text("Necessidade"),
                        textColor: Colors.white,
                        color: Colors.orangeAccent[400],
                        ), 
                    ),
              
                  

                  Container(
                    alignment: Alignment.topCenter,
                      padding: EdgeInsets.fromLTRB(1,40,1,1),
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => Chatlog(),
                           ),
                          );
                          
                        },
                        child: Text("Chat"),
                        textColor: Colors.white,
                        color: Colors.orangeAccent[400],
                        ), 
                    ),

                  Container(
                    alignment: Alignment.topRight,
                      padding: EdgeInsets.fromLTRB(1,40,1,1),
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => Dados(),
                           ),
                          );
                        },
                        child: Text("Meus Dados"),
                        textColor: Colors.white,
                        color: Colors.orangeAccent[400],
                        ), 
                    ),
                  
                ],
              ),
        ],
      ),
       
    );
  }
}

class Escolha {
    final String title;
    final IconData icon;
    const Escolha({this.title,this.icon});
}

const List<Escolha> escolhas = <Escolha>[
  Escolha(title: 'Ajuda', icon: Icons.help),
  Escolha(title: 'Chat', icon: Icons.chat),
  Escolha(title: 'Meus Dados', icon: Icons.info),
];

class MenuEscolha extends StatelessWidget {
  const MenuEscolha({Key key,this.escolha}) : super(key: key);
  final Escolha escolha;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      color: Colors.white,
      child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(escolha.icon, size:150.0, color: textStyle.color),
          Text(escolha.title, style: textStyle),
        ]
      ),
      ),
    );
    
  }
}