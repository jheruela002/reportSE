import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: (HomePage())));
}

class HomePage extends StatefulWidget {
  @override
  Home createState() => Home();
}

class Home extends State<HomePage> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Column & Row with Random Widget"),
          backgroundColor: Colors.green,
          titleTextStyle: TextStyle(color: Colors.white)),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Row Widget",
              style: TextStyle(
                fontSize: 35,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.blue[400],
                  child: Text("Blue",
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              Container(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.deepOrange[600],
                  child: Text("Orange",
                      style: TextStyle(fontSize: 25, color: Colors.white)),
                ),
              ),
              Container(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.deepPurpleAccent[100],
                  child: Text("Purple",
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 10),
            child: Text(
              "Column Widget",
              style: TextStyle(
                fontSize: 35,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.blue[400],
                  child: Text("Blue",
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              Container(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.deepOrange[600],
                  child: Text("Orange",
                      style: TextStyle(fontSize: 25, color: Colors.white)),
                ),
              ),
              Container(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.deepPurpleAccent[100],
                  child: Text("Purple",
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow[700]),
                borderRadius: BorderRadius.circular(30),
              ),
              child: CheckboxListTile(
                title: const Text('alarm'),
                subtitle: const Text('7:30'),
                secondary: const Icon(Icons.code),
                autofocus: false,
                activeColor: Colors.yellow[800],
                checkColor: Colors.black26,
                selected: _value,
                value: _value,
                onChanged: (bool value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
