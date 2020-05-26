//Realizar las implementaciones de las validaciones ???
import 'package:app_mascota/src/pages/pages_detalle.dart';
import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  //variables para el control de datos 
  String _nombre="";
  String _apellido=""; 
  String _nommas="";
  String _tipo="Gato";//mascota
  String _sex="user.png";//imagen
  String _auxTipo="cat.png";
  String _edad="";
  String _edmas="";
  int _radio=0;
  int _radioSex=0;
  
  final _clave= GlobalKey<FormState>();
  /*
  String _tipo="Gato";//mascota
  String _sex="user.png";//imagen
  String _auxTipo="cat.png";
  int _radio=0;
  int _radioSex=0;
  final _clave= GlobalKey<FormState>();
  final TextEditingController _nombre = TextEditingController();
  final TextEditingController _apellido = TextEditingController();
  final TextEditingController _edad = TextEditingController();

  final TextEditingController _nommas = TextEditingController();
  final TextEditingController _edmas = TextEditingController();*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top:80.0),
            width: double.infinity,
            decoration: backGroundGradi(),
            child: Form(
              key: _clave,
              child: Stack(//para sobre encimar los elementos 
                children: <Widget>[
                  SizedBox(height: 80.0,),
                  Expanded(
                    child: Column(
                      children:<Widget>[
                        Container(//es un cuadro tranasparente de fondo 
                          padding: EdgeInsetsDirectional.only(bottom: 100.0),
                          color: Color.fromRGBO(0, 0, 0, 0),
                        ),
                        Container(
                          decoration: BoxDecoration(//resondear las esquinas
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60.0),
                              topRight: Radius.circular(60.0)
                            )
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 70.0,),
                                persona(),
                                sexo(),
                                tipo(),
                                mascota(),
                                SizedBox(height: 10.0),
                                Container(
                                  //padding: EdgeInsets.only(right: 20.0),
                                  alignment: Alignment.bottomCenter,
                                  child: RaisedButton(
                                    child: Text("\t\t\t\t\t\t\t\t\t\t\t\t\t\tRegistrar\t\t\t\t\t\t\t\t\t\t\t\t\t\t",style: TextStyle(fontSize: 20.0),),
                                    color: Color.fromRGBO(57, 128, 86, 1),
                                    textColor: Colors.white,
                                    shape: StadiumBorder(),
                                    onPressed: () async{
                                      if (!_clave.currentState.validate()){
                                        return;
                                      }else{
                                        Navigator.of(context).push(//mando todos los paramestros Nota: cambiar a string todos para no tener problemas 
                                          MaterialPageRoute(builder: (BuildContext context) => PageDetalle(
                                            nombre: _nombre,
                                            apellido: _apellido,
                                            edad: _edad,
                                            sexo: _sex,
                                            tipo: _tipo,
                                            imagenmas: _auxTipo,
                                            nommas: _nommas,
                                            edmas: _edmas,
                                            ),
                                          )
                                        );
                                      }
                                    }
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                      ] 
                    )
                  ),
                  Positioned(
                    left: (MediaQuery.of(context).size.width/2)-90.0,//para alinear al centro
                    //top: 120.0,//espacion de arriba
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage("image/icono_perro_gato.png"),
                          fit: BoxFit.cover 
                        ),
                      ),
                      height: 180.0,//tamaño de la imagen
                      width: 180.0,
                    )
                  ),
                ],
              ),
            ),
          ),
        ],
      ) 
    );
  }
 
  Widget persona(){
    return Column(
        children: <Widget>[
          TextFormField(
            textCapitalization: TextCapitalization.sentences,//poner en mayusculas 
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(//bordeado del input
                borderSide: BorderSide(width: 3,color: Color.fromRGBO(37, 68, 52, 1),),
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: "Nombre",//text dentro
              enabledBorder: OutlineInputBorder(//bordeado del input
                borderSide: BorderSide(width: 3,color: Color.fromRGBO(37, 68, 52, 1),)
              ),
            ),
            onChanged: (valor){
              setState(() {
                _nombre=valor;
              });
            },
            validator: (validar){
              if(validar.isEmpty){
                return "Se requiere el nombre";
              }
            },
          ),
          SizedBox(height: 20.0,),
          TextFormField(
            textCapitalization: TextCapitalization.sentences,//poner en mayusculas 
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(//bordeado del input
                borderSide: BorderSide(width: 3,color: Color.fromRGBO(37, 68, 52, 1),),
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: "Apellidos",//text dentro
              enabledBorder: OutlineInputBorder(//bordeado del input
                borderSide: BorderSide(width: 3,color: Color.fromRGBO(37, 68, 52, 1),)
              ),
            ),
            onChanged: (valor){
              setState(() {
                _apellido=valor;
              });
            },
            validator: (validar){
              if(validar.isEmpty){
                return "Se requiere el apellido";
              }
            },
          ),
          SizedBox(height: 20.0,),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(//bordeado del input
                borderSide: BorderSide(width: 3,color: Color.fromRGBO(37, 68, 52, 1),),
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: "Edad",//text dentro
              enabledBorder: OutlineInputBorder(//bordeado del input
                borderSide: BorderSide(width: 3,color: Color.fromRGBO(37, 68, 52, 1),)
              ),
            ),
            onChanged: (valor){
              setState(() {
                _edad=valor;
              });
            },
            validator: (validar){
              if(validar.isEmpty){
                return "Se requiere la edad";
              }
            },
          ),
        ],
    );
  }

  Widget sexo(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Sexo: ",style: TextStyle(fontSize: 20.0),),
        Text("Masculino",style: TextStyle(fontSize: 20.0),),
        Radio(value: 0, groupValue: _radioSex, onChanged: _radioValueSex, activeColor: Color.fromRGBO(37, 68, 52, 1),),
        Text("Femenino",style: TextStyle(fontSize: 20.0),),
        Radio(value: 1, groupValue: _radioSex, onChanged: _radioValueSex, activeColor: Color.fromRGBO(37, 68, 52, 1),),
      ],
    );
  }

  Widget tipo(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Yo tengo un:",style: TextStyle(fontSize: 20.0),),
        Text("Gato",style: TextStyle(fontSize: 20.0),),
        Radio(value: 0, groupValue: _radio, onChanged: _radioValue, activeColor: Color.fromRGBO(37, 68, 52, 1),),
        Text("Perro",style: TextStyle(fontSize: 20.0),),
        Radio(value: 1, groupValue: _radio, onChanged: _radioValue, activeColor: Color.fromRGBO(37, 68, 52, 1),),
      ],
    );
  }

  void _radioValue(int value){
    setState(() {
      _radio = value;
      if(value==0){_tipo="Gato"; _auxTipo="cat.png";}
      if(value==1){_tipo="Perro"; _auxTipo="dog.png";}  
    });
  }

  void _radioValueSex(int value){
    setState(() {
      _radioSex = value;
      if(value==0)_sex="user.png";
      if(value==1)_sex="woman.png";  
    });
  }

  Widget mascota(){
    return Column(
        children: <Widget>[
          TextFormField(
            textCapitalization: TextCapitalization.sentences,//poner en mayusculas 
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(//bordeado del input
                borderSide: BorderSide(width: 3,color: Color.fromRGBO(37, 68, 52, 1),),
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: "Nombre de mi $_tipo",//text dentro
              enabledBorder: OutlineInputBorder(//bordeado del input
                borderSide: BorderSide(width: 3,color: Color.fromRGBO(37, 68, 52, 1),)
              ),
            ),
            onChanged: (valor){
              setState(() {
                _nommas=valor;
              });
            },
            validator: (validar){
              if(validar.isEmpty){
                return "Se requiere el nombre de la mascota";
              }
            },
          ),
          SizedBox(height: 20.0,),
          TextFormField(
            keyboardType: TextInputType.numberWithOptions(signed: true, decimal: false),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(//bordeado del input
                borderSide: BorderSide(width: 3,color: Color.fromRGBO(37, 68, 52, 1),),
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: "Edad de mi $_tipo",//text dentro
              enabledBorder: OutlineInputBorder(//bordeado del input
                borderSide: BorderSide(width: 3,color: Color.fromRGBO(37, 68, 52, 1),)
              ),
            ),
            onChanged: (valor){
              setState(() {
                _edmas=valor;
              });
            },
            validator: (validar){
              if(validar.isEmpty){
                return "Se requiere la edad de la mascota";
              }
            },
          ),
        ],
    );
  }

  backGroundGradi(){
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.1,0.3,0.5,0.7,0.9],
        colors: [
          Color.fromRGBO(37, 68, 52, 1),
          Color.fromRGBO(57, 128, 86, 1),
          Color.fromRGBO(95, 196, 102, 1),
          Color.fromRGBO(159, 212, 144, 1),
         Color.fromRGBO(195, 248, 180, 1),
        ]
      )
    );
  }
}
