import 'package:flutter/material.dart';
import '/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = "/fliter-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("your Filters"),
      ),
      drawer: MainDrawer(),
      body: Text("jrgkasjf"),
    );
  }
}
