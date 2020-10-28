import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:projeto_final_test1/options.dart';
import 'chatlog.dart';
import 'meusdados.dart';



class MyHomePage4 extends StatefulWidget {
  

  @override
  _MyHomePage4State createState() => _MyHomePage4State();
}

class _MyHomePage4State extends State<MyHomePage4> {

  List<Marker> allMarkers = [];
  
  @override
  void initState() {
    
    super.initState();
    allMarkers.add(Marker(

      markerId: MarkerId('myMarker7'),
      draggable: false,
      onTap: (){
          showDialog(
      context: context,
      builder: (BuildContext context){
        
          return Container(
            padding: EdgeInsets.only(top:  50.0, bottom: 50.0),
            child: AlertDialog(
               shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10.0))
                 ),
                
              title: Text(
                "Nome: Raquel Azevedo",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent, fontSize: 15),
              ),
              content: Column(
                children: <Widget>[      
                  Text("Idade: 36 anos",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text("Sexo: Feminino",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text("Status: Disponível",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  MaterialButton(
                    color: Colors.blueGrey,
                    onPressed: (){
                    Navigator.of(context).pop();
                  },
                 child:Text("OK",style: TextStyle(fontWeight: FontWeight.bold)),
                 
                 ),
                  MaterialButton(
                    color: Colors.deepOrange,
                    onPressed: (){
                  },
                 child:Text("Chat",style: TextStyle(fontWeight: FontWeight.bold)),
                 
                 ),
                ],
              ),
            ),
          );
      }
    );
      },
      position: LatLng(-21.143501,-47.844080),
      
    ));

     allMarkers.add(Marker(

      markerId: MarkerId('myMarker8'),
      draggable: false,
      onTap: (){
          showDialog(
      context: context,
      builder: (BuildContext context){
        
          return Container(
            padding: EdgeInsets.only(top:  50.0, bottom: 50.0),
            child: AlertDialog(
               shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10.0))
                 ),
                
              title: Text(
                "Nome: Felicia Bolton",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent, fontSize: 15),
              ),
              content: Column(
                children: <Widget>[      
                  Text("Idade: 45 anos",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text("Sexo: Feminino",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text("Status: Indisponível",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  MaterialButton(
                    color: Colors.blueGrey,
                    onPressed: (){
                    Navigator.of(context).pop();
                  },
                 child:Text("OK",style: TextStyle(fontWeight: FontWeight.bold)),
                 
                 ),
                  MaterialButton(
                    color: Colors.deepOrange,
                    onPressed: (){
                  },
                 child:Text("Chat",style: TextStyle(fontWeight: FontWeight.bold)),
                 
                 ),
                ],
              ),
            ),
          );
      }
    );
      },
      position: LatLng(-21.142039,-47.843780),
      
    ));

    allMarkers.add(Marker(

      markerId: MarkerId('myMarker9'),
      draggable: false,
      onTap: (){
          showDialog(
      context: context,
      builder: (BuildContext context){
        
          return Container(
            padding: EdgeInsets.only(top:  50.0, bottom: 50.0),
            child: AlertDialog(
               shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10.0))
                 ),
                
              title: Text(
                "Nome: Viviane Juarez",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent, fontSize: 15),
              ),
              content: Column(
                children: <Widget>[      
                  Text("Idade: 19 anos",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text("Sexo: Feminino",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text("Status: Indisponível",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  MaterialButton(
                    color: Colors.blueGrey,
                    onPressed: (){
                    Navigator.of(context).pop();
                  },
                 child:Text("OK",style: TextStyle(fontWeight: FontWeight.bold)),
                 
                 ),
                  MaterialButton(
                    color: Colors.deepOrange,
                    onPressed: (){
                  },
                 child:Text("Chat",style: TextStyle(fontWeight: FontWeight.bold)),
                 
                 ),
                ],
              ),
            ),
          );
      }
    );
      },
      position: LatLng(-21.141227,-47.846441),
      
    ));
    
  }

  
  

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
               markers: Set.from(allMarkers),
               
               
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