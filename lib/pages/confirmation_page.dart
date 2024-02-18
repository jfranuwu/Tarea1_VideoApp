
import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirmación de Compra'),
      ),
      body: Center(
        child: Text(
          '¡Gracias por tu compra!',
          style: TextStyle(fontSize:   24),
        ),
      ),
    );
  }
}
