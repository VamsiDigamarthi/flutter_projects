import 'package:flutter/material.dart';
// import 'package:meals/screens/tab.dart';
// import 'package:meals/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FIlterScreenState();
  }
}

class _FIlterScreenState extends State<FilterScreen> {
  var _glutenFreeFIlterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFreeFilterSet = false;
  var _veganFreeFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Filters')),
      // drawer: MainDrawer(
      //   onSelectScreen: (identifier) {
      //     Navigator.of(context).pop();
      //     if (identifier == 'meals') {
      //       Navigator.of(context).push(
      //         MaterialPageRoute(
      //           builder: (ctx) => const TabScreen(),
      //         ),
      //       );
      //     }
      //   },
      // ),
      body: Column(
        children: [
          SwitchListTile(
            value: _glutenFreeFIlterSet,
            onChanged: (isChecked) {
              setState(() {
                _glutenFreeFIlterSet = isChecked;
              });
            },
            title: Text(
              "Gluten-free",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            subtitle: Text(
              "Only include gluten-free meals",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _lactoseFreeFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _lactoseFreeFilterSet = isChecked;
              });
            },
            title: Text(
              "Lactose-free",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            subtitle: Text(
              "Only include lactose-free meals",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _vegetarianFreeFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _vegetarianFreeFilterSet = isChecked;
              });
            },
            title: Text(
              "Vegiatble-free",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            subtitle: Text(
              "Only include vegitable-free meals",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _veganFreeFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _veganFreeFilterSet = isChecked;
              });
            },
            title: Text(
              "vegan-free",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            subtitle: Text(
              "Only include vegan-free meals",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          )
        ],
      ),
    );
  }
}
