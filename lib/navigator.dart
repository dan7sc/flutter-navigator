import 'package:flutter/material.dart';

class NavigatorRaroAcademy extends StatefulWidget {
  NavigatorRaroAcademy({Key? key}) : super(key: key);

  @override
  _NavigatorRaroAcademyState createState() => _NavigatorRaroAcademyState();
}

class _NavigatorRaroAcademyState extends State<NavigatorRaroAcademy> {
  var _count = 0;

  List<Page> get pages => [
    if (_count == 0)
      MaterialPage(
        child: Container(
          color: Colors.red,
        ),
      ),
    if (_count == 1)
      MaterialPage(
        child: Container(
          color: Colors.blue,
        ),
      ),
    if (_count == 2)
      MaterialPage(
        child: Container(
          color: Colors.green,
        ),
      ),
  ];

  void nextPage() {
    if (_count == 2) {
      _count = 0;
    } else {
      _count++;
    }
    setState(() {});
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
