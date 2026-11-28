import 'package:flutter_test/flutter_test.dart';
import 'package:su_sayaci/su_sayaci.dart';

void main() {
  test('başlangıçta 0 bardak', () {
    final sayac = SuSayaci();
    expect(sayac.bardak, 0);
  });

  test('ekle() bir bardak ekler', () {
    final sayac = SuSayaci();
    sayac.ekle();
    expect(sayac.bardak, 1);
  });

  test('ilerleme hedefe göre hesaplanır', () {
    final sayac = SuSayaci(hedef: 4);
    sayac.ekle();
    sayac.ekle();
    expect(sayac.ilerleme, 0.5);
  });

  test('ilerleme en fazla 1.0 olur', () {
    final sayac = SuSayaci(hedef: 2);
    sayac.ekle();
    sayac.ekle();
    sayac.ekle();
    expect(sayac.ilerleme, 1.0);
    expect(sayac.hedefeUlasildi, true);
  });

  test('sifirla() sayacı 0 yapar', () {
    final sayac = SuSayaci();
    sayac.ekle();
    sayac.sifirla();
    expect(sayac.bardak, 0);
  });

    test('azalt() sıfırın altına düşmez', () {
    final sayac = SuSayaci();
    sayac.azalt();
    expect(sayac.bardak, 0);
  });
}