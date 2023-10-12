import 'package:flutter/material.dart';
import 'package:meals/widgets/filter_item.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  final bool _gluterFreeFilterSet = false;
  final bool _lactoseFreeFilterSet = false;
  final bool _vegetarianFilterSet = false;
  final bool _veganFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(
      //   onSelectScreen: (String identifier) {
      //     Navigator.of(context).pop();
      //     if (identifier == 'meals') {
      //       Navigator.pushReplacement(
      //           context, MaterialPageRoute(builder: (_) => const TabsScreen()));
      //     }
      //   },
      // ),
      body: Column(
        children: [
          FilterItem(
            title: 'Gluter-free',
            subTitle: 'Only include glutern-free meals.',
            switchState: _gluterFreeFilterSet,
          ),
          FilterItem(
            title: 'Lactose-free',
            subTitle: 'Only include lactose-free meals.',
            switchState: _gluterFreeFilterSet,
          ),
          FilterItem(
            title: 'Vegetarian',
            subTitle: 'Only include vegetarian meals.',
            switchState: _gluterFreeFilterSet,
          ),
          FilterItem(
            title: 'Vegan',
            subTitle: 'Only include vegan meals.',
            switchState: _gluterFreeFilterSet,
          )
        ],
      ),
    );
  }
}
