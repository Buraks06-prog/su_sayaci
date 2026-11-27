import 'package:flutter/material.dart';

void main() {
  runApp(const SuSayaciUygulamasi());
}

class SuSayaciUygulamasi extends StatelessWidget {
  const SuSayaciUygulamasi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Su Sayacı',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Su Sayacı yakında 💧'),
        ),
      ),
    );
  }
}