import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Signup Page'),),
      body: SafeArea(child: Column(
        children: <Widget>[
            TextFormField(decoration: InputDecoration(labelText:'E-mail', prefixIcon: Icon(Icons.email)),),
            TextFormField(decoration: InputDecoration(labelText:'Full Name', prefixIcon: Icon(Icons.near_me)),),    
            TextFormField(decoration: InputDecoration(labelText:'Mobile No', prefixIcon: Icon(Icons.phone)),),   
            TextFormField(decoration: InputDecoration(labelText:'Password', prefixIcon: Icon(Icons.vpn_key)),),      
            TextFormField(decoration: InputDecoration(labelText:'Line ID', prefixIcon: Icon(Icons.network_cell)),),   
            TextFormField(decoration: InputDecoration(labelText:'Company', prefixIcon: Icon(Icons.home)),),   
            RaisedButton(onPressed: (){},child: Text('SAVE'),),                
        ],
      )
      ),
      
    );
  }
}