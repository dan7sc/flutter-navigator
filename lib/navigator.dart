import 'package:flutter/material.dart';

class NavigatorRaroAcademy extends StatefulWidget {
  NavigatorRaroAcademy({Key? key}) : super(key: key);

  @override
  _NavigatorRaroAcademyState createState() => _NavigatorRaroAcademyState();
}

class _NavigatorRaroAcademyState extends State<NavigatorRaroAcademy> {
  var count = 0;
  List<Widget> get pages => [
        if (count == 0)
          Container(
            child: Center(
              child: Text("red"),
            ),
            color: Colors.red,
          ),
        if (count == 1)
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

  void nextPage() {
    if (count == 2) {
      count = 0;
    } else {
      count++;
    }
    setState(() {});
    print(pages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: nextPage,
      ),
      body: Navigator(
        onPopPage: (route, result) {
          return route.didPop(result);
        },
        pages: pages.map((e) => MaterialPage(child: e)).toList(),
      ),
    );
  }
}
