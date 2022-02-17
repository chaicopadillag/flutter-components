import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String inputName;
  final Map<String, String> formValues;

  const CustomTextFormField({
    required this.inputName,
    required this.formValues,
    this.obscureText = false,
    Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.prefixIcon,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: obscureText,
      onChanged: (value) {
        formValues[inputName] = value;
      },
      validator: (value) {
        if (value == null) return 'Please enter some text';

        return value.length < 3 ? 'Text too short 3 character' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
      ),
    );
  }
}
