import 'package:flutter/material.dart';

class TextCheckboxWidget extends StatelessWidget {
  final String text;
  final bool isChecked;
  final void Function(bool?)? onChanged;

  const TextCheckboxWidget({
    Key? key,
    required this.text,
    required this.isChecked,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(text, style: theme.textTheme.bodyLarge),
        ),
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
        ),
      ],
    );
  }
}