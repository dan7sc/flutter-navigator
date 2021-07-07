import 'package:flutter/material.dart';

class NavigatorRaroAcademy extends StatefulWidget {
  NavigatorRaroAcademy({Key? key}) : super(key: key);

  @override
  _NavigatorRaroAcademyState createState() => _NavigatorRaroAcademyState();
}

class _NavigatorRaroAcademyState extends State<NavigatorRaroAcademy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Navigator(
        pages: [
          MaterialPage(
            child: Container(
              color: Colors.red,
            ),
          ),
          MaterialPage(
            child: Container(
              color: Colors.blue,
            ),
          ),
          MaterialPage(
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
