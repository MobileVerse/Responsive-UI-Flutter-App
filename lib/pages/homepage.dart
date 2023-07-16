import 'package:flutter/material.dart';
import '../helper/dimensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Page"),
      ),
      backgroundColor: currentWidth < mobileWidth
          ? Colors.deepPurple[400]
          : Colors.cyan[400],
      body: Container(
        child: Text("Hello world"),
      ),
    );
  }
}
