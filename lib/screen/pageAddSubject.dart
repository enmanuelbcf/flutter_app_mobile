import 'package:app_schedule/models/SubjectProvider.dart';
import 'package:app_schedule/widgets/Utlis.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AsignaturaForm extends StatefulWidget {
  @override
  _AsignaturaFormState createState() => _AsignaturaFormState();
}

class _AsignaturaFormState extends State<AsignaturaForm> {
  final _formKey = GlobalKey<FormState>();
  final _controllerAsignatura = TextEditingController();
  String? _nombreAsignatura;
  int? _diaSeleccionado;
  TimeOfDay? _horaInicio;
  TimeOfDay? _horaFin;
  String _modalidadSeleccionada = 'Presencial'; // Modalidad por defecto
  String? _aula;

  final List<String> _diasSemana = [
    'Lunes',
    'Martes',
    'Miércoles',
    'Jueves',
    'Viernes',
    'Sábado',
    'Domingo'
  ];

  final List<String> _modalidades = ['Presencial', 'Virtual', 'Asincrónica'];

  void clean() {
    _controllerAsignatura.clear();
    _aula = '';
    _diaSeleccionado = null;
    _horaInicio = null;
    _horaFin = null;
    _modalidadSeleccionada = 'Presencial'; // Restablecer a valor por defecto
    setState(() {}); // Forzar el refresco de la UI
  }

  Future<void> _seleccionarHora(BuildContext context, bool esInicio) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        esInicio ? _horaInicio = picked : _horaFin = picked;
      });
    }
  }

  // Crear widget de selección de hora para evitar duplicación
  Widget buildTimeTile(String label, TimeOfDay? time, bool esInicio) {
    return ListTile(
      title: Text(time == null
          ? 'Seleccionar $label'
          : '$label: ${time.format(context)}'),
      trailing: const Icon(Icons.access_time),
      onTap: () => _seleccionarHora(context, esInicio),
    );
  }

  @override
  Widget build(BuildContext context) {
    final subject = context.read<Subjectprovider>();
    final id = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      appBar: Menu(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Text('AGREGAR ASIGNATURA',
                  style: GoogleFonts.poppins(fontSize: 22)),
              const SizedBox(height: 16),

              // Nombre de la Asignatura
              TextFormField(
                controller: _controllerAsignatura,
                decoration: const InputDecoration(
                    labelText: 'Nombre de la Asignatura',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onSaved: (value) {
                  _nombreAsignatura = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa el nombre de la asignatura';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              // Mostrar el campo de Días de la semana solo si la modalidad no es Asincrónica
              if (_modalidadSeleccionada != 'Asincrónica')
                DropdownButtonFormField<int>(
                  decoration: const InputDecoration(
                      labelText: 'Día de la semana',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  items: _diasSemana.asMap().entries.map((entry) {
                    int idx = entry.key + 1; // Convertir a 1-7
                    String dia = entry.value;
                    return DropdownMenuItem<int>(
                      value: idx,
                      child: Text(dia),
                    );
                  }).toList(),
                  onChanged: (int? newValue) {
                    setState(() {
                      _diaSeleccionado = newValue;
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Por favor, selecciona un día';
                    }
                    return null;
                  },
                ),

              const SizedBox(height: 16),

              // Modalidad
              DropdownButtonFormField<String>(
                value: _modalidadSeleccionada,
                decoration: const InputDecoration(
                    labelText: 'Modalidad',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                items: _modalidades.map((String modalidad) {
                  return DropdownMenuItem<String>(
                    value: modalidad,
                    child: Text(modalidad),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _modalidadSeleccionada = newValue!;
                    // Limpiar horas y día si la modalidad es "Asincrónica"
                    if (_modalidadSeleccionada == 'Asincrónica') {
                      _horaInicio = null;
                      _horaFin = null;
                      _diaSeleccionado = null;
                    }
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Por favor, selecciona una modalidad';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              // Selección de Hora de Inicio y Fin (solo si no es Asincrónica)
              if (_modalidadSeleccionada != 'Asincrónica') ...[
                buildTimeTile('Hora de Inicio', _horaInicio, true),
                if (_horaInicio == null)
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Por favor, selecciona la hora de inicio',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                buildTimeTile('Hora de Fin', _horaFin, false),
                if (_horaFin == null)
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Por favor, selecciona la hora de fin',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
              ],

              const SizedBox(height: 16),

              // Campo Aula (opcional)
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Aula (opcional)',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onSaved: (value) {
                  _aula = value;
                },
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (_modalidadSeleccionada != 'Asincrónica' &&
                        (_horaInicio == null || _horaFin == null)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content:
                                Text('Selecciona las horas de inicio y fin')),
                      );
                      return;
                    }
                    _formKey.currentState!.save();
                    subject.addSucject(
                        name: _nombreAsignatura.toString(),
                        day: _diaSeleccionado?.toString() ?? '8',
                        he: _horaInicio?.format(context) ?? 'N/A',
                        hs: _horaFin?.format(context) ?? 'N/A',
                        modalidad: _modalidadSeleccionada,
                        aula:
                            _aula?.isNotEmpty == true ? _aula.toString() : null,
                        id: id);
                    clean();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Asignatura guardada exitosamente')),
                    );
                  }
                },
                child: const Text('Guardar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
