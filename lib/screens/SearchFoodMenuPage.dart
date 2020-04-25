//============================================================================
// 1) IMPORT
//============================================================================
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//import 'SearchDetailPage.dart';
import 'SearchFoodMenuDetailPage.dart';

//===========================================================
// 2) MAIN CLASS
//===========================================================
class SearchFoodMenuPage extends StatefulWidget {
      //=======================================================
    // 1) ARAMETER AND CONSTUCTURE METHOD
    //=======================================================
    final String username;
      SearchFoodMenuPage({Key key, @required this.username,})
      : super(key: key);
  @override
  _SearchFoodMenuPageState createState() => _SearchFoodMenuPageState();
  }

//========================================================================================
// 3) CREATE UI
//========================================================================================
class _SearchFoodMenuPageState extends State<SearchFoodMenuPage> {
  @override
  void initState() {
    super.initState();
  }
//========================================================================================
// 4) CREATE WIDGET
//========================================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //==================================================================================
      // APP BAR
      //==================================================================================
        appBar: AppBar(
          title: Text("Search Food Menu"),
        ),
      //==================================================================================
      // BODY
      //==================================================================================        
        body: StreamBuilder(
      //==================================================================================
      // GET DATA FROM API
      //==================================================================================          
          stream: Firestore.instance.collection("TM_FOOD_MENU").snapshots(),
          builder: (context, snapshot) {
            //============================================================================
            // IF NO DATA
            //============================================================================            
            if (!snapshot.hasData) {
              return Center(
                child: Column(
                  children: <Widget>[
                    //====================================================================
                    // LOADNING....
                    //====================================================================                     
                    CircularProgressIndicator(),
                    Text("Loading . . . "),
                  ],
                ),
              );
            //============================================================================
            // IF HAVE DATA
            //============================================================================               
            } else {
              return ListView.builder(
                //========================================================================
                // 1) SET LIST VIEW LENGTH
                //========================================================================                 
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    //====================================================================
                    // UI: CARD
                    //====================================================================                      
                    child: Card(
                        child: Container(                       
                        child: InkWell(
                          onTap: () {
                            //============================================================
                            // CLICK EVENT: GO ITEM_PAGE
                            //============================================================                              
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SearchFoodMenuDetailPage( 
                                          username: snapshot
                                              .data.documents[index].documentID,
                                        )));
                          },                   
                            child: Column(
                              children: <Widget>[                                 
                                ListTile(
                                title: Text(snapshot.data.documents[index].documentID),
                                subtitle: Text(snapshot.data.documents[index].data["description"]),
                                ),
                              ],
                            ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
        );
  }
}
