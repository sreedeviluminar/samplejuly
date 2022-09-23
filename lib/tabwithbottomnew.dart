import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const String page1 = "Page 1";
const String page2 = "Page 2";
const String page3 = "Page 3";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Widget> _pages;
  late Widget _page1;
  late Widget _page2;
  late Widget _page3;

  late int _currentIndex;
  late Widget _currentPage;

  @override
  void initState() {
    super.initState();

    _page1 = Page1();
    _page2 = Page2();
    _page3 = Page3();

    _pages = [_page1, _page2, _page3];

    _currentIndex = 0;
    _currentPage = _page1;
  }

  void changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("tabbottom"),
      ),
      body: _currentPage,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => changeTab(index),
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                label:page1, icon: Icon(Icons.account_circle)),
            BottomNavigationBarItem(
                label:page2, icon: Icon(Icons.account_circle)),
            BottomNavigationBarItem(
                label: page3, icon: Icon(Icons.account_circle))
          ]),
      drawer: Drawer(
        child: Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: <Widget>[
              navigationItemListTitle(page1, 0),
              navigationItemListTitle(page2, 1),
              navigationItemListTitle(page3, 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget navigationItemListTitle(String title, int index) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.blue[400], fontSize: 22.0),
      ),
      onTap: () {
        Navigator.pop(context);
        changeTab(index);
      },
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(page1),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(page2),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(page3),
    );
  }
}