import 'package:flutter/material.dart';
import 'package:hellotest03/screens/LayoutPage.dart';
import 'package:hellotest03/screens/LoginPage.dart';
import 'package:hellotest03/screens/MenuPage.dart';
import 'package:hellotest03/screens/SearchFoodMenuPage.dart';
import 'package:hellotest03/screens/SearchPage.dart';
import 'package:hellotest03/screens/SetDBFoodMenuPage.dart';
import 'package:hellotest03/screens/SignupPage.dart';
import 'package:hellotest03/screens/StackPage.dart';
import 'package:hellotest03/screens/UploadImagePage.dart';
import 'package:hellotest03/screens/MySignUpPage.dart';
import 'package:hellotest03/screens/MyResetPasswordPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page: 25.04.2020'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //===========================================================
  // 1) DECLARE VARIABLE
  //===========================================================   
  int _counter = 0;
  final _usernameController = TextEditingController();  
  //final _passwordController = TextEditingController();  


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      //===========================================================
      // SET DEFAULT VARIABLE
      //===========================================================      
      _usernameController.text = 'traitet@gmail.com'; 

    });
  }

  @override
  
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //============================================================================================
          // 1) HOW TO USE GOOGLE FIREBASE SERVICE
          //============================================================================================
          // REF: LINK TO GOOGLE FIREBASE:    https://medium.com/firebasethailand/flutter-x-firebase-cloud-firestore-29275799f6e9, https://console.firebase.google.com/     
          // 1) GO FIREBASE WEB, CREATE NEW APP, ADD ANDRIOD INPUT e.g. hellotest03.example.com copy from andrid,app,build.gradle, COPY "GOOGLE SERVICE" JSON FILE TO ANDRIOD/APP
          // 2) ADD line in build.gradle in folder andriod/app and andrid/app/GRADLE/build.gradle
          // 3) RESTART APP AND RUN TO verify installation
          // 4) Close or remove app, flutter clean
          //============================================================================================
          // 2) CREATE DATABASE
          //============================================================================================
          // 1) Create database e.g. catalog    
          // 2) Add permission (rule)
          // 3) Create Signup class/function (setData)
          // 4) Call signup      
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //================================================================
            // TEXT BOX 
            //================================================================                
            // TextFormField(decoration: InputDecoration(labelText: '*E-mail', prefixIcon: Icon(Icons.email)),controller: _usernameController),   
            // TextFormField(decoration: InputDecoration(labelText: 'Password', prefixIcon: Icon(Icons.vpn_key)),obscureText: true, controller: _passwordController,),     
            // RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage()),);}, child: Text('Login'),),                            
            //================================================================
            // BUTTON
            //================================================================            
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage(username: 'traitet@gmail.com',)),);}, child: Text('Menu Page'),),
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LayoutPage()),);}, child: Text('Layout Page'),),   
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => StackPage()),);}, child: Text('Stack Page'),),    
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(username: 'traitet@gmail.com',)),);}, child: Text('Search Page'),),    
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()),);}, child: Text('Signup Page'),),    
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SetDBFoodMenuPage()),);}, child: Text('Register Food Menu Page'),),                                                            
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SearchFoodMenuPage(username: 'traitet@gmail.com',)),);}, child: Text('Search Food Menu Page'),),       
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => UploadImagePage()),);}, child: Text('Upload Image'),),         
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);}, child: Text('Login'),),           
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MySignUpPage()),);}, child: Text('My Sign-up (google)'),),      
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyResetPasswordPage()),);}, child: Text('My Reset Password (google)'),),                                           
            //================================================================
            // TEXT
            //================================================================                
            Text(
              'You have pushed the button this many times: sadfasf',
            ),
            //================================================================
            // TEXT
            //================================================================              
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
