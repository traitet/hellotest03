import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //============================================================
      // SCAFFOLD = APP BAR + BODY
      //============================================================      
      appBar: AppBar(title: Text('Layout Page'),),
      body: 
        SafeArea(child: ListView(
          children: <Widget>[
            //============================================================
            // 1) space
            //============================================================             
            SizedBox(height: 30), //SPACE
            //============================================================
            // 2) row
            //============================================================                  
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Expanded(child: Container(height: 50, color: Colors.red,)),
                Expanded(child: Container(height: 50, color: Colors.green,)),                
                Text('2.row 1'),
                Text('2.row 2'),
                Text('2.row 3'),     
              ],
            ),
            //============================================================
            // 3) space
            //============================================================                  
            SizedBox(height: 20),   //SPACE
            //============================================================
            // 4) row
            //============================================================                  
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Expanded(child: Text('4.row# 1.21434214'),),
                Expanded(child: Text('4.row# 2.214124124'),),  
                Expanded(child: Text('4. row# 3.fsa'),),                                                            
              ]
            ),  
            //============================================================
            // 5) space
            //============================================================      
             SizedBox(height: 20),    
            //============================================================
            // 6) space
            //============================================================                           
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,              
              children: <Widget>[
                Text('6. Column 1'),
                Text('6. Column 2'),
                Text('6. Column 3'),                
              ]
            ) 


          ],
          ),      
        )
    );
  }
}