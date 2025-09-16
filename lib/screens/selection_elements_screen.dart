import 'package:flutter/material.dart';

class SelectionElementsScreen extends StatefulWidget {
  const SelectionElementsScreen({super.key});

  @override
  State<SelectionElementsScreen> createState() => _SelectionElementsScreenState();
}

class _SelectionElementsScreenState extends State<SelectionElementsScreen> {
  // Checkbox states
  bool _checkbox1 = false;
  bool _checkbox2 = true;
  bool _checkbox3 = false;
  
  // RadioButton state
  String _selectedRadio = 'opcion1';
  
  // Switch states
  bool _switch1 = false;
  bool _switch2 = true;
  
  // Slider states
  double _sliderValue = 20.0;
  double _rangeSliderStart = 20.0;
  double _rangeSliderEnd = 80.0;
  
  // Dropdown state
  String _selectedDropdown = 'flutter';
  
  // Multiple checkbox selection
  List<String> _selectedLanguages = ['dart'];

  final List<String> _programmingLanguages = [
    'dart', 'javascript', 'python', 'java', 'kotlin', 'swift'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título descriptivo
            const Text(
              '☑️ Elementos de Selección',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 8),
            
            // Explicación breve
            const Card(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  '💡 Los elementos de selección permiten a los usuarios elegir entre diferentes opciones. '
                  'Incluyen checkboxes para selección múltiple, radio buttons para selección única, '
                  'switches para estados on/off, sliders para valores numéricos y dropdowns para listas.',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Sección de demostración interactiva
            const Text(
              '⚡ Demostración Interactiva:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),

            // 1. Checkboxes
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '1. Checkbox (Casillas de Verificación)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Permiten selección múltiple. El usuario puede elegir varias opciones a la vez.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    
                    CheckboxListTile(
                      title: const Text('Acepto los términos y condiciones'),
                      value: _checkbox1,
                      onChanged: (bool? value) {
                        setState(() {
                          _checkbox1 = value ?? false;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    
                    CheckboxListTile(
                      title: const Text('Quiero recibir notificaciones'),
                      subtitle: const Text('Recibirás emails sobre actualizaciones'),
                      value: _checkbox2,
                      onChanged: (bool? value) {
                        setState(() {
                          _checkbox2 = value ?? false;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    
                    CheckboxListTile(
                      title: const Text('Suscribirme al newsletter'),
                      value: _checkbox3,
                      onChanged: (bool? value) {
                        setState(() {
                          _checkbox3 = value ?? false;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    
                    const SizedBox(height: 8),
                    Text(
                      'Seleccionados: ${[_checkbox1, _checkbox2, _checkbox3].where((x) => x).length}/3',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 2. Radio Buttons
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '2. RadioButton (Botones de Opción)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Permiten selección única. Solo una opción puede estar seleccionada a la vez.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    
                    const Text(
                      '¿Cuál es tu lenguaje de programación favorito?',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 8),
                    
                    RadioListTile<String>(
                      title: const Text('Dart'),
                      subtitle: const Text('Usado en Flutter'),
                      value: 'opcion1',
                      groupValue: _selectedRadio,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedRadio = value!;
                        });
                      },
                    ),
                    
                    RadioListTile<String>(
                      title: const Text('JavaScript'),
                      subtitle: const Text('Usado en desarrollo web'),
                      value: 'opcion2',
                      groupValue: _selectedRadio,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedRadio = value!;
                        });
                      },
                    ),
                    
                    RadioListTile<String>(
                      title: const Text('Python'),
                      subtitle: const Text('Usado en IA y backend'),
                      value: 'opcion3',
                      groupValue: _selectedRadio,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedRadio = value!;
                        });
                      },
                    ),
                    
                    RadioListTile<String>(
                      title: const Text('Java'),
                      subtitle: const Text('Usado en Android y enterprise'),
                      value: 'opcion4',
                      groupValue: _selectedRadio,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedRadio = value!;
                        });
                      },
                    ),
                    
                    const SizedBox(height: 8),
                    Text(
                      'Selección actual: ${_getRadioText(_selectedRadio)}',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 3. Switches
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '3. Switch (Interruptores)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Permiten alternar entre dos estados: encendido/apagado, habilitado/deshabilitado.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    
                    SwitchListTile(
                      title: const Text('Modo oscuro'),
                      subtitle: const Text('Cambia el tema de la aplicación'),
                      value: _switch1,
                      onChanged: (bool value) {
                        setState(() {
                          _switch1 = value;
                        });
                      },
                      secondary: const Icon(Icons.dark_mode),
                    ),
                    
                    SwitchListTile(
                      title: const Text('Notificaciones push'),
                      subtitle: const Text('Recibir alertas en tiempo real'),
                      value: _switch2,
                      onChanged: (bool value) {
                        setState(() {
                          _switch2 = value;
                        });
                      },
                      secondary: const Icon(Icons.notifications),
                    ),
                    
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Text('Estado: '),
                        Chip(
                          label: Text(_switch1 ? 'Modo Oscuro' : 'Modo Claro'),
                          backgroundColor: _switch1 ? Colors.grey[800] : Colors.yellow[100],
                          labelStyle: TextStyle(
                            color: _switch1 ? Colors.white : Colors.black,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Chip(
                          label: Text(_switch2 ? 'Notificaciones ON' : 'Notificaciones OFF'),
                          backgroundColor: _switch2 ? Colors.green[100] : Colors.red[100],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 4. Sliders
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '4. Slider (Deslizadores)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Permiten seleccionar un valor dentro de un rango continuo.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    
                    // Slider simple
                    const Text('Volumen del audio:'),
                    Slider(
                      value: _sliderValue,
                      min: 0,
                      max: 100,
                      divisions: 10,
                      label: '${_sliderValue.round()}%',
                      onChanged: (double value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                    ),
                    Text(
                      'Volumen actual: ${_sliderValue.round()}%',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    
                    const SizedBox(height: 20),
                    
                    // Range Slider
                    const Text('Rango de precios:'),
                    RangeSlider(
                      values: RangeValues(_rangeSliderStart, _rangeSliderEnd),
                      min: 0,
                      max: 100,
                      divisions: 10,
                      labels: RangeLabels(
                        '\$${_rangeSliderStart.round()}',
                        '\$${_rangeSliderEnd.round()}',
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _rangeSliderStart = values.start;
                          _rangeSliderEnd = values.end;
                        });
                      },
                    ),
                    Text(
                      'Rango seleccionado: \$${_rangeSliderStart.round()} - \$${_rangeSliderEnd.round()}',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 5. Dropdown
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '5. DropdownButton (Menú Desplegable)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Muestra una lista de opciones cuando se presiona. Ideal para listas largas.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    
                    const Text('Selecciona tu framework favorito:'),
                    const SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: _selectedDropdown,
                          isExpanded: true,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedDropdown = newValue!;
                            });
                          },
                          items: <String>[
                            'flutter',
                            'react',
                            'angular',
                            'vue',
                            'svelte',
                            'next.js'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Row(
                                children: [
                                  _getFrameworkIcon(value),
                                  const SizedBox(width: 8),
                                  Text(value.toUpperCase()),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Framework seleccionado: ${_selectedDropdown.toUpperCase()}',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 6. Multiple Selection with Checkboxes
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '6. Selección Múltiple (CheckBox List)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Lista de elementos con checkbox para selección múltiple.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    
                    const Text('¿Qué lenguajes de programación conoces?'),
                    const SizedBox(height: 8),
                    
                    ..._programmingLanguages.map((language) => CheckboxListTile(
                      title: Text(language.toUpperCase()),
                      value: _selectedLanguages.contains(language),
                      onChanged: (bool? value) {
                        setState(() {
                          if (value == true) {
                            _selectedLanguages.add(language);
                          } else {
                            _selectedLanguages.remove(language);
                          }
                        });
                      },
                      dense: true,
                    )),
                    
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      children: _selectedLanguages.map((language) => Chip(
                        label: Text(language.toUpperCase()),
                        backgroundColor: Colors.blue[100],
                        deleteIcon: const Icon(Icons.close, size: 18),
                        onDeleted: () {
                          setState(() {
                            _selectedLanguages.remove(language);
                          });
                        },
                      )).toList(),
                    ),
                    
                    if (_selectedLanguages.isEmpty)
                      const Text(
                        'No has seleccionado ningún lenguaje',
                        style: TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getRadioText(String value) {
    switch (value) {
      case 'opcion1':
        return 'Dart';
      case 'opcion2':
        return 'JavaScript';
      case 'opcion3':
        return 'Python';
      case 'opcion4':
        return 'Java';
      default:
        return 'Desconocido';
    }
  }

  Widget _getFrameworkIcon(String framework) {
    switch (framework) {
      case 'flutter':
        return const Icon(Icons.flutter_dash, color: Colors.blue);
      case 'react':
        return const Icon(Icons.code, color: Colors.cyan);
      case 'angular':
        return const Icon(Icons.web, color: Colors.red);
      case 'vue':
        return const Icon(Icons.view_compact, color: Colors.green);
      case 'svelte':
        return const Icon(Icons.settings, color: Colors.orange);
      case 'next.js':
        return const Icon(Icons.next_plan, color: Colors.black);
      default:
        return const Icon(Icons.code);
    }
  }
}