import 'package:flutter/material.dart';
import 'package:navigator/home/widgets/drawer_widget.dart';
import 'package:navigator/shared/navigator/navigator_builder.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerWidget(),
      body: NavigatorBuilder(
        pages: [
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              elevation: 0,
            ),
            body: Container(
              child: Center(
                child: Text("red"),
              ),
              color: Colors.red,
            ),
          ),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              elevation: 0,
            ),
            body: Container(
              child: Center(
                child: Text("blue"),
              ),
              color: Colors.blue,
            ),
          ),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              elevation: 0,
            ),
            body: Container(
              child: Center(
                child: Text("green"),
              ),
              color: Colors.green,
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: 0, items: [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
        BottomNavigationBarItem(label: "Settings", icon: Icon(Icons.settings)),
      ]),
    );
  }
}
