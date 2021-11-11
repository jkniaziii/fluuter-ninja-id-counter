import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1623913519265-1974e1e90bd2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80"),
                radius: 30,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Text(
              "NAME",
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              "Abbas",
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            SizedBox(height: 30),
            Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              "$ninjaLevel",
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  'abbas@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Row(children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() {
                    ninjaLevel += 1;
                  });
                },
                child: Icon(Icons.add),
                color: Colors.green,
                textColor: Colors.white,
              ),
              SizedBox(width: 10),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    ninjaLevel -= 1;
                  });
                },
                child: Icon(Icons.remove),
                color: Colors.red,
                textColor: Colors.white,
              ),
            ])
          ],
        ),
      ),
    );
  }
}
