import 'package:isar/isar.dart';

part 'Note.g.dart';


@Collection()
class Note {
  Id id = Isar.autoIncrement;
  String? noteName;
  String? body;
  String? dateAdd;
  String? datemodify;
}
