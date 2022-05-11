import 'package:flutter/material.dart';
import 'input_decoration.dart';

class FormInputFields extends StatelessWidget {
  const FormInputFields(
      {Key? key,
      required this.size,
      required this.controller,
      required this.validator,
      required this.textInputType,
      required this.hintText})
      : super(key: key);

  final Size size;
  final TextEditingController controller;
  final FormFieldValidator validator;
  final String hintText;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.080,
      width: size.width,
      child: TextFormField(
        maxLength: 10,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        autofocus: false,
        controller: controller,
        keyboardType: textInputType,
        onSaved: (value) {
          controller.text = value!;
        },
        textInputAction: TextInputAction.next,
        validator: validator,
        decoration: inputDecoration(
          hintText,
          true,
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 15),
            child: Text(
              "(+91)",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}
