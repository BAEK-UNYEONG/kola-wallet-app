import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInput extends StatelessWidget {
  final String label;
  final String initialValue;
  final TextInputType textInputType;
  final bool autofocus;

  const TextInput({
    required this.label,
    required this.initialValue,
    required this.textInputType,
    required this.autofocus,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              child: Text(
                label,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: renderTextField(),
        ),
      ],
    );
  }

  Widget renderTextField() {
    return TextFormField(
      cursorColor: Colors.grey,
      keyboardType: textInputType,
      initialValue: initialValue,
      autofocus: autofocus,
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.grey[300],
      ),
    );
  }
}
