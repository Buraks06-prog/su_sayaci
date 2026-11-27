import 'package:flutter/material.dart';

/// Uygulamanın bütün renkleri burada.
/// Renk değişecekse SADECE bu dosya değişir.
class Renkler {
  static const Color ana = Color(0xFF1E88E5); // su mavisi
  static const Color arkaPlan = Color(0xFFE3F2FD); // açık mavi
  static const Color basari = Color(0xFF43A047); // hedefe ulaşınca yeşil
}

/// Uygulamanın teması. main.dart'ta MaterialApp'e verilir.
final ThemeData uygulamaTemasi = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Renkler.ana),
  scaffoldBackgroundColor: Renkler.arkaPlan,
);