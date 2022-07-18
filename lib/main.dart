import 'package:flutter/material.dart';
import 'package:rootzain/pages/first.dart';
import 'package:rootzain/pages/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RootZain',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(
        title: 'Manager',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("RootZain"),
            bottom: const TabBar(tabs: [
              Tab(
                text: "Upload",
              ),
              Tab(
                text: "Delete",
              ),
              Tab(
                text: "Photo",
              ),
            ]),
          ),
          body: const TabBarView(children: [
            Center(
              child: first(),
            ),
            Center(
              child: second(),
            ),
            Center(
              child: first(),
            )
          ]),
        ),
      );
}
