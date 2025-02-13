import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TextFiledCustom extends StatelessWidget {
  final String? hintText;
  Function(String)? onChange;
  late String? Function(String?)? validator;
  final String? errorText;
  TextInputType? keyboardType;

  List<TextInputFormatter>? inputFormatters;

  TextEditingController? controller;

  TextFiledCustom({
    super.key,
    this.hintText,
    this.onChange,
    this.errorText,
    this.validator,
    this.controller,
    this.inputFormatters,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.94,
        child: TextFormField(
          validator: validator,
          controller: controller,
          onChanged: onChange,
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          style: GoogleFonts.poppins(),
          decoration: InputDecoration(
              errorText: errorText,
              hintText: hintText,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(color: Colors.black, width: 1.0),
              )),
        ),
      ),
    );
  }
}
