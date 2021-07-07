import 'package:flutter/material.dart';

class NavigatorRaroAcademy extends StatefulWidget {
  NavigatorRaroAcademy({Key? key}) : super(key: key);

  @override
  _NavigatorRaroAcademyState createState() => _NavigatorRaroAcademyState();
}

class _NavigatorRaroAcademyState extends State<NavigatorRaroAcademy> {
  var count = 0;
  List<Page> pages = [];

  void nextPage() {
    if (count == 2) {
      count = 0;
    } else {
      count++;
    }
    setState(() {});
    initState();
  }

  @override
  void initState() {
    pages = [
      if (count == 0)
        MaterialPage(
          child: Container(
            child: Center(
              child: Text("red"),
            ),
            color: Colors.red,
          ),
        ),
      if (count == 1)
        MaterialPage(
          child: Container(
            child: Center(
              child: Text("blue"),
            ),
            color: Colors.blue,
          ),
        ),
      if (count == 2)
        MaterialPage(
          child: Container(
            child: Center(
              child: Text("green"),
            ),
            color: Colors.green,
          ),
        ),
    ];
    super.initState();
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
        pages: List.from(pages),
      ),
    );
  }
}
