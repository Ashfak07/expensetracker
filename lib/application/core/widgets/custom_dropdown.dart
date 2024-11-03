import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String? hint;
  final List<DropdownMenuItem<String>>? items;
  final ValueChanged<String?>? onChanged;
  final String? value;
  final Color borderColor;
  final double borderRadius;
  final EdgeInsets padding;

  const CustomDropdown({
    Key? key,
    this.hint,
    this.items,
    this.onChanged,
    this.value,
    this.borderColor = Colors.grey,
    this.borderRadius = 10.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 10),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: double.infinity, // Full width of the container
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: DropdownButton<String>(
        hint: Text(hint ?? "Select a Category"),
        value: value,
        isExpanded: true,
        items: items,
        onChanged: onChanged,
        underline: SizedBox(), // Remove the default underline
      ),
    );
  }
}
