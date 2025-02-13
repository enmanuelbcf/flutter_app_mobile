import 'package:isar/isar.dart';

part 'Usuario.g.dart'

@Collection()
class Usuario{
 Id? id = Isar.autoIncrement;
 String name = '';
 String lastName = '';
 String? foto;
}