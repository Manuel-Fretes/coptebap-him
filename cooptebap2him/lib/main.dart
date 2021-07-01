import 'package:flutter/material.dart';
import 'menu.dart';
import 'menudes.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Coopteba Demo',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _login(),
    );
  }
}

class _login extends StatefulWidget{
  @override
  __loginState createState() => __loginState();
}


class __loginState extends State<_login> {
  TextEditingController email =new TextEditingController();
  TextEditingController pass =new TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      body: Container(
        decoration: BoxDecoration(
            color: Colors.blue.shade200,
            borderRadius: BorderRadius.circular(20)
        ),
        margin: EdgeInsets.only(top: 65, left: 20,right: 20, bottom: 50),
        padding: EdgeInsets.only(left: 20,right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/img/coptelogo.png",height: 150,),
              SizedBox(height: 20),
              TextField(
                controller: email,
                decoration: InputDecoration(
                    hintText: "juanperez@gmail.com"
                ),
              ),
              SizedBox(height: 50),
              TextField(
                controller: pass,
                obscureText: true,
                decoration: InputDecoration(
                    hintText:"Contraseña"
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                width:200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                ),
                // ignore: deprecated_member_use
                child: FlatButton(
                  child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Menudes()));
                  },
                ),
              ),
              SizedBox(height: 100),
              Text("¿No tenés cuenta? Registrarse")

            ],
          ),
        ),
      ),
    );
  }
}
