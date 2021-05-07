import 'package:flutter/material.dart';


class ArtSharingSoulmates extends StatefulWidget {
  @override
  _ArtSharingSoulmatesState createState() => _ArtSharingSoulmatesState(
    
  );

}
class _ArtSharingSoulmatesState extends State<ArtSharingSoulmates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     bottom: PreferredSize(child: Container(color: Colors.redAccent, height: 4.0, ), preferredSize: Size.fromHeight(4.0),),
        backgroundColor: Colors.black,
     elevation: 20,
     
      title: Text('The Art Of Sharing Soulmates', style: TextStyle(
        color: Colors.redAccent , fontSize: 20, ),),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          color: Colors.redAccent,
          icon: Icon(Icons.search),
          onPressed: (){},
        )
      ],
  
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
               
         /*      color: [Colors.red, Colors.black] */
            )
          ),
        ),
   
      
      ),

    
      
    );
  }




  
}

