import 'package:flutter/material.dart';

class NavigatorBuilder extends StatefulWidget {
  final List<Widget> pages;
  NavigatorBuilder({Key? key, required this.pages}) : super(key: key);

  @override
  _NavigatorBuilderState createState() => _NavigatorBuilderState();
}

class _NavigatorBuilderState extends State<NavigatorBuilder> {
  var index = 0;

  final currentPages = <Widget>[];

  void nextPage(int value) {
    index = value;
    currentPages.add(widget.pages[index]);
    setState(() {});
  }

  void backPage() {
    index--;
    currentPages.add(widget.pages[index]);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onPopPage: (route, result) {
        if (route.didPop(result)) {
          backPage();
          return true;
        } else {
          return false;
        }
      },
      pages: widget.pages.map((e) => MaterialPage(child: e)).toList(),
    );
  }
}
