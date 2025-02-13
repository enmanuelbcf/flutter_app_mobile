import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class DropDownCustum extends StatelessWidget {
  final List<String> lista;

  const DropDownCustum({super.key, required this.lista});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: DropdownButtonFormField(
        style: GoogleFonts.poppins(color: Colors.black),
        decoration: InputDecoration(
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(color: Colors.black, width: 1.0),
            )),
        // value: lista!.first,
        // items: lista.map((value) {
        //   return DropdownMenuItem(value: value, child: Text(value.toString()));
        // }).toList(),
        items: const [
          DropdownMenuItem(value: 1, child: Text('valor')),
          DropdownMenuItem(value: 2, child: Text('valor2'))
        ],
        onChanged: (value) {},
      ),
    );
  }
}
