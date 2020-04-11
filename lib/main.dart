import 'package:flutter/material.dart';

const Color appBarColor = Color(0xFA37474F);

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
    appBar: AppBar(
      title: Text(
        "my first app",
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Gudea",
          fontWeight: FontWeight.normal,
          letterSpacing: 1.5,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.brown[700], 
      elevation: 0,
    ),
    body: Padding(
      padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'NAME',
            style:TextStyle(
              color:Colors.brown[800],
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold
            )
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Tamir',
            style:TextStyle(
              color:Colors.amberAccent[800],
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontSize: 28
            )
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'CURRENT NINJA LEVEL:',
            style:TextStyle(
              color:Colors.brown[800],
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold
            )
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '$level',
            style:TextStyle(
              color:Colors.amberAccent[800],
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontSize: 28
            )
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.brown[900],
              ),
              SizedBox(width: 10,),
              Text(
                "Tamir.ashke@gmail.com",
                style: TextStyle(
                  color: Colors.grey[900]
                ),
              )
            ],
          )
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        setState(() {
          level++;
        });
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.orangeAccent[100],
    ),
  );
  }
}

