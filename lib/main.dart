import 'package:flutter/material.dart';
import 'package:render_object/custom_expanded.dart';

import 'custom_column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomColumn(
        children: [
          CustomExpanded(
            flex: 2,
            child: SizedBox(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'This is a custom render object widget.',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'This is a custom render object widget.',
            ),
          ),
          CustomExpanded(
            flex: 1,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
