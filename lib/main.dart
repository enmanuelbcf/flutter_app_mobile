import 'package:app_schedule/models/NotesProvider.dart';
import 'package:app_schedule/models/Subject.dart';
import 'package:app_schedule/models/SubjectProvider.dart';
import 'package:app_schedule/providers/UniversityValidation.dart';
import 'package:app_schedule/services/Routes.dart';
import 'package:app_schedule/widgets/Utlis.dart';
import 'package:app_schedule/models/University.dart';
import 'package:app_schedule/models/UniversityProvider.dart';
import 'package:app_schedule/services/isarServices.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isar/isar.dart';
import 'package:provider/provider.dart';
import 'dart:io';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => UniversityProvider()),
    ChangeNotifierProvider(create: (context) => Subjectprovider()),
    ChangeNotifierProvider(create: (context) => Universityvalidation()),
    ChangeNotifierProvider(create: (context) => Notesprovider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool ordenador = true;
    final universityData = context.watch<UniversityProvider>();
    final subject = context.read<Subjectprovider>();
    final subjectData = context.watch<Subjectprovider>();
    List<University> universities = universityData.universities;
    universityData.fecthUniversities();

    // universityData.delete();
    return MaterialApp(
      routes: routes,
      home: Scaffold(
        appBar: Menu(ordenar: true),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                child: Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 16),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Image.asset('assets/img/emely.jpg'))),
                      Expanded(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                              
                            ),
                            Text('EMELY YANIL DÍAZ',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 13)),
                            Expanded(
                              child: Text('Estudiante',
                                  style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w200)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: universities.isEmpty
                  ? Center(
                      child: SizedBox(
                        child: Image.asset(
                          'assets/img/no_data.png',
                          width: 300,
                          height: 300,
                        ),
                      ),
                    )
                  : subjectData.ordenar
                      ? Builder(builder: (context) {
                          List<Subject> subjectsOrder = subjectData.subjects;
                          subjectData.getAllSubject();
                          return ListView.builder(
                            shrinkWrap: true,
                            itemCount: subjectsOrder.length,
                            itemBuilder: (BuildContext context, int index) {
                              final subjectlista = subjectsOrder[index];
                              print(
                                  subjectlista.univesity.value?.universityName);
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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('UNIVERSIDAD: ',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w300)),
                                              Text(
                                                  subjectlista.univesity.value
                                                          ?.acronyms!
                                                          .toUpperCase() ??
                                                      '',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis),
                                              Text('ASIGNATURA: ',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w300)),
                                              Text(
                                                  subjectlista.subjectName!
                                                      .toUpperCase()
                                                      .toString(),
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis),
                                              Text('DÍA: ',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w300)),
                                              Text(
                                                  obtenerDiaSemana(
                                                      subjectlista.day!),
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              Text('HORARIO ENTRADA: ',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w300)),
                                              Text(
                                                  subjectlista.horaEntrada!
                                                      .toUpperCase()
                                                      .toString(),
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              Text('HORARIO SALÍDA: ',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w300)),
                                              Text(
                                                  subjectlista.horaSalida!
                                                      .toUpperCase()
                                                      .toString(),
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              Text('MODALIDAD: ',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w300)),
                                              Text(
                                                  subjectlista.modalidad!
                                                      .toUpperCase()
                                                      .toString(),
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              Text('AULA: ',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w300)),
                                              Text(
                                                  subjectlista.aula != null
                                                      ? subjectlista.aula!
                                                          .toUpperCase()
                                                          .toString()
                                                      : 'PA',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        })
                      : ListView.builder(
                          itemCount: universities.length,
                          itemBuilder: (context, index) {
                            final university = universities[index];

                            return Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: ListTile(
                                leading: university.logotype!.isEmpty
                                    ? Image.asset('assets/img/no_data.png')
                                    : Image.file(
                                        File(university.logotype.toString())),
                                title: Text(university.acronyms!.toUpperCase(),
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                subtitle: Text(
                                    university.universityName!.toUpperCase(),
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 11)),
                                trailing: const Icon(Icons.chevron_right),
                                onTap: () {
                                  Map<String, dynamic> datos = {
                                    'id': university.id!,
                                    'name': university.acronyms!
                                  };
                                  Navigator.pushNamed(
                                      context, Routes.pageSubject,
                                      arguments: datos);
                                },
                                onLongPress: () {
                                  newMethod(context, universityData, university,
                                      subject);
                                },
                              ),
                            );
                          },
                        ),
            )
          ],
        ),
        floatingActionButton: Builder(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                  heroTag: 'btn1',
                  backgroundColor: const Color.fromARGB(255, 241, 149, 0),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.pageAddUniversity);
                  }),
              const SizedBox(height: 10),
            ],
          );
        }),
      ),
    );
  }

  Future<dynamic> newMethod(
      BuildContext context,
      UniversityProvider universityData,
      University university,
      Subjectprovider subject) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Eliminar está Universidad',
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
              onPressed: () {
                universityData.delete(id: university.id!);
                subject.deleteAll();
                Navigator.of(context).pop(true); // Retorna true
              },
            ),
          ],
        );
      },
    );
  }
}
