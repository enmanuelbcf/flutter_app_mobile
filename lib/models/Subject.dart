import 'package:app_schedule/models/University.dart';
import 'package:isar/isar.dart';

part 'Subject.g.dart';

@Collection()
class Subject {
  Id? id = Isar.autoIncrement;
  String? subjectName;
  String? day;
  String? horaEntrada;
  String? horaSalida;
  String? modalidad;
  String? aula;
  final univesity = IsarLink<University>();
}
