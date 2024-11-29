import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  
final String? hintText;
final String? helperText;
final String? labelText;
final IconData? icon;
final IconData? suffixIcon;
final TextInputType? keyboardType;
final bool obscureText;
final String formProperty;
final Map<String,String> formValues;

  const CustomTextFormField({
    super.key, this.hintText, this.helperText, this.labelText, this.icon, this.suffixIcon, this.keyboardType, required this.obscureText, required this.formProperty, required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      //initialValue: 'Jose Oteros',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value){
        if(value!.length < 3){
          return 'Mínimo 3 caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: Icon(suffixIcon),
        icon: Icon(icon),
      ),
    );
  }
}