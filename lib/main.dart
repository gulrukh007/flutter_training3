import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: flutter_training(),
  ));
}

class flutter_training extends StatefulWidget {
  const flutter_training({Key? key}) : super(key: key);

  @override
  State<flutter_training> createState() => _flutter_trainingState();
}

class _flutter_trainingState extends State<flutter_training> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter_Training_INIDAN_ANDROID'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children:<Widget>[
            Container(
              color: Colors.white70,
              padding: EdgeInsets.all(1),
              child: Center(
                child: Text('A'),
               // icon: Icon( Icons.favorite),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(1),
                color: Colors.white70,
                child: Text('c'),),
            ),

            Row(
              children: [
                Container(
                  color: Colors.deepOrangeAccent,
                  padding: EdgeInsets.fromLTRB(25, 10, 10, 10),
                  child: ElevatedButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.add_chart),
                      label: Text("Sweets")),
                  ),

                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10,10,10,10),
                    color: Colors.red,
                    child: ElevatedButton.icon(
                        onPressed: null,
                        icon: Icon(Icons.favorite),
                        label: Text("Barfi")),
                    ),
                  ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10,10,10,10),
                    color: Colors.blueAccent,
                    child: ElevatedButton.icon(
                        onPressed: null,
                        icon: Icon(Icons.add),
                        label: Text("Cream")),
                    ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}

