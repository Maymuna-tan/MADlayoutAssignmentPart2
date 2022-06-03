import 'package:flutter/material.dart';
import './Grid.dart';

void main() {
  runApp(const MaterialApp(
    home: My_App(),
  ));
}

// ignore: camel_case_types
class My_App extends StatefulWidget {
  const My_App({Key? key}) : super(key: key);

  @override
  _My_AppState createState() => _My_AppState();
}

// ignore: camel_case_types
class _My_AppState extends State<My_App> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 216, 216, 216),
        appBar: AppBar(
          title: const Center(child: Text('MY Home >')),
          bottom: const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              tabs: [
                Text(
                  'All',
                ),
                Text(
                  'Living',
                ),
                Text(
                  'Bedroom',
                )
              ]),
        ),
        // ignore: prefer_const_constructors
        body: const TabBarView(children: [
          Grid(),
          Grid(),
          Grid(),
        ]),
      ),
    );
  }
}
