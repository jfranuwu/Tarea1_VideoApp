import 'package:flutter/material.dart';

class SelectedOptionPage extends StatelessWidget {
  final String selectedOption;

  const SelectedOptionPage({Key? key, required this.selectedOption}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Agencia de Autos Ficticia',
              style: TextStyle(fontSize:   24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height:   16),
            Text(
              'Somos una agencia de autos líder en el mercado, ofreciendo una amplia gama de vehículos de alta calidad. Nuestra misión es proporcionar a nuestros clientes la mejor experiencia de compra de autos, con un servicio excepcional y precios competitivos.',
              style: TextStyle(fontSize:   16),
            ),
            SizedBox(height:   16),
            Text(
              'Nuestros servicios incluyen:',
              style: TextStyle(fontSize:   18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height:   8),
            Text(
              '• Asesoramiento personalizado para encontrar el auto perfecto para tus necesidades.',
              style: TextStyle(fontSize:   16),
            ),
            Text(
              '• Pruebas de conducción y demostraciones de autos.',
              style: TextStyle(fontSize:   16),
            ),
            Text(
              '• Financiamiento y seguros a través de nuestras asociaciones.',
              style: TextStyle(fontSize:   16),
            ),
            Text(
              '• Servicio postventa y mantenimiento de autos.',
              style: TextStyle(fontSize:   16),
            ),
            SizedBox(height:   16),
            Text(
              'Visítanos en nuestra ubicación o contáctanos para más información.',
              style: TextStyle(fontSize:   16),
            ),
            SizedBox(height:   16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.facebook),
                  onPressed: () {
                  },
                ),
                IconButton(
                  icon: Icon(Icons.map),
                  onPressed: () {
                  },
                ),
                IconButton(
                  icon: Icon(Icons.youtube_searched_for),
                  onPressed: () {
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

