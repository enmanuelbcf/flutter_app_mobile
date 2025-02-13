import 'package:app_schedule/models/Note.dart';
import 'package:app_schedule/models/Subject.dart';
import 'package:app_schedule/services/isarServices.dart';
import 'package:flutter/material.dart';

class Notesprovider with ChangeNotifier {
  String? _body;

  get body => _body;

  Future<void> saveNote(String? data) async {
    final isar = await IsarServices().db;
    final datosNotas = Note();
    final datos = await isar.notes.get(1);

    if (datos == null) {
      datosNotas.body = data;
      await isar.writeTxn(() => isar.notes.put(datosNotas));
    } else {
      datosNotas.body = datosNotas.body! + data.toString();
    }
    notifyListeners();
  }
}
