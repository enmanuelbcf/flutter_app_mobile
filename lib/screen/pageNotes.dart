import 'package:app_schedule/models/NotesProvider.dart';
import 'package:app_schedule/widgets/Utlis.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class pageNotes extends StatelessWidget {
  const pageNotes({super.key});

  @override
  Widget build(BuildContext context) {
    final notaRead = context.read<Notesprovider>();
    return Scaffold(
      appBar: Menu(),
      body: Column(
        children: [
          Text('MIS APUNTES',
              style: GoogleFonts.poppins(
                  fontSize: 26, fontWeight: FontWeight.w300)),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: GoogleFonts.poppins(fontSize: 18),
                  decoration: const InputDecoration(
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none)),
                  scrollPhysics: const ScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  maxLines: null,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            // color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                      child: FilledButton(
                          onPressed: () {
                            notaRead.saveNote('valores');
                          },
                          child: Text('Save',
                              style: GoogleFonts.poppins(
                                  fontSize: 26, fontWeight: FontWeight.bold)))),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
