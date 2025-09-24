import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Regresar a la primera pantalla
                  Navigator.pop(context);
                },
                child: Text('Anterior'),
              ),
              SizedBox(height: 16.0),
              Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFE3F2FD),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ciudad de México',
                        style: TextStyle(
                          color: Color(0xFF1C2833),
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Row(
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Icon(
                              Icons.wb_sunny,
                              size: 60.0,
                              color: Colors.orange,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            '22°C',
                            style: TextStyle(
                              color: Color(0xFF1A237E),
                              fontSize: 48.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Parcialmente Nublado',
                        style: TextStyle(
                          color: Color(0xFF424242),
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Máx: 25°   Mín: 14°',
                        style: TextStyle(
                          color: Color(0xFF546E7A),
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}