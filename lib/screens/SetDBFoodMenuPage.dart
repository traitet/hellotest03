//===========================================================
// 1) IMPORT
//===========================================================
import 'package:flutter/material.dart';
import 'package:hellotest03/services/LoggerService.dart';
import 'package:hellotest03/services/SetDBFoodMenu.dart';
import 'package:hellotest03/services/ShowNotification.dart';

//===========================================================
// 2) MAIN CLASS
//===========================================================
class SetDBFoodMenuPage extends StatefulWidget {
  @override
  _SetDBFoodMenuPageState createState() => _SetDBFoodMenuPageState();
  }

//===========================================================
// 3) MAIN UI
//===========================================================  
  class _SetDBFoodMenuPageState extends State<SetDBFoodMenuPage> {
      // final _usernameController = TextEditingController();
      final _idController = TextEditingController();
      final _nameController = TextEditingController();  
      final _descriptionController = TextEditingController();    
      final _priceController = TextEditingController();         
      final _remarkController = TextEditingController();  
      final String _dbCatalogName = "TM_FOOD_MENU"; 
              
    @override
    //=======================================================
    // 1) WIDGET
    //=======================================================
    Widget build(BuildContext context){
      return Scaffold(
        //===================================================
        // 2) APP BAR
        //===================================================      
        appBar: AppBar(title: Text("Maintain Food Menu"),),
        //===================================================
        // 3) BODY
        //===================================================              
        body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //======================================================================
            // 1) TEXT
            //======================================================================
            SizedBox(height: 40.0,),  
            Text('Dont worry. Register your account is only 1 minute.',),      
            Text('Just fill details below !!',),                    
             //=====================================================================
            // 2) TEXT CONTROL
            //======================================================================             
            TextFormField(decoration: InputDecoration(labelText: '*Menu ID', prefixIcon: Icon(Icons.email)),controller: _idController),
            TextFormField(decoration: InputDecoration(labelText: '*Menu Name', prefixIcon: Icon(Icons.near_me)),controller: _nameController,),
            TextFormField(decoration: InputDecoration(labelText: '*Menu Description', prefixIcon: Icon(Icons.vpn_key)),controller: _descriptionController),                         
            TextFormField(decoration: InputDecoration(labelText: 'Remark', prefixIcon: Icon(Icons.network_cell)),controller: _remarkController),
            TextFormField(decoration: InputDecoration(labelText: '*Price', prefixIcon: Icon(Icons.phone)),controller: _priceController,keyboardType: TextInputType.number,),                                    
         
             //=====================================================================
            // 3) BUTTON
            //======================================================================  
            SizedBox(height: 10.0,),  
                    RaisedButton(
                    child: Text("Register Menu"),
                    onPressed: () {
                      logger.i("username: " + _nameController.text);
                      logger.i("password" + _idController.text);                      
                      //===========================================================
                      // VALIDATE TEXT
                      //===========================================================
                      if (_nameController.text == "" || _idController.text == "") {showMessageBox(context, "Error","Please enter menu ID and Name",actions: [dismissButton(context)]); logger.e("ID or name can't be null");
                      } else {
                          setDBFoodMenu(
                            context,  
                            _dbCatalogName,                            
                            _idController.text, 
                            {"id": _idController.text, "name": _nameController.text,"description": _descriptionController.text,"remark": _remarkController.text ,"price": _priceController.text}
                          );
                      } // else
                    }, //onPressed
                  )       
          ])
        ),
      );
    }

  dismissButton(BuildContext context) {} //END WIDGET

  } //END CLASS

