/* 
Cambiar todos los parametros a strings 
paar que solo sea la recepcion de datos 
*/

import 'package:flutter/material.dart';
 
class PageDetalle extends StatelessWidget {
  PageDetalle ({this.nombre, this.apellido, this.edad, this.sexo, this.tipo, this.imagenmas, this.nommas, this.edmas});
  final String nombre;
  final String apellido;
  final int edad;
  final String sexo;
  final String tipo;
  final String imagenmas;
  final String nommas;
  final int edmas;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: Center(
          child: Container(
            width: double.infinity,
            decoration: backGroundGradi(),
            child: Column(
              children: <Widget>[
                SafeArea(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage("image/icono_perro_gato.png"),
                        fit: BoxFit.cover 
                      ),
                    ),
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
                SizedBox(height: 30.0,),
                Container(
                  color: Color.fromRGBO(37, 68, 52, 1),
                  height: 4.0,
                ),
                Container(
                  padding: EdgeInsets.only(top:5.0,bottom: 5.0),
                  child: Text("Bienvenidos",style: TextStyle(fontFamily: 'Aguafina', fontSize: 56.0),),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2.0)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage("image/$sexo"),
                            fit: BoxFit.cover 
                          ),
                        ),
                        height: 180.0,//tamaño de la imagen
                        width: 180.0,
                      ),
                      Text("$nombre $apellido \n$edad años de edad.\n\nDueño de un $tipo\nde $edmas años, llamado"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2.0)
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage("image/$imagenmas"),
                            fit: BoxFit.cover 
                          ),
                        ),
                        height: 80.0,//tamaño de la imagen
                        width: 80.0,
                      ),
                      Text("$nommas"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }




  backGroundGradi(){
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        stops: [0.0,0.3,0.5,0.8,1.0],
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