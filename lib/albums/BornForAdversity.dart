import 'package:athena/utils/constantes.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class BornForAdversity extends StatefulWidget {
  @override
  _BornForAdversityState createState() => _BornForAdversityState();
}

class _BornForAdversityState extends State<BornForAdversity> {
  bool playpause =true;
  bool pauseplay =false;
bool selectedsong1= false;
   bool selectedsong2= false;
    bool selectedsong3= false;
     bool selectedsong4= false;
       bool selectedsong5= false;
        bool selectedsong6= false;
          bool selectedsong7= false;
            bool selectedsong8= false;
              bool selectedsong9= false;
                bool selectedsong10= false;
                  bool selectedsong11= false;
                    bool selectedsong12= false;
                      bool selectedsong13= false;


 AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      persistentFooterButtons: <Widget>[
       
           Container(
             padding: EdgeInsets.only(right: 110),
          // padding: EdgeInsets.zero,
             child: Row(
             //  crossAxisAlignment: CrossAxisAlignment.end,
         //  mainAxisAlignment: MainAxisAlignment.start,
             
               children: <Widget>[
           
                 IconButton(
          icon: Icon(Icons.fast_rewind),
          onPressed: (){
            setState(() {
        
             if(selectedsong1==true){
                audioPlayer.stop();
                selectedsong1=false;
                pauseplay=false;
                playpause=true;
              } 
                 if(selectedsong2==true){
                playsong1();
                       playpause=false;
             pauseplay=true;

              } 

                        if(selectedsong3==true){
                playsong2();
             playpause=false;
             pauseplay=true;

              } 

                               if(selectedsong4==true){
                playsong3();
             playpause=false;
             pauseplay=true;

              } 

                               if(selectedsong5==true){
                playsong4();
             playpause=false;
             pauseplay=true;

              } 

                               if(selectedsong6==true){
                playsong5();
             playpause=false;
             pauseplay=true;

              } 

                               if(selectedsong7==true){
                playsong6();
             playpause=false;
             pauseplay=true;

              } 

                               if(selectedsong8==true){
                playsong7();
             playpause=false;
             pauseplay=true;

              } 

                                    if(selectedsong9==true){
                playsong8();
             playpause=false;
             pauseplay=true;

              } 

                                    if(selectedsong10==true){
                playsong9();
             playpause=false;
             pauseplay=true;

              } 

                                    if(selectedsong11==true){
                playsong10();
             playpause=false;
             pauseplay=true;

              } 

                                    if(selectedsong12==true){
                playsong11();
             playpause=false;
             pauseplay=true;

              } 

                                    if(selectedsong13==true){
                playsong12();
             playpause=false;
             pauseplay=true;

              } 
              
            });
        //   play();
          },
          
        ),
          
                Visibility(

              visible: playpause,  


                child:    IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: (){
            setState(() {
          pauseplay=true;
          playpause=false;
          audioPlayer.resume();
    /*    if(selectedsong1==false && selectedsong2==false && selectedsong3==false && selectedsong4==false && selectedsong5==false && selectedsong6==false && selectedsong7==false && selectedsong8==false && selectedsong9==false && selectedsong10==false && selectedsong11==false && selectedsong12==false && selectedsong13==false){
         playsong1();

       } */
         
            });
         
          },
          
        ),
                   
                 ),
     Visibility(
       visible: pauseplay,
       
       child:    IconButton(
          icon: Icon(Icons.pause),
          onPressed: (){
            setState(() {
                 playpause=true;
             pauseplay=false;

             audioPlayer.pause();
            });
          

          },
          
        ),),
           
   

                                IconButton(
          icon: Icon(Icons.fast_forward),
          onPressed: (){
            setState(() {


                         if(selectedsong13==true){
                   audioPlayer.stop();
                selectedsong13=false;
                pauseplay=false;
                playpause=true;
  

              } 


                     if(selectedsong12==true){
                playsong13();
             playpause=false;
             pauseplay=true;

              } 
                        if(selectedsong11==true){
                playsong12();
             playpause=false;
             pauseplay=true;

              } 

                                 if(selectedsong10==true){
                playsong11();
             playpause=false;
             pauseplay=true;

              } 


                                        if(selectedsong9==true){
                playsong10();
             playpause=false;
             pauseplay=true;

              } 


                                        if(selectedsong8==true){
                playsong9();
             playpause=false;
             pauseplay=true;

              } 

                                        if(selectedsong7==true){
                playsong8();
             playpause=false;
             pauseplay=true;

              } 


                                              if(selectedsong6==true){
                playsong7();
             playpause=false;
             pauseplay=true;

              } 

                                              if(selectedsong5==true){
                playsong6();
             playpause=false;
             pauseplay=true;

              } 

                                              if(selectedsong4==true){
                playsong5();
             playpause=false;
             pauseplay=true;

              } 
              

                                                        if(selectedsong3==true){
                playsong4();
             playpause=false;
             pauseplay=true;

              } 

                                                        if(selectedsong2==true){
                playsong3();
             playpause=false;
             pauseplay=true;

              } 

                                                        if(selectedsong1==true){
                playsong2();
             playpause=false;
             pauseplay=true;

              } 

              
               

   
     
            });
    //      seek();
          },
          
        ),
        
               ],
             ),
           ),
        
      ],
        
      

        body: CustomScrollView(
      slivers: <Widget>[
        _crearAppBar(),
        SliverList(
          delegate: SliverChildListDelegate([
            SizedBox(height: 10.0),
            _posterTitulo(),
            _descripcion(),
            Divider(),
            ListTile(
            trailing: IconButton(
              icon: Icon(Icons.library_books), 
              onPressed: (){
                setState(() {
              AlertDialog alert = AlertDialog(
    title: Text(BORN_FOR_ADVERSITY),
    content: SingleChildScrollView(child: Text("0h80hh08h08feh80f80dfhdshjisahdhjasdlhaalhhljafhdfdjshfhjkldsja hdfskhjkfhjkfhkjashjkdfhjklfhkjd hkljadshjdfhkjdfslhkdfhkjdfhaskjldhkjfhkjldfashlkjfdaslhkdjshflkdjkdlfhjasadfshkhsdfk klshjdhjklfshksdfhkldsfkhlafdhlfdaskhjkfjhdladsfhkjlafdhjkldfskhjdfkhjldafkhlj lhjdslghjkghdsjkhdgjlkslkhjdgsgkhjldhkjlgdhkjlgdshkljgdhkjldgs jklgahkljghjkgadshkgjsdkhj fhohfhouashouafuhofsahuosafhoufsahouhufosahoufsaasuhofhousahuoffasuhosfoauhosfhuohsufaosuhfsufhofhushkokfsafsohaohfsofhskoshasfkhoakfhafskohokhfasokhaafokhafkohsohkafsfoahkssafohfsahofsaoh gjorojirijowijogijowgrijogiojwgjiogwrjigijworiojgrwijogwrijogijowgrijogwrjiogwjiorgwiojrgwijorijgowrijogwr jfakafojafjajsoafjosjaofkakfojakjfsokfojsojkoajkfkjoaskjofasojfkaojkfsajok djklsakljasljkdjklaljkasdjlkkdjlajkladsljkdsjlkdskljjklsjkldalkaksjljkljkljk43ljk4ljk43ljk56jlkjlk6ljk64l3jk646ljkl346jkj364346kj346ljk364ljk364ljk364lkj634ljk643jkl46363lkljk36lkjkjl346jkl364lkj364jkl346jkl634klj436ljk634jlk463jkl346jkl463lj436jl643ljk463kl436kjl463jkl463ljk463jlkjkl463jkl4636jkl3436kljlkj6lkj463lkj643lkj463lkj436lkjjlk436lkj6jkl4636l4kjljsdfklkjjkgldgjklssgdlkkldjsgjkldgkljgddgkjlkjlgdsjdkgldgjkldklgsjlgkdjsgdsljkglsdjkljkgsdkljgdslkjglkjsgljksdlkjsgdjklgsjlkgsdlkjrjlkqlkrjljkrwqljkrqwkljrqwkljrqwjklqrwlkjrqwlkjrlkqjwlrkjwqlkrjqwjklqw ljkjaklsdjklasjldk")),
/*    actions: <Widget>[
     IconButton(icon: Icon(Icons.ac_unit), onPressed: (){
       Navigator.pop(context);
     })
   ], */
  );

    showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
                });
               
              }),
            selected: selectedsong1,

            title: Text(BORN_FOR_ADVERSITY),
            onTap: () {
              //  selectedsong1=true;
                   setState(() {
            playsong1();
            pauseplay=true;
             playpause=false;
              });
              
     
            },
            ),
             Divider(),
               ListTile(
            trailing: IconButton(
              icon: Icon(Icons.library_books), 
              onPressed: (){}),
            selected: selectedsong2,

            title: Text('Hate Me'),
            onTap: () {
            
                          setState(() {
            playsong2();
            pauseplay=true;
             playpause=false;
              });
            },
            ),


                      Divider(),
               ListTile(
            trailing: IconButton(
              icon: Icon(Icons.library_books), 
              onPressed: (){}),
            selected: selectedsong3,

            title: Text('Cancion 3'),
            onTap: () {
                          setState(() {
            playsong3();
            pauseplay=true;
             playpause=false;
              });
            },
            ),

                      Divider(),
               ListTile(
            trailing: IconButton(
              icon: Icon(Icons.library_books), 
              onPressed: (){}),
            selected: selectedsong4,

            title: Text('Cancion 4'),
            onTap: () {
                          setState(() {
            playsong4();
            pauseplay=true;
             playpause=false;
              });
            },
            ),

                      Divider(),
               ListTile(
            trailing: IconButton(
              icon: Icon(Icons.library_books), 
              onPressed: (){}),
            selected: selectedsong5,

            title: Text('Cancion 5'),
            onTap: () {
                          setState(() {
            playsong5();
            pauseplay=true;
             playpause=false;
              });
            },
            ),

                        Divider(),
               ListTile(
            trailing: IconButton(
              icon: Icon(Icons.library_books), 
              onPressed: (){}),
            selected: selectedsong6,

            title: Text('Cancion 6'),
            onTap: () {
                          setState(() {
            playsong6();
            pauseplay=true;
             playpause=false;
              });
            },
            ),

                         Divider(),
               ListTile(
            trailing: IconButton(
              icon: Icon(Icons.library_books), 
              onPressed: (){}),
            selected: selectedsong7,

            title: Text('Cancion 7'),
            onTap: () {
                          setState(() {
            playsong7();
            pauseplay=true;
             playpause=false;
              });
            },
            ),

                         Divider(),
               ListTile(
            trailing: IconButton(
              icon: Icon(Icons.library_books), 
              onPressed: (){}),
            selected: selectedsong8,

            title: Text('Cancion 8'),
            onTap: () {
                          setState(() {
            playsong8();
            pauseplay=true;
             playpause=false;
              });
            },
            ),

                         Divider(),
               ListTile(
            trailing: IconButton(
              icon: Icon(Icons.library_books), 
              onPressed: (){}),
            selected: selectedsong9,

            title: Text('Cancion 9'),
            onTap: () {
                          setState(() {
            playsong9();
            pauseplay=true;
             playpause=false;
              });
            },
            ),

                         Divider(),
               ListTile(
            trailing: IconButton(
              icon: Icon(Icons.library_books), 
              onPressed: (){}),
            selected: selectedsong10,

            title: Text('Cancion 10'),
            onTap: () {
                          setState(() {
            playsong10();
            pauseplay=true;
             playpause=false;
              });
            },
            ),
                         Divider(),
               ListTile(
            trailing: IconButton(
              icon: Icon(Icons.library_books), 
              onPressed: (){}),
            selected: selectedsong11,

            title: Text('Cancion 11'),
            onTap: () {
                          setState(() {
            playsong11();
            pauseplay=true;
             playpause=false;
              });
            },
            ),
                         Divider(),
               ListTile(
            trailing: IconButton(
              icon: Icon(Icons.library_books), 
              onPressed: (){}),
            selected: selectedsong12,

            title: Text('Cancion 12'),
            onTap: () {
                          setState(() {
            playsong12();
            pauseplay=true;
             playpause=false;
              });
            },
            ),

                         Divider(),
               ListTile(
            trailing: IconButton(
              icon: Icon(Icons.library_books), 
              onPressed: (){}),
            selected: selectedsong13,

            title: Text('Cancion 13'),
            onTap: () {
                          setState(() {
            playsong13();
            pauseplay=true;
             playpause=false;
              });
            },
            ),
     
          ]),
        )
      ],
    ));
  }

  Widget _crearAppBar() {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Colors.black,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          "BORN FOR ADVERSITY",
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        background: Image(
          image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/athena-4a4e7.appspot.com/o/backgrounds%2FBorn%20For%20Adversity%20Background.jpg?alt=media&token=0863cf20-e8c8-4076-a785-e4106aec432f'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _posterTitulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Hero(
            tag: '2010',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(1.0),
              child: Image(
                image: AssetImage('assets/albumes/2010.jpg'),
                height: 150.0,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('sasdadsad'),
                Text('sassadsdsadsad'),
                Row(
                  children: <Widget>[

                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _descripcion() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Text(
        'alskdlaskjdlkasdjklasdklsadlalnjlasjsajldjlasjldjlsadjhashjldjlajdlshajlhdjlhajldajlsdhajlsdhjlshfjdhfkasdjaslkdjaslkdjklsadjlasldasdljufrfjjklj',
        textAlign: TextAlign.justify,
      ),
    );
  }




    playsong1() async {
      setState(() {
        selectedsong1=true;
        selectedsong2=false;
        selectedsong3=false;
        selectedsong4=false;
        selectedsong5=false;
        selectedsong6=false;
        selectedsong7=false;
        selectedsong8=false;
        selectedsong9=false;
        selectedsong10=false;
        selectedsong11=false;
        selectedsong12=false;
        selectedsong13=false;
      });
     
    int result = await audioPlayer.play('https://drive.google.com/file/d/1P9HM9wO9e9wP7RtnoMH_rRsWmKbo1iOT/view');
    if (result == 1) {
      // success
    }
  }

    playsong2() async {
      setState(() {
        selectedsong1=false;
        selectedsong2=true;
        selectedsong3=false;
        selectedsong4=false;
        selectedsong5=false;
        selectedsong6=false;
        selectedsong7=false;
        selectedsong8=false;
        selectedsong9=false;
        selectedsong10=false;
        selectedsong11=false;
        selectedsong12=false;
        selectedsong13=false;
       
        
      });
     
    int result = await audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/athena-4a4e7.appspot.com/o/Hate%20Me.mp3?alt=media&token=7befc4cc-a775-419b-b906-1a2f58e1c430');
    if (result == 2) {
      // success
    }
}

    playsong3() async {
      setState(() {
         selectedsong1=false;
        selectedsong2=false;
        selectedsong3=true;
        selectedsong4=false;
        selectedsong5=false;
        selectedsong6=false;
        selectedsong7=false;
        selectedsong8=false;
        selectedsong9=false;
        selectedsong10=false;
        selectedsong11=false;
        selectedsong12=false;
        selectedsong13=false;
       
        
      });
     
    int result = await audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/athena-4a4e7.appspot.com/o/Hate%20Me.mp3?alt=media&token=7befc4cc-a775-419b-b906-1a2f58e1c430');
    if (result == 3) {
      // success
    }
}

    playsong4() async {
      setState(() {
        selectedsong1=false;
        selectedsong2=false;
        selectedsong3=false;
        selectedsong4=true;
        selectedsong5=false;
        selectedsong6=false;
        selectedsong7=false;
        selectedsong8=false;
        selectedsong9=false;
        selectedsong10=false;
        selectedsong11=false;
        selectedsong12=false;
        selectedsong13=false;
       
        
      });
     
    int result = await audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/athena-4a4e7.appspot.com/o/Hate%20Me.mp3?alt=media&token=7befc4cc-a775-419b-b906-1a2f58e1c430');
    if (result == 1) {
      // success
    }
}

    playsong5() async {
      setState(() {
        selectedsong1=false;
        selectedsong2=false;
        selectedsong3=false;
        selectedsong4=false;
        selectedsong5=true;
        selectedsong6=false;
        selectedsong7=false;
        selectedsong8=false;
        selectedsong9=false;
        selectedsong10=false;
        selectedsong11=false;
        selectedsong12=false;
        selectedsong13=false;
       
        
      });
     
    int result = await audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/athena-4a4e7.appspot.com/o/Hate%20Me.mp3?alt=media&token=7befc4cc-a775-419b-b906-1a2f58e1c430');
    if (result == 5) {
      // success
    }
}

    playsong6() async {
      setState(() {
       selectedsong1=false;
        selectedsong2=false;
        selectedsong3=false;
        selectedsong4=false;
        selectedsong5=false;
        selectedsong6=true;
        selectedsong7=false;
        selectedsong8=false;
        selectedsong9=false;
        selectedsong10=false;
        selectedsong11=false;
        selectedsong12=false;
        selectedsong13=false;
       
        
      });
     
    int result = await audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/athena-4a4e7.appspot.com/o/Hate%20Me.mp3?alt=media&token=7befc4cc-a775-419b-b906-1a2f58e1c430');
    if (result == 1) {
      // success
    }
}

    playsong7() async {
      setState(() {
       selectedsong1=false;
        selectedsong2=false;
        selectedsong3=false;
        selectedsong4=false;
        selectedsong5=false;
        selectedsong6=false;
        selectedsong7=true;
        selectedsong8=false;
        selectedsong9=false;
        selectedsong10=false;
        selectedsong11=false;
        selectedsong12=false;
        selectedsong13=false;
       
        
      });
     
    int result = await audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/athena-4a4e7.appspot.com/o/Hate%20Me.mp3?alt=media&token=7befc4cc-a775-419b-b906-1a2f58e1c430');
    if (result == 1) {
      // success
    }
}

    playsong8() async {
      setState(() {
       selectedsong1=false;
        selectedsong2=false;
        selectedsong3=false;
        selectedsong4=false;
        selectedsong5=false;
        selectedsong6=false;
        selectedsong7=false;
        selectedsong8=true;
        selectedsong9=false;
        selectedsong10=false;
        selectedsong11=false;
        selectedsong12=false;
        selectedsong13=false;
       
        
      });
     
    int result = await audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/athena-4a4e7.appspot.com/o/Hate%20Me.mp3?alt=media&token=7befc4cc-a775-419b-b906-1a2f58e1c430');
    if (result == 1) {
      // success
    }
}

    playsong9() async {
      setState(() {
     selectedsong1=false;
        selectedsong2=false;
        selectedsong3=false;
        selectedsong4=false;
        selectedsong5=false;
        selectedsong6=false;
        selectedsong7=false;
        selectedsong8=false;
        selectedsong9=true;
        selectedsong10=false;
        selectedsong11=false;
        selectedsong12=false;
        selectedsong13=false;
       
        
      });
     
    int result = await audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/athena-4a4e7.appspot.com/o/Hate%20Me.mp3?alt=media&token=7befc4cc-a775-419b-b906-1a2f58e1c430');
    if (result == 1) {
      // success
    }
}

    playsong10() async {
      setState(() {
       selectedsong1=false;
        selectedsong2=false;
        selectedsong3=false;
        selectedsong4=false;
        selectedsong5=false;
        selectedsong6=false;
        selectedsong7=false;
        selectedsong8=false;
        selectedsong9=false;
        selectedsong10=true;
        selectedsong11=false;
        selectedsong12=false;
        selectedsong13=false;
       
        
      });
     
    int result = await audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/athena-4a4e7.appspot.com/o/Hate%20Me.mp3?alt=media&token=7befc4cc-a775-419b-b906-1a2f58e1c430');
    if (result == 1) {
      // success
    }
}

    playsong11() async {
      setState(() {
       selectedsong1=false;
        selectedsong2=false;
        selectedsong3=false;
        selectedsong4=false;
        selectedsong5=false;
        selectedsong6=false;
        selectedsong7=false;
        selectedsong8=false;
        selectedsong9=false;
        selectedsong10=false;
        selectedsong11=true;
        selectedsong12=false;
        selectedsong13=false;
       
        
      });
     
    int result = await audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/athena-4a4e7.appspot.com/o/Hate%20Me.mp3?alt=media&token=7befc4cc-a775-419b-b906-1a2f58e1c430');
    if (result == 1) {
      // success
    }
}


    playsong12() async {
      setState(() {
     selectedsong1=false;
        selectedsong2=false;
        selectedsong3=false;
        selectedsong4=false;
        selectedsong5=false;
        selectedsong6=false;
        selectedsong7=false;
        selectedsong8=false;
        selectedsong9=false;
        selectedsong10=false;
        selectedsong11=false;
        selectedsong12=true;
        selectedsong13=false;
       
        
      });
     
    int result = await audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/athena-4a4e7.appspot.com/o/Hate%20Me.mp3?alt=media&token=7befc4cc-a775-419b-b906-1a2f58e1c430');
    if (result == 1) {
      // success
    }
}

    playsong13() async {
      setState(() {
      selectedsong1=false;
        selectedsong2=false;
        selectedsong3=false;
        selectedsong4=false;
        selectedsong5=false;
        selectedsong6=false;
        selectedsong7=false;
        selectedsong8=false;
        selectedsong9=false;
        selectedsong10=false;
        selectedsong11=false;
        selectedsong12=false;
        selectedsong13=true;
       
        
      });
     
    int result = await audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/athena-4a4e7.appspot.com/o/Hate%20Me.mp3?alt=media&token=7befc4cc-a775-419b-b906-1a2f58e1c430');
    if (result == 1) {
      // success
    }
}




}