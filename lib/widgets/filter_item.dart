import 'package:flutter/material.dart';

class FilterItem extends StatefulWidget {
  FilterItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.switchState,
  });

  final String title;
  final String subTitle;
  bool switchState;

  @override
  State<FilterItem> createState() => _FilterItemState();
}

class _FilterItemState extends State<FilterItem> {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: widget.switchState,
      onChanged: (bool isChecked) {
        setState(() {
          widget.switchState = isChecked;
        });
      },
      title: Text(
        widget.title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      subtitle: Text(
        widget.subTitle,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
  }
}
