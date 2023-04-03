import 'package:flutter/material.dart';
import '/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = "/filter-screen";

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegan = false;
  bool _vegetarian = false;
  bool _lactoseFree = false;

  Widget _buildSwitchTile(String title, String subtitle, bool currentValue,
      Function(bool) updateValue) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        value: currentValue,
        onChanged:  updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Filters"),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Adjust your meal selection",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchTile(
                  "Gluten-Free",
                  "Only Gluten-free meals",
                  _glutenFree,
                  (newValue) {
                    setState(() {
                      _glutenFree = newValue;
                      print("Gluten value is $_glutenFree");

                    });
                  },
                ),
                _buildSwitchTile(
                  "Lactose-Free",
                  "Only Lactose-free meals",
                  _lactoseFree,
                  (newValue) {
                    setState(() {
                      _lactoseFree = newValue;
                      print("Lactose value is $_lactoseFree");

                    });
                  },
                ),
                _buildSwitchTile(
                  "Vegetarian",
                  "Only includes Vegetarian meals",
                  _vegetarian,
                  (newValue) {
                    setState(() {
                      _vegetarian = newValue;
                      print("Vegetarian value is $_vegetarian");

                    });
                  } ,
                ),
                _buildSwitchTile(
                  "Vegan",
                  "Only includes Vegan meals",
                  _vegan,
                  (newValue) {
                    setState(() {
                      _vegan = newValue;
                      print("Vegan value is $_vegan");
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
