import 'package:flutter/material.dart';
const Color disabledColor = Color.fromARGB(255, 127, 126, 126);
const Color enabledColor = Color.fromARGB(255, 11, 11, 11);

class NoneAboveCheckBox extends StatefulWidget {
  const NoneAboveCheckBox({super.key, required this.title, required this.disabled});
  final String title;
  final bool currentState = false;
  final Color currentColor = enabledColor;
  final bool disabled;
  

  @override
  State<StatefulWidget> createState()  => _NoneAboveCheckBox();
}

class _NoneAboveCheckBox extends State<NoneAboveCheckBox> {
  bool isChecked = false;

  _NoneAboveCheckBox();

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
        Text(widget.title, style: const TextStyle(fontSize: 12, color: enabledColor )),
      ],
    );
  }
}