import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    const List<Widget> _pages = <Widget>[
      Icon(
        Icons.call,
        size: 150,
      ),
      Icon(
        Icons.camera,
        size: 150,
      ),
      Icon(
        Icons.chat,
        size: 150,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(' tabbar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Llamar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camara',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Charlar',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped, //New
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
    );
  }
}
