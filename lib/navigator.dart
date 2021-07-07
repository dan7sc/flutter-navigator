import 'package:flutter/material.dart';

class NavigatorRaroAcademy extends StatefulWidget {
  NavigatorRaroAcademy({Key? key}) : super(key: key);

  @override
  _NavigatorRaroAcademyState createState() => _NavigatorRaroAcademyState();
}

class _NavigatorRaroAcademyState extends State<NavigatorRaroAcademy> {
  var count = 0;
  List<Widget> get pages => [
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
        if (count >= 1)
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
        if (count == 2)
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
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.grey),
              currentAccountPicture: CircleAvatar(),
              otherAccountsPictures: [
                CircleAvatar(),
              ],
              accountName: Text("Dan"),
              accountEmail: Text("dan@email.com"),
            ),
            ListTile(
              title: Text("Navegar"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Navigator(pages: [],),
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: count, onTap: nextPage, items: [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
        BottomNavigationBarItem(label: "Settings", icon: Icon(Icons.settings)),
      ]),
    );
  }
}
