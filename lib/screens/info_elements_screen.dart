import 'package:flutter/material.dart';

class InfoElementsScreen extends StatefulWidget {
  const InfoElementsScreen({super.key});

  @override
  State<InfoElementsScreen> createState() => _InfoElementsScreenState();
}

class _InfoElementsScreenState extends State<InfoElementsScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  double _progressValue = 0.0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startProgress() {
    setState(() {
      _isLoading = true;
      _progressValue = 0.0;
    });

    // Simular progreso
    Future.delayed(const Duration(milliseconds: 100), () {
      _simulateProgress();
    });
  }

  void _simulateProgress() {
    if (_progressValue < 1.0) {
      setState(() {
        _progressValue += 0.1;
      });
      Future.delayed(const Duration(milliseconds: 200), () {
        _simulateProgress();
      });
    } else {
      setState(() {
        _isLoading = false;
      });
    }
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
              'ℹ️ Elementos Informativos',
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
                  '💡 Los elementos informativos muestran datos, estado y contenido al usuario. '
                  'Incluyen texto, imágenes, indicadores de progreso y otros widgets que '
                  'comunican información sin requerir interacción directa del usuario.',
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

            // 1. Text widgets
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '1. Text (Elementos de Texto)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Diferentes estilos y formatos de texto para mostrar información.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    
                    // Título grande
                    const Text(
                      'Título Principal',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),
                    
                    // Subtítulo
                    const Text(
                      'Subtítulo descriptivo',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 8),
                    
                    // Texto normal
                    const Text(
                      'Este es un párrafo de texto normal que muestra cómo se ve el contenido regular en la aplicación. Puede contener múltiples líneas y se ajusta automáticamente.',
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 8),
                    
                    // Texto con estilos
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(text: 'Texto con '),
                          TextSpan(
                            text: 'negrita',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ', '),
                          TextSpan(
                            text: 'cursiva',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(text: ', '),
                          TextSpan(
                            text: 'color',
                            style: TextStyle(color: Colors.blue),
                          ),
                          TextSpan(text: ' y '),
                          TextSpan(
                            text: 'subrayado',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.purple,
                            ),
                          ),
                          TextSpan(text: '.'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    
                    // Texto pequeño
                    Text(
                      'Texto pequeño para notas o información adicional',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 2. ImageView equivalents
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '2. Image (Elementos de Imagen)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Diferentes formas de mostrar imágenes e iconos.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    
                    // Iconos
                    const Text('Iconos:'),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.home,
                              size: 40,
                              color: Colors.blue.shade700,
                            ),
                            const SizedBox(height: 4),
                            const Text('Home', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.favorite,
                              size: 40,
                              color: Colors.red.shade700,
                            ),
                            const SizedBox(height: 4),
                            const Text('Favorito', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.star,
                              size: 40,
                              color: Colors.amber.shade700,
                            ),
                            const SizedBox(height: 4),
                            const Text('Estrella', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.settings,
                              size: 40,
                              color: Colors.grey.shade700,
                            ),
                            const SizedBox(height: 4),
                            const Text('Config', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    
                    // Avatar e imágenes circulares
                    const Text('Avatares y formas:'),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.blue.shade100,
                              child: Icon(
                                Icons.person,
                                size: 30,
                                color: Colors.blue.shade700,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text('Avatar', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.green.shade100,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.photo,
                                size: 30,
                                color: Colors.green.shade700,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text('Imagen', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.purple.shade300,
                                    Colors.blue.shade300,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Icon(
                                Icons.gradient,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text('Gradiente', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 3. Progress indicators
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '3. ProgressBar (Indicadores de Progreso)',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: _isLoading ? null : _startProgress,
                          child: Text(_isLoading ? 'Cargando...' : 'Iniciar'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Indicadores para mostrar progreso de operaciones.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    
                    // Circular Progress Indicator
                    const Text('Indicador Circular:'),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        // Indeterminado
                        Column(
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: CircularProgressIndicator(
                                strokeWidth: 3,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.blue.shade700,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Indeterminado',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(width: 40),
                        
                        // Determinado
                        Column(
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: CircularProgressIndicator(
                                value: _progressValue,
                                strokeWidth: 3,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.green.shade700,
                                ),
                                backgroundColor: Colors.green.shade100,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '${(_progressValue * 100).round()}%',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(width: 40),
                        
                        // Con tamaño personalizado
                        Column(
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: CircularProgressIndicator(
                                value: 0.75,
                                strokeWidth: 6,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.purple.shade700,
                                ),
                                backgroundColor: Colors.purple.shade100,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              '75% Fijo',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 20),
                    
                    // Linear Progress Indicator
                    const Text('Indicador Lineal:'),
                    const SizedBox(height: 8),
                    
                    // Indeterminado
                    const Text('Progreso indeterminado:', style: TextStyle(fontSize: 12)),
                    const SizedBox(height: 4),
                    const LinearProgressIndicator(),
                    const SizedBox(height: 12),
                    
                    // Determinado
                    Text('Progreso determinado: ${(_progressValue * 100).round()}%', 
                         style: const TextStyle(fontSize: 12)),
                    const SizedBox(height: 4),
                    LinearProgressIndicator(
                      value: _progressValue,
                      backgroundColor: Colors.blue.shade100,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue.shade700),
                    ),
                    const SizedBox(height: 12),
                    
                    // Con color personalizado
                    const Text('Con estilo personalizado:', style: TextStyle(fontSize: 12)),
                    const SizedBox(height: 4),
                    Container(
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.grey.shade200,
                      ),
                      child: LinearProgressIndicator(
                        value: 0.6,
                        backgroundColor: Colors.transparent,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.orange.shade600),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 4. Cards e información estructurada
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '4. Cards (Tarjetas Informativas)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Contenedores para agrupar información relacionada.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    
                    // Card simple
                    Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.info, color: Colors.blue.shade700),
                                const SizedBox(width: 8),
                                const Text(
                                  'Información General',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Esta es una tarjeta que contiene información organizada '
                              'de manera clara y estructurada.',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    
                    // Card con estadísticas
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            color: Colors.blue.shade50,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.people,
                                    size: 30,
                                    color: Colors.blue.shade700,
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    '1,234',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    'Usuarios',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Card(
                            color: Colors.green.shade50,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.trending_up,
                                    size: 30,
                                    color: Colors.green.shade700,
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    '+15%',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    'Crecimiento',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 5. Badges y chips informativos
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '5. Badges y Chips (Etiquetas Informativas)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Elementos pequeños para mostrar estados, categorías o información compacta.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    
                    // Chips
                    const Text('Chips:'),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        Chip(
                          label: const Text('Flutter'),
                          backgroundColor: Colors.blue.shade100,
                          avatar: const Icon(Icons.flutter_dash, size: 18),
                        ),
                        Chip(
                          label: const Text('Dart'),
                          backgroundColor: Colors.green.shade100,
                          avatar: const Icon(Icons.code, size: 18),
                        ),
                        Chip(
                          label: const Text('Mobile'),
                          backgroundColor: Colors.purple.shade100,
                          avatar: const Icon(Icons.phone_android, size: 18),
                        ),
                        Chip(
                          label: const Text('UI/UX'),
                          backgroundColor: Colors.orange.shade100,
                          avatar: const Icon(Icons.design_services, size: 18),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // Badges con iconos
                    const Text('Estados con Badge:'),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Badge(
                          label: const Text('3'),
                          child: Icon(
                            Icons.notifications,
                            size: 30,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        Badge(
                          label: const Text('12'),
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.message,
                            size: 30,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        Badge(
                          label: const Text('NEW'),
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.mail,
                            size: 30,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // Estados con colores
                    const Text('Estados con colores:'),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.green.shade300),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 6),
                              const Text(
                                'Activo',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.green,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.orange.shade100,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.orange.shade300),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  color: Colors.orange,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 6),
                              const Text(
                                'Pendiente',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.red.shade100,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.red.shade300),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 6),
                              const Text(
                                'Error',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
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