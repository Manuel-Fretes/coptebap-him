import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'modelos/categorias.dart';
class menu extends StatefulWidget {
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.builder(
          itemCount: opciones.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context,index){
            return Container(

              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10)
              ),
              child: GestureDetector(
                onTap: (){
                  print("hiciste click en "+opciones[index].nombre);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/img/"+opciones[index].foto, width: 100,),
                    SizedBox(height: 10),
                    Text(opciones[index].nombre, style: TextStyle (fontSize: 20.0, color: Colors.white),)
                  ],
                ),
              )
            );

            }
        ),
      ),
    );
  }
}
