import 'package:flutter/material.dart';

import 'ana_ekran.dart';
import 'tema.dart';

void main() {
  runApp(const SuSayaciUygulamasi());
}

class SuSayaciUygulamasi extends StatelessWidget {
  const SuSayaciUygulamasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Su Sayacı',
      debugShowCheckedModeBanner: false,
      theme: uygulamaTemasi,
      home: const AnaEkran(),
    );
  }
}