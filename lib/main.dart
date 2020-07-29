import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> wadah = [];
  List<Widget> widgets = [];
  int counter = 1;
  _MyAppState() {
    for (int i = 0; i < 25; i++) {
      widgets.add(Text(
        "Data ke- " + i.toString(),
        style: TextStyle(fontSize: 45),
      ));
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      wadah.add(Text(
                        "Data ke - " + counter.toString(),
                        style: TextStyle(fontSize: 30),
                      ));
                      counter++;
                    });
                  },
                  child: Text("Tambah Data"),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      wadah.removeLast();
                      counter--;
                    });
                  },
                  child: Text("Hapus Data"),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: wadah,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Alhamdulillah",
                  style: TextStyle(fontSize: 40),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
