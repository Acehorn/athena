import 'package:flutter/material.dart';

import 'BornForAdversity.dart';

class AlbumsGeneral extends StatefulWidget {
  AlbumsGeneral({Key key}) : super(key: key);

  @override
  _AlbumsGeneralState createState() => _AlbumsGeneralState();
}

class _AlbumsGeneralState extends State<AlbumsGeneral> {
var a2010 = ExactAssetImage('assets/albumes/2010.jpg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Row(
       
        children: <Widget>[

         first3(),
       
        ],
      ),
    );
  }


  Widget first3() {
    return SafeArea(
      child: Column(
       
        children: <Widget>[

        
           Container(height: 150, width: 150, child: GestureDetector(child: Image( fit: BoxFit.fill, image: a2010,), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },)),
        ],
      ),
    );
  }

  Widget first32() {
    return SafeArea(
      child: Column(
   
        children: <Widget>[
         Container(height: 150, width: 150, child: GestureDetector(child: Image( fit: BoxFit.fill, image: a2010,), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },)),
          Container(height: 150, width: 150, child: GestureDetector(child: Image( fit: BoxFit.fill, image: a2010,), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },)),
           Container(height: 150, width: 150, child: GestureDetector(child: Image( fit: BoxFit.fill, image: a2010,), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },)),
        ],
      ),
    );
  }
}