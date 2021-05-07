import 'package:athena/AthenaHeart.dart';
import 'package:athena/utils/constantes.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _formKey = GlobalKey<FormState>();
final databaseReference = Firestore.instance;
String _nombre = '';
String _apellido = '';
String _email  = '';
String _telefono  = '';
String _comentario  = '';

TextEditingController controlNombre = new TextEditingController();
TextEditingController controlApellido = new TextEditingController();
TextEditingController controlEmail = new TextEditingController();
TextEditingController controlTelefono = new TextEditingController();
TextEditingController controlComentarios = new TextEditingController();
class FormPage extends StatefulWidget {

  FormPage({Key key}) : super(key: key);



  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: Text('CONTACTO'),
       ),

       body: Form(
         key: _formKey,
         child: ListView(
           padding: EdgeInsets.all(40),
           
           children: <Widget>[
                _presentacion(),
                Divider(),
                _inputName(),
                Divider(),
                _inputApellido(),
                Divider(),
                _inputEmail(),
                Divider(),
                _inputTelefono(),
                Divider(),
                _inputComentarios(),
                Divider(),
                _buttonEnviar(),
           ],
           
         ),
       ),
       
    );

     
  }


  Widget _presentacion(){

  return Container(
    child: Text('AHY agradece su interes, registre sus datos y nos pondremos en contacto con usted', style: TextStyle(fontSize: 20),),
  );


  }

   Widget _inputName() {

return  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Nombre*',
        labelText: 'Nombre*',
      ),
      controller: controlNombre,
     onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },
         validator: (value){
if(value.isEmpty){

       return 'Este campo no puede quedar vacio';
       }



 Pattern pattern = REGEX_NAMES;
    RegExp regex = new RegExp(pattern);      
if (!regex.hasMatch(value))
      return 'Ingrese un nombre valido';
    else
      return null;
       } ,
      ),
    ],
  );

  }

     Widget _inputApellido() {

return  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      TextFormField(
        decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Apellido',
        labelText: 'Apellido',
       
      ),
      controller: controlApellido,
     onChanged: (valor){
        setState(() {
          _apellido = valor;
        });
      },
         validator: (value){
if(value.isEmpty){

       return 'Este campo no puede quedar vacio';
       }



 Pattern pattern = REGEX_NAMES;
    RegExp regex = new RegExp(pattern);      
if (!regex.hasMatch(value))
      return 'Ingrese un apellido valido';
    else
      return null;
       } ,
      ),
    ],
  );

  }

     Widget _inputEmail() {

return  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      TextFormField(
        decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
          
        ),
        hintText: 'Email*',
        labelText: 'Email*',
       
      ),
      controller: controlEmail,
     onChanged: (valor){
        setState(() {
          _email = valor;
        });
      },
         validator: (value){
if(value.isEmpty){

       return 'Este campo no puede quedar vacio';
       }



 Pattern pattern = REGEX_EMAIL;
    RegExp regex = new RegExp(pattern);      
if (!regex.hasMatch(value))
      return 'Ingrese un email valido';
    else
      return null;
       } ,
      ),
    ],
  );

  }

       Widget _inputTelefono() {

return  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      TextFormField(
        decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
          
        ),
        hintText: 'Telefono*',
        labelText: 'Telefono*',
       
      ),
      controller: controlTelefono,
     onChanged: (valor){
        setState(() {
          _telefono = valor;
        });
      },
         validator: (value){
if(value.isEmpty){

       return 'Este campo no puede quedar vacio';
       }



 Pattern pattern = REGEX_TELEFONO;
    RegExp regex = new RegExp(pattern);      
if (!regex.hasMatch(value))
      return 'Ingrese un telefono valido';
    else
      return null;
       } ,
      ),
    ],
  );

  }

         Widget _inputComentarios() {

return  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      TextFormField(
        decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
          
        ),
        hintText: 'Comentarios',
        labelText: 'Comentarios',
       
      ),
      controller: controlComentarios,
     onChanged: (valor){
        setState(() {
          _comentario = valor;
        });
      },
         validator: (value){
if(value.isEmpty){

       return 'Este campo no puede quedar vacio';
       }



 Pattern pattern = REGEX_NAMES;
    RegExp regex = new RegExp(pattern);      
if (!regex.hasMatch(value))
      return 'Ingrese un comentario valido';
    else
      return null;
       } ,
      ),
    ],
  );

  }








    Widget _buttonEnviar() {

    return RaisedButton(

      child: Text('Enviar',)
      ,
      padding: EdgeInsets.all(20),
      color: Colors.blue,
      onPressed: (){
        
     if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  createRecord();
                  _showDialog(context);
                 
                }

        
        
          
        


                  
  
      }
    );

  }

  

}

  void _showDialog(context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(

          title: new Text("Datos Enviados"),
          content:
           new Text("Agradecemos su interes, nos pondremos en contacto con usted cuanto antes"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Cerrar"),
              onPressed: () {
             //   Navigator.of(context).pop();
               _return(context);
              },
            ),
          ],
        );
      },
    );
  }

    void _return(context) {
    // flutter defined function
     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AthenaHeart()),
  );
  }






void createRecord() async {
  /* await databaseReference.collection("retiro_fondo")
      .document("datos")
      .setData({
        
      });
*/

 DocumentReference ref = await databaseReference.collection("solicitudes_contacto")
      .add({

'nombre': _nombre ,
'apellido': _apellido ,
'email': _email,
'telefono': _telefono,
'comentario': _comentario,



      });
  print(ref.documentID);


}
  





