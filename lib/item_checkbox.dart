import 'package:flutter/material.dart';

class ItemCheckBox extends StatefulWidget {
  ItemCheckBox({super.key, required this.title, required this.itemKey, required this.index});
  final int index;
  final String title;
  final String itemKey;

  @override
  State<StatefulWidget> createState()  => _ItemCheckBox();
}

class _ItemCheckBox extends State<ItemCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
          visualDensity: const VisualDensity(horizontal: 2.0, vertical:-4.0),
        ),
        const SizedBox(width: 10, height: 5, ),
        Text(widget.title, style: const TextStyle(fontSize: 12, )),
      ],
    );
  }
}
