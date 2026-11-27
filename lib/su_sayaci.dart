/// Günlük içilen su bardağı sayısını tutar.
/// Ekranla hiçbir ilgisi yok, sadece hesap yapar.
/// Bu yüzden test etmesi çok kolay.
class SuSayaci {
  SuSayaci({this.hedef = 8});

  /// Günlük hedef bardak sayısı.
  final int hedef;

  /// Şu ana kadar içilen bardak.
  /// Başındaki _ işareti yüzünden dışarıdan doğrudan değiştirilemez.
  int _bardak = 0;

  int get bardak => _bardak;

  /// 0.0 ile 1.0 arası bir sayı. İlerleme çubuğu bunu kullanır.
  double get ilerleme {
    final oran = _bardak / hedef;
    if (oran > 1.0) return 1.0;
    return oran;
  }

  bool get hedefeUlasildi => _bardak >= hedef;

  void ekle() {
    _bardak++;
  }

  void azalt() {
    _bardak--;
  }

  void sifirla() {
    _bardak = 0;
  }
}