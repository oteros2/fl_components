import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  
final String? hintText;
final String? helperText;
final String? labelText;
final IconData? icon;
final IconData? suffixIcon;

  const CustomTextFormField({
    super.key, this.hintText, this.helperText, this.labelText, this.icon, this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      //initialValue: 'Jose Oteros',
      textCapitalization: TextCapitalization.words,
      onChanged: (value){
        print('value: $value');
      },
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