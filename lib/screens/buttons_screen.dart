import 'package:flutter/material.dart';

class ButtonsScreen extends StatefulWidget {
  const ButtonsScreen({super.key});

  @override
  State<ButtonsScreen> createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  int _counter = 0;
  bool _isLiked = false;
  String _lastButtonPressed = 'Ninguno';

  void _incrementCounter() {
    setState(() {
      _counter++;
      _lastButtonPressed = 'FloatingActionButton';
    });
  }

  void _showMessage(String buttonType) {
    setState(() {
      _lastButtonPressed = buttonType;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Presionaste: $buttonType'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

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
              '🎨 Botones (Buttons)',
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
                  '💡 Los botones permiten a los usuarios ejecutar acciones y tomar decisiones. '
                  'Diferentes tipos de botones proporcionan distintos niveles de énfasis y '
                  'se utilizan según la importancia de la acción en la interfaz.',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Indicador de último botón presionado
            Card(
              color: Colors.blue[50],
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    const Icon(Icons.touch_app, color: Colors.blue),
                    const SizedBox(width: 8),
                    Text(
                      'Último botón presionado: $_lastButtonPressed',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Sección de demostración interactiva
            const Text(
              '⚡ Demostración Interactiva:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),

            // 1. ElevatedButton
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '1. ElevatedButton (Botón Elevado)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Botón principal con alta importancia visual. Ideal para acciones principales.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () => _showMessage('ElevatedButton'),
                          child: const Text('Acción Principal'),
                        ),
                        const SizedBox(width: 12),
                        ElevatedButton.icon(
                          onPressed: () => _showMessage('ElevatedButton con Icono'),
                          icon: const Icon(Icons.save),
                          label: const Text('Guardar'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 2. TextButton
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '2. TextButton (Botón de Texto)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Botón sutil sin fondo. Ideal para acciones secundarias o links.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () => _showMessage('TextButton'),
                          child: const Text('Cancelar'),
                        ),
                        const SizedBox(width: 12),
                        TextButton.icon(
                          onPressed: () => _showMessage('TextButton con Icono'),
                          icon: const Icon(Icons.info),
                          label: const Text('Más Info'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 3. OutlinedButton
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '3. OutlinedButton (Botón con Borde)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Botón con borde pero sin relleno. Importancia media entre ElevatedButton y TextButton.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        OutlinedButton(
                          onPressed: () => _showMessage('OutlinedButton'),
                          child: const Text('Acción Secundaria'),
                        ),
                        const SizedBox(width: 12),
                        OutlinedButton.icon(
                          onPressed: () => _showMessage('OutlinedButton con Icono'),
                          icon: const Icon(Icons.edit),
                          label: const Text('Editar'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 4. IconButton
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '4. IconButton (Botón de Icono)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Botón circular solo con icono. Ideal para acciones simples y barras de herramientas.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => _showMessage('IconButton - Favorito'),
                          icon: Icon(
                            _isLiked ? Icons.favorite : Icons.favorite_border,
                            color: _isLiked ? Colors.red : Colors.grey,
                          ),
                          tooltip: 'Me gusta',
                        ),
                        IconButton(
                          onPressed: () => _showMessage('IconButton - Compartir'),
                          icon: const Icon(Icons.share),
                          tooltip: 'Compartir',
                        ),
                        IconButton(
                          onPressed: () => _showMessage('IconButton - Eliminar'),
                          icon: const Icon(Icons.delete),
                          color: Colors.red,
                          tooltip: 'Eliminar',
                        ),
                        IconButton(
                          onPressed: () => _showMessage('IconButton - Configuración'),
                          icon: const Icon(Icons.settings),
                          tooltip: 'Configuración',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 5. FloatingActionButton
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '5. FloatingActionButton (FAB)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Botón circular flotante para la acción principal de la pantalla.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed: _incrementCounter,
                          tooltip: 'Incrementar',
                          heroTag: "fab1",
                          child: const Icon(Icons.add),
                        ),
                        const SizedBox(width: 16),
                        FloatingActionButton.extended(
                          onPressed: () {
                            setState(() {
                              _counter = 0;
                              _lastButtonPressed = 'FAB Extended (Reset)';
                            });
                          },
                          tooltip: 'Reiniciar contador',
                          heroTag: "fab2",
                          icon: const Icon(Icons.refresh),
                          label: const Text('Reset'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Contador: $_counter',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 6. Botones personalizados y estados
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '6. Botones con Estados Especiales',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Botones con diferentes estados: deshabilitado, loading, toggle.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    
                    // Botón deshabilitado
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: null, // null = deshabilitado
                          child: const Text('Deshabilitado'),
                        ),
                        const SizedBox(width: 12),
                        ElevatedButton(
                          onPressed: () => _showMessage('Botón con Loading'),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 16,
                                height: 16,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text('Loading...'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    
                    // Toggle button
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isLiked = !_isLiked;
                            });
                            _showMessage('Toggle Button');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _isLiked ? Colors.red : Colors.grey,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                _isLiked ? Icons.favorite : Icons.favorite_border,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 8),
                              Text(_isLiked ? 'Me gusta' : 'No me gusta'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 7. Botones personalizados con estilos
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '7. Botones con Estilos Personalizados',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Botones con colores, formas y tamaños personalizados.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        // Botón verde
                        ElevatedButton(
                          onPressed: () => _showMessage('Botón Verde'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Éxito'),
                        ),
                        
                        // Botón rojo
                        ElevatedButton(
                          onPressed: () => _showMessage('Botón Rojo'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Peligro'),
                        ),
                        
                        // Botón naranja
                        ElevatedButton(
                          onPressed: () => _showMessage('Botón Naranja'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Advertencia'),
                        ),
                        
                        // Botón redondeado
                        ElevatedButton(
                          onPressed: () => _showMessage('Botón Redondeado'),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Colors.purple,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Redondeado'),
                        ),
                      ],
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
}