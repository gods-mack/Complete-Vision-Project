import 'package:flutter/material.dart';
import 'reusable-card.dart';
import 'icon-content.dart';
//import 'module/code_scan.dart';
import 'module/face_module.dart';
import 'ml_home.dart';
import 'aboutUsPage.dart';
import 'module/text_module.dart';
import 'aboutRobin.dart';
import 'module/label_detect.dart';
import 'module/codeScan.dart';
import 'module/realTime/Main.dart';



void main(){
  runApp(VisionApp());
}

class VisionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xFF1D1E33)
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(10,22,40,1),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Vision"),
        backgroundColor: Colors.black12,
        actions: <Widget>[
          Icon(Icons.search),SizedBox(width:10),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => MLHome()),
              );

            },
          ),SizedBox(width:8)],

      ),
      drawer: Drawer(
          child: ListView(
          children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Manish',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
            accountEmail: Text('manish-1004@outlook.com'),
            onDetailsPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutUs())
              );
            },
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/manish2.jpg'),
//              backgroundColor: Colors.grey,
//              child: Text("G",
//                style: TextStyle(fontSize: 40),),
              ),
            otherAccountsPictures: <Widget>[
               GestureDetector(
                 onTap: (){
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => AboutRobin())
                   );
                 },
                 child: CircleAvatar(
                  backgroundImage: AssetImage('images/robin.png'),
//              backgroundColor: Colors.grey,
//              child: Text("G",
//                style: TextStyle(fontSize: 40),),
              ),
               ),
            ],
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),

          ListTile(
            title: Text("About Us"),
            trailing: Icon(Icons.group),
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUs()),
            );
          },
         ),

          ],
         ),
      ),
    body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    //funciton
                    Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => LabelDetectWidget())
                    );
                  },
                  child: ReusableCard(colour: Color(0xFF1D1E33),
                    cardChild: IconContent(icon: Icons.search,
                        label: 'ObjectScan')
                  ),
                 ),
              ), //Object
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FaceDetectWidget()),
                    );
                  },
                  child: ReusableCard(colour: Color(0xFF1D1E33),
                    cardChild: IconContent(icon: const IconData(0xe901,fontFamily: 'face-recognition')
                        , label: 'FaceDetect')
                  ),
                ),
              ), // face
            ]
          )
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CodeDetectWidget()),
                      );
                    },
                    child: ReusableCard(colour: Color(0xFF1D1E33),
                      cardChild: IconContent(icon: Icons.code,
                        label: 'CodeScan')
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      //funciton
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VisionTextWidget()),
                      );
                    },
                    child: ReusableCard(colour: Color(0xFF1D1E33),
                      cardChild: IconContent(icon: Icons.text_format,
                        label: 'TextScan')
                    ),
                  ),
              ),

              ],
            ),
         ),
          Expanded(
            child: GestureDetector(
              onTap: (){
                //funciton
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );

              },
              child: ReusableCard(colour: Color(0xFF1D1E33),
                  cardChild: IconContent(icon: Icons.camera,
                  label: 'RealTime')
              ),
            ),
          ),
        ],
      )
    );
  }
}