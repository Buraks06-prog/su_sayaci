import 'package:flutter/material.dart';

import 'mesaj_karti.dart';
import 'su_sayaci.dart';
import 'tema.dart';

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  // Kişi 3'ün sınıfı. Ekran hesap yapmıyor, sadece bunu kullanıyor.
  final SuSayaci _sayac = SuSayaci();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('💧 Su Sayacı'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${_sayac.bardak} / ${_sayac.hedef}',
                style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
              ),
              const Text('bardak su', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 24),
              LinearProgressIndicator(
                value: _sayac.ilerleme,
                minHeight: 16,
                borderRadius: BorderRadius.circular(8),
                color: _sayac.hedefeUlasildi ? Renkler.basari : Renkler.ana,
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton.filled(
                    onPressed: () {
                      setState(() {
                        _sayac.azalt();
                      });
                    },
                    icon: const Icon(Icons.remove),
                    iconSize: 32,
                  ),
                  const SizedBox(width: 32),
                  IconButton.filled(
                    onPressed: () {
                      setState(() {
                        _sayac.ekle();
                      });
                    },
                    icon: const Icon(Icons.add),
                    iconSize: 32,
                  ),
                ],
              ),
              const SizedBox(height: 32),
              MesajKarti(ilerleme: _sayac.ilerleme),
            ],
          ),
        ),
      ),
    );
  }
}