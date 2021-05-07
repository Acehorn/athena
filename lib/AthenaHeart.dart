import 'package:athena/albums/albumsgeneral.dart';
import 'package:athena/pages/formpage.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'albums/BornForAdversity.dart';

class AthenaHeart extends StatefulWidget {
  @override
  _AthenaHeartState createState() => _AthenaHeartState();
}  

class _AthenaHeartState extends State<AthenaHeart> {

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Athena',
      home: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
        
          backgroundColor: Colors.black,
      // elevation: 20,
       
        title: Text('Athena Restore', style: TextStyle(
          color: Colors.white , fontSize: 25, ),),
        centerTitle: true,
        actions: <Widget>[
        
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
        
        ],

        ),
      
        drawer: Drawer(
            
          child: Container(
            color: Colors.black,
            child: ListView(

              padding: EdgeInsets.zero,
              children: <Widget>[
                 
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
      backgroundColor: Colors.white,
      child: Text(
        "L",
        style: TextStyle(fontSize: 40.0),
      ),
  ),

                 accountName: Text("Luis Castillo",),
                 accountEmail: Text("email@gmail.com"),
                   decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv9S7CNiPrU93r8eBCtEkTQmo59hnd2V9Y_3VUlioqdEvJrcF2&s'),
                      fit: BoxFit.cover,
                    ),
              color: Colors.black,
              
             
            ),
                ),
                  Divider(),
                  ListTile(
                     
            title: Text('Item 1', style: TextStyle(color: Colors.white, fontSize: 15),),
            trailing: IconButton(
              icon: Icon(Icons.apps),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AlbumsGeneral()));
              },
              color: Colors.white,
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
        ),
        Divider(),
                 
           


              ],
            ),
          ),
        ),
        
        body: ListView(
          children: <Widget>[
            Divider( height: 0.8, color: Colors.white,),
            titleAlbumes(),
           carouselAthena(),
           titleGaleria(),
           carouselGaleria(),
           titleShop(),
           contentShop(),
           titleFacebook(),
           contentFacebook(),
           titleYoutube(),
           contentYoutube(),
           titleTwitter(),
           contentTwitter(),
           titleContact(),
           contentContact(),

          ],
        ),

      ),
    );
  }

Widget titleAlbumes(){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical:20, horizontal: 5),
    child: Container(
    
      child: Text(' Music', style: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),),
    ),
  );
}

