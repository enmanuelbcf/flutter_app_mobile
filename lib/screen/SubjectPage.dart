import 'package:app_schedule/models/Subject.dart';
import 'package:app_schedule/models/SubjectProvider.dart';
import 'package:app_schedule/models/UniversityProvider.dart';
import 'package:app_schedule/services/Routes.dart';
import 'package:app_schedule/widgets/TextfliedCustom.dart';
import 'package:app_schedule/widgets/Utlis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Subjectpage extends StatelessWidget {
  const Subjectpage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> mapa =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: Menu(),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(6),
                child: Text('DETALLES - ${mapa['name']} '.toUpperCase(),
                    style: GoogleFonts.poppins(
                        fontSize: 26, fontWeight: FontWeight.bold)),
              )
            ],
          ),
          Builder(builder: (context) {
            final subject = context.watch<Subjectprovider>();
            final subjectRead = context.read<Subjectprovider>();
            final List<Subject> subjects = subject.subjects;
            subject.getSubjectForUnivertisy(id: mapa['id']);
            return Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: subjects.length,
                itemBuilder: (BuildContext context, int index) {
                  final subjectDatas = subjects[index];
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      color: Colors.white,
                      elevation: 2.5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('NOMBRE: ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300)),
                                  Text(
                                      subjectDatas.subjectName!
                                          .toUpperCase()
                                          .toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis),
                                  Text('DÍA: ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300)),
                                  Text(
                                      obtenerDiaSemana(subjectDatas.day!) ,
                                      style: GoogleFonts.poppins(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400)),
                                  Text('HORARIO ENTRADA: ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300)),
                                  Text(
                                      subjectDatas.horaEntrada!
                                          .toUpperCase()
                                          .toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400)),
                                  Text('HORARIO SALÍDA: ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300)),
                                  Text(
                                      subjectDatas.horaSalida!
                                          .toUpperCase()
                                          .toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400)),
                                  Text('MODALIDAD: ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300)),
                                  Text(
                                      subjectDatas.modalidad!
                                          .toUpperCase()
                                          .toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400)),
                                  Text('AULA: ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300)),
                                  Text(
                                      subjectDatas.aula != null
                                          ? subjectDatas.aula!
                                              .toUpperCase()
                                              .toString()
                                          : 'PA',
                                      style: GoogleFonts.poppins(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400)),
                                  // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      _showModal(context, subjectDatas);
                                    },
                                    icon: const Icon(Icons.edit,
                                        size: 20, color: Colors.blueGrey),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        _mostrarDialog(
                                            context, subjectDatas, subjectRead);
                                      },
                                      icon: const Icon(
                                        Icons.delete,
                                        size: 20,
                                        color: Colors.blueGrey,
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 241, 149, 0),
          child: const Icon(
            Icons.add,
          ),
          onPressed: () {
            Navigator.pushNamed(context, Routes.pageAddSubject,
                arguments: mapa['id']);
          }),
    );
  }

  Future<dynamic> _mostrarDialog(
      BuildContext context, Subject subjectData, Subjectprovider subjectRead) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Eliminar está Asignatura',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300, fontSize: 16)),
          content: Text('¿Estás seguro de que quieres continuar?',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w200, fontSize: 16)),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 16)),
              onPressed: () {
                Navigator.of(context).pop(false); // Retorna false
              },
            ),
            TextButton(
              child: Text('Aceptar',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 16)),
              onPressed: () async {
                final id = subjectData.id!;
                await subjectRead.deleteSubject(id: id);
                Navigator.of(context).pop(true); // Retorna true
              },
            ),
          ],
        );
      },
    );
  }

  Future<dynamic> _showModal(BuildContext context, Subject subjectData) {
    final _keyform = GlobalKey<FormState>();
    final _controllerName =
        TextEditingController(text: subjectData.subjectName);
    final _controllerAula = TextEditingController(text: subjectData.aula);
    final subjectProvider = context.read<Subjectprovider>();

    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 600,
            width: double.infinity,
            child: Form(
              key: _keyform,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Editar - ${subjectData.subjectName}',
                      style: GoogleFonts.poppins(
                          fontSize: 26, fontWeight: FontWeight.w300),
                    ),
                  ),
                  TextFiledCustom(
                      hintText: 'Asignatura',
                      controller: _controllerName,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'El campo es requerido';
                        }
                        return null;
                      }),
                  TextFiledCustom(
                    hintText: 'Aula',
                    controller: _controllerAula,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FilledButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Regresar',
                                  style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w300))),
                          const SizedBox(width: 10),
                          FilledButton(
                              onPressed: () {
                                if (_keyform.currentState!.validate()) {
                                  subjectProvider.editSubject(
                                      id: subjectData.id!,
                                      name: _controllerName.text,
                                      aula: _controllerAula.text.isNotEmpty &&
                                              !_controllerAula.text
                                                  .startsWith(' ')
                                          ? _controllerAula.text
                                          : null);
                                  Navigator.pop(context);
                                }
                              },
                              child: Text('Guardar',
                                  style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w300)))
                        ]),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
