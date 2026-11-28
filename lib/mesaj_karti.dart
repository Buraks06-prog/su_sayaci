import 'package:flutter/material.dart';

/// İlerlemeye göre değişen motivasyon mesajı.
/// Kendi içinde hiçbir şey saklamıyor, sadece kendisine verilen ilerlemeyi gösteriyor.
class MesajKarti extends StatelessWidget {
  const MesajKarti({super.key, required this.ilerleme});

  final double ilerleme;

  String get _mesaj {
    if (ilerleme >= 1.0) return 'Harika! Bugünkü hedefini tamamladın 🎉';
    if (ilerleme >= 0.5) return 'Yarıyı geçtin, devam! 💪';
    if (ilerleme > 0) return 'Güzel başlangıç, bir bardak daha? 💧';
    return 'Güne bir bardak suyla başla!';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          _mesaj,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}