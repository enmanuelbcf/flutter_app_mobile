import 'package:app_schedule/models/SubjectProvider.dart';
import 'package:board_datetime_picker/board_datetime_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

final textController = BoardDateTimeTextController();

AppBar Menu({bool ordenar = false}) {
  return AppBar(
      foregroundColor: Colors.white,
      actions: [
        ordenar
            ? Builder(builder: (context) {
                final subject = context.read<Subjectprovider>();
                return IconButton(
                  icon: const Icon(Icons.filter_alt),
                  onPressed: () {
                    subject.setOrnedar();
                  },
                );
              })
            : const SizedBox()
      ],
      title: Text('SCHEDULE',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold, color: Colors.white)),
      backgroundColor: const Color.fromARGB(255, 4, 17, 71));
}

time() {
  return BoardDateTimeInputField(
    controller: textController,
    pickerType: DateTimePickerType.time,
    options: const BoardDateTimeOptions(
      languages: BoardPickerLanguages.en(),
    ),
    onChanged: (date) {
      print('onchanged: $date');
    },
    onFocusChange: (val, date, text) {
      print('on focus changed date: $val, $date, $text');
    },
  );
}

String obtenerDiaSemana(String numeroDia) {
  // Convertimos el número de cadena a entero
  int dia = int.parse(numeroDia);

  // Lista de días de la semana
  final List<String> diasSemana = [
    'LUNES',
    'MARTES',
    'MIERCOLES',
    'JUEVES',
    'VIERNES',
    'SÁBADO',
    'DOMINGO',
    'N/A'
  ];

  // Validamos que el número esté dentro del rango válido (1-7)
  if (dia < 1 || dia > 8) {
    return 'Número de día inválido';
  }

  // Devolvemos el día correspondiente
  return diasSemana[dia - 1];
}
