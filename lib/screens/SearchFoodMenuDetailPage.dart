
//========================================================================================
// 1) IMPORT
//========================================================================================
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//========================================================================================
// 2) ITEM PAGE
//========================================================================================
class SearchFoodMenuDetailPage extends StatefulWidget {
  //========================================================================================
  // DECLARE VAIRABLE (PRODUCTION NAME, PRODUCTION DESCRIPTION) ??? WIDGET.pdname
  //========================================================================================
  final String username;
  SearchFoodMenuDetailPage({Key key, @required this.username})
      : super(key: key);

  @override
  _SearchFoodMenuDetailPageState createState() => _SearchFoodMenuDetailPageState();
}

//========================================================================================
// 3) SHOW DATA
//========================================================================================
class _SearchFoodMenuDetailPageState extends State<SearchFoodMenuDetailPage> {
  String id = "Please wait...";
  String name = "";
  String description;
  String remark;
  //int price;

//========================================================================================
// 4) GET DATA FROM DB ?? YES
//========================================================================================
  @override
  void initState() {
    super.initState();
    Firestore.instance
        .collection("TM_FOOD_MENU")
        .document(widget.username) 
        .get()
        .then((value) {
      setState(() {
        id = value.data["id"];
        name = value.data["name"];
        description = value.data["description"];
        remark = value.data["remark"];
      });
    });
  }
//========================================================================================
// 4) GEN UI
//========================================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//========================================================================================
// 5) APP BAR
//========================================================================================      
      appBar: AppBar(
        title: Text('Menu ID: ' + widget.username,),
        backgroundColor: Colors.blue,
      ),
//========================================================================================
// 6) BODY
//========================================================================================      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//========================================================================================
// 7) SHOW TEXT (PRODUCT NAME)
//========================================================================================            
            Text(
 //========================================================================================
// 8) SHOW WIDGET.PRNAME
//========================================================================================                
              widget.username??'',      //??? WHERE FROM
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
            ),
            Text( id??'', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text( name??'', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),   
            Text( description??'', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text( remark??'', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),                      
          ],
        ),
      ),
    );
  }
}

