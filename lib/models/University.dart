
import 'package:isar/isar.dart';

part 'University.g.dart';

@Collection()
class University {
  Id? id = Isar.autoIncrement;

   String? universityName;

  @Index(unique: true)
   String? acronyms;
  @Index()
   String? logotype;


}
