import 'package:flutter/material.dart';

class AboutRobin extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home : Scaffold(
          backgroundColor: Color(0xFF1D1E33),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black12,
            title : Text("Team"),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              tooltip: 'Back',
              onPressed: () {
                Navigator.pop(context);
              },
            ),

          ),
          body : Center (

            child : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/robin.png'),
                ),
                Text("Robin ",
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                      color: Colors.white
                  ),
                ),
                Text("SOFTWARE DEVELOPER",
                  style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                      color: Colors.white30,
                      letterSpacing : 2.5,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 210,
                  child: Divider(
                    color: Colors.white30,
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(8.0),
                    color: Colors.white30,
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 45),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          size: 19,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text("+91-9818896967",
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 19,
                            color: Colors.white,

                          ),
                        )
                      ],
                    )
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 45),
                  color: Colors.white30,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        size: 19,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("robinraj.raj19@gmail.com",
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 17,
                          color: Colors.white,

                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 45),
                  color: Colors.white30,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.code,
                        size: 19,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("github.com/gods-mack",
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 17,
                          color: Colors.white,

                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),


          ),

        )
    );
  }

}