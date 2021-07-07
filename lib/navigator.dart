import 'package:flutter/material.dart';

class NavigatorRaroAcademy extends StatefulWidget {
  NavigatorRaroAcademy({Key? key}) : super(key: key);

  @override
  _NavigatorRaroAcademyState createState() => _NavigatorRaroAcademyState();
}

class _NavigatorRaroAcademyState extends State<NavigatorRaroAcademy> {
  var count = 0;
  List<Widget> get pages => [
        Container(
          child: Center(
            child: Text("red"),
          ),
          color: Colors.red,
        ),
        if (count >= 1)
          Container(
            child: Center(
              child: Text("blue"),
            ),
            color: Colors.blue,
          ),
        if (count == 2)
          Container(
            child: Center(
              child: Text("green"),
            ),
            color: Colors.green,
          ),
      ];

  void nextPage(int value) {
    count = value;

    setState(() {});
    print(pages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        onPopPage: (route, result) {
          return route.didPop(result);
        },
        pages: pages.map((e) => MaterialPage(child: e)).toList(),
      ),
      bottomNavigationBar:
      BottomNavigationBar(currentIndex: count, onTap: nextPage, items: [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
        BottomNavigationBarItem(label: "Settings", icon: Icon(Icons.settings)),
      ]),
    );
  }
}
