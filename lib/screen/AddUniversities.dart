import 'dart:io';

import 'package:app_schedule/providers/UniversityValidation.dart';
import 'package:app_schedule/services/ImagenServices.dart';
import 'package:app_schedule/models/UniversityProvider.dart';
import 'package:app_schedule/services/Routes.dart';
import 'package:app_schedule/widgets/Utlis.dart';
import 'package:app_schedule/widgets/TextfliedCustom.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class PageUniversities extends StatelessWidget {
  const PageUniversities({super.key});

  @override
  Widget build(BuildContext context) {
    File file;
    String urlImage = '';
    String universidaname = '';
    String acronimoname = '';

    final validationText = context.read<Universityvalidation>();
    final textWatch = context.watch<Universityvalidation>();
    final _formkey = GlobalKey<FormState>();
    final _ControllerAcronys = TextEditingController();
    final _ControllerName = TextEditingController();

    void imagePiker() async {
      ImagePicker picker = ImagePicker();
      final imagepiker = await picker.pickImage(source: ImageSource.gallery);

      if (imagepiker == null) return;

      file = File(imagepiker.path);
      final saveImage = ImagenServices(file: file);

      urlImage = await saveImage.saveImage(name: imagepiker.name);
    }

    return Scaffold(
        appBar: Menu(),
        body: SizedBox(
            child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('AGERGAR UNIVERSIDADES',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold)),
              )
            ],
          ),
          Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFiledCustom(
                    controller: _ControllerAcronys,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'El campo es requerido';
                      }
                      return null;
                    },
                    hintText: 'Acronimo',
                  ),
                  TextFiledCustom(
                    controller: _ControllerName,
                    hintText: 'Nombre de Universidad',
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'El campo es requerido';
                      }
                      return null;
                    },
                  ),
                ],
              )),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      imagePiker();
                    },
                    child: Text('SELECIONAR LOGO',
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.bold))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Builder(builder: (context) {
                  return ElevatedButton(
                      onPressed: () async {
                        if (_formkey.currentState!.validate() == true) {
                          final university = UniversityProvider();
                          final data = await university.addUniversity(
                              name: _ControllerName.text,
                              logo: urlImage,
                              acrony: _ControllerAcronys.text);
                          if (data['Codigo'] == '200') {
                            // ignore: use_build_context_synchronously
                            Navigator.pushReplacementNamed(
                                context, Routes.pageHome);
                          } else {
                            if (data['Codigo'] == '101') {}
                          }
                        }
                      },
                      child: Text('GUARDAR',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold)));
                }),
              )
            ],
          ))
        ])));
  }
}