Widget carouselAthena(){



 var a2010 = ExactAssetImage('assets/albumes/2010.jpg');
  var a2011 = ExactAssetImage('assets/albumes/2011.png');
   var a2012 = ExactAssetImage('assets/albumes/2012.jpg');
    var a2013 = ExactAssetImage('assets/albumes/2013.jpg');
     var a2014 = ExactAssetImage('assets/albumes/2014.jpg');
      var a2015 = ExactAssetImage('assets/albumes/2015.jpg');
       var a2016 = ExactAssetImage('assets/albumes/2016.JPG');
        var a2017 = ExactAssetImage('assets/albumes/2017.JPG');
         var a2018 = ExactAssetImage('assets/albumes/2018.jpg');
          var a2019 = ExactAssetImage('assets/albumes/2019.jpg');

                return 
                  
                  SizedBox(
                  height: 400 ,
                // width: 10000,
                  
                  child: Carousel(
               
                    boxFit: BoxFit.fill,
              
                    images: [
                    
        GestureDetector(child: Container(padding: EdgeInsets.all(15), child: Image(fit: BoxFit.fill, image: a2010,  )), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
        GestureDetector(child: Container(padding: EdgeInsets.all(15),child: Image( fit: BoxFit.fill, image: a2011,)), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
        GestureDetector(child: Container(padding: EdgeInsets.all(15),child: Image( fit: BoxFit.fill, image: a2012,)), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
        GestureDetector(child: Container(padding: EdgeInsets.all(15),child: Image( fit: BoxFit.fill, image: a2013,)), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
        GestureDetector(child: Container(padding: EdgeInsets.all(15),child: Image( fit: BoxFit.fill, image: a2014,)), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
        GestureDetector(child: Container(padding: EdgeInsets.all(15),child: Image( fit: BoxFit.fill, image: a2015,)), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
        GestureDetector(child: Container(padding: EdgeInsets.all(15),child: Image( fit: BoxFit.fill, image: a2016,)), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
        GestureDetector(child: Container(padding: EdgeInsets.all(15),child: Image( fit: BoxFit.fill, image: a2017,)), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
        GestureDetector(child: Container(padding: EdgeInsets.all(15),child: Image( fit: BoxFit.fill, image: a2018,)), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
        GestureDetector(child: Container(padding: EdgeInsets.all(15),child: Image( fit: BoxFit.fill, image: a2019,)), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
        

     
      ],
   showIndicator: false,
    
      animationDuration: const Duration(seconds: 30),
      dotSize: 4.0,
      dotSpacing: 15.0,
    
      dotColor: Colors.white,
      dotIncreasedColor: Colors.transparent,
      indicatorBgPadding: 5.0,
      dotBgColor: Colors.transparent,
      borderRadius: true,
      moveIndicatorFromBottom: 180.0,
      noRadiusForIndicator: true,
      //dotPosition: DotPosition.bottomCenter,
    
      
    )
);
  

}


Widget titleGaleria(){
  return Padding(
    padding: const EdgeInsets.all(13.0),
    child: Container(
    
      child: Text('PHOTO GALLERY', style: TextStyle(fontSize: 30, color: Colors.redAccent),),
    ),
  );
}

  Widget carouselGaleria(){



 var a = ExactAssetImage('assets/phtos/altavista.jpg');
 var b = ExactAssetImage('assets/phtos/balbuena.jpg');
 var c = ExactAssetImage('assets/phtos/candelaria.jpg');
 var d = ExactAssetImage('assets/phtos/dante.jpg');
 var e = ExactAssetImage('assets/phtos/etiopia.jpg');
 var f = ExactAssetImage('assets/phtos/federal.jpg');
 var g = ExactAssetImage('assets/phtos/garibaldi.jpg');

                return 
                  
                  SizedBox(
                  height: 450 ,
                  //width: 100,
                 
                  child: Carousel(
              
                    boxFit: BoxFit.fill,
              
                    images: [
      GestureDetector(child: Image( fit: BoxFit.fill, image: a,), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
      GestureDetector(child: Image( fit: BoxFit.fill, image: b,), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
      GestureDetector(child: Image( fit: BoxFit.fill, image: c,), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
      GestureDetector(child: Image( fit: BoxFit.fill, image: d,), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
      GestureDetector(child: Image( fit: BoxFit.fill, image: e,), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),      
      GestureDetector(child: Image( fit: BoxFit.fill, image: f,), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),     
      GestureDetector(child: Image( fit: BoxFit.fill, image: g,), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },),
      ],
      
      showIndicator: false,
    
      
      dotSize: 4.0,
      dotSpacing: 15.0,
     
      dotColor: Colors.white,
      dotIncreasedColor: Colors.transparent,
      indicatorBgPadding: 5.0,
      dotBgColor: Colors.transparent,
      borderRadius: true,
      moveIndicatorFromBottom: 180.0,
      noRadiusForIndicator: true,
      
    )
);
  

}

Widget titleShop(){
  return Padding(
    
    padding: const EdgeInsets.all(13.0),
    child: Container(
    
      child: Text('SHOP', style: TextStyle(fontSize: 30, color: Colors.redAccent),),
    ),
  );
}

Widget contentShop(){

return 
    SizedBox(
     height: 450,
      child: GestureDetector(
        
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },
        child: Image(
          fit: BoxFit.fill,
         image: ExactAssetImage('assets/shop.jpg'),
        ),
      ),
    );




}


Widget titleFacebook(){
  return Padding(
    
    padding: const EdgeInsets.all(13.0),
    child: Container(
    
      child: Text('LIKE US ON FACEBOOK', style: TextStyle(fontSize: 30, color: Colors.redAccent),),
    ),
  );
}



Widget contentFacebook(){

return 

    SizedBox(
     height: 450,
      child: GestureDetector(
        
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },
        child: Image(
          fit: BoxFit.fill,
         image: ExactAssetImage('assets/facebook.jpg'),
        ),
      ),

    );




}

Widget titleYoutube(){
  return Padding(
    
    padding: const EdgeInsets.all(13.0),
    child: Container(
    
      child: Text('WATCH US ON YOUTUBE', style: TextStyle(fontSize: 30, color: Colors.redAccent),),
    ),
  );
}

Widget contentYoutube(){

return 

    SizedBox(
     height: 450,
      child: GestureDetector(
        
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },
        child: Image(
          fit: BoxFit.fill,
         image: ExactAssetImage('assets/youtube.jpg'),
        ),
      ),

    );




}

Widget titleTwitter(){
  return Padding(
    
    padding: const EdgeInsets.all(13.0),
    child: Container(
    
      child: Text('FOLLOW US ON TWITTER', style: TextStyle(fontSize: 30, color: Colors.redAccent),),
    ),
  );
}

Widget contentTwitter(){

return 

    SizedBox(
     height: 450,
      child: GestureDetector(
        
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BornForAdversity())); },
        child: Image(
          fit: BoxFit.fill,
         image: ExactAssetImage('assets/twitter.jpg'),
        ),
      ),

    );




}

Widget titleContact(){
  return Padding(
    
    padding: const EdgeInsets.all(13.0),
    child: Container(
    
      child: Text('CONTACT US', style: TextStyle(fontSize: 30, color: Colors.redAccent),),
    ),
  );
}

Widget contentContact(){

return 

    SizedBox(
     height: 450,
      child: GestureDetector(
        
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> FormPage())); },
        child: Image(
          fit: BoxFit.fill,
         image: ExactAssetImage('assets/contacto.jpg'),
        ),
      ),

    );




}


}