import 'package:flutter/material.dart';
import 'calendario.dart';
import 'finanzas.dart';
import 'menu.dart';
class Menudes extends StatefulWidget{
  MenudesState createState() => MenudesState();
}
class MenudesState extends State <Menudes>{
  int _selectDrawerItem = 0;
  _getDrawerItemwidget(int pos){
    switch(pos){
      case 0: return menu();
      case 1: return calendario();
      case 2: return finanzas();
    }
  }
  _onSelectItem(int pos){
    // ignore: unnecessary_statements
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Coopteba H.I.M"), backgroundColor: Colors.blueAccent,),
      drawer: Drawer(
        child: ListView(
          children: <Widget> [
            UserAccountsDrawerHeader(
              accountName: Text('Juan Peréz'),
              accountEmail: Text('juan.perez@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.lightBlueAccent.shade100,
                child: Text('J', style:TextStyle( fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: Text('INICIO'),
              leading: Icon(Icons.home_rounded),
              onTap: (){
                _onSelectItem(0);
              },
            ),
            ListTile(
              title: Text('CALENDARIO'),
              leading: Icon(Icons.date_range_rounded),
              onTap: (){
                _onSelectItem(1);
              },
            ),
            ListTile(
              title: Text('FINANZAS'),
              leading: Icon(Icons.account_balance_wallet_rounded),
              onTap: (){
                _onSelectItem(2);
              },
            ),
            ListTile(
              title: Text('SEGUIMIENTOS'),
              leading: Icon(Icons.domain_rounded),
              onTap: (){
              },
            ),
            ListTile(
              title: Text('CAPACITACIONES'),
              leading: Icon(Icons.menu_book_rounded),
              onTap: (){
              },
            ),
            ListTile(
              title: Text('CONTACTOS'),
              leading: Icon(Icons.phone_rounded),
              onTap: (){
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemwidget(_selectDrawerItem),
    );
  }
}
