import 'dart:io';

void main() {
  while (true) {
    print("İşlem tipini seçiniz:");
    print("1- Toplama");
    print("2- Çıkarma");
    print("3- Çarpma");
    print("4- Bölme");
    print("0- Çıkış");

    int secim = int.parse(stdin
        .readLineSync()!); // Kullanıcıdan işlem tipini readlinesync fonksiyonu ile alıyoruz ve girdiyi int tipine parse ediyoruz. readLineSync fonksiyonunun sonuna ünlem işareti koyarak null değer döndüğünde hata vermemesini sağlıyoruz.

    if (secim == 0) {
      // Kullanıcı 0 girerse döngüden çıkıyoruz.
      print("Hesap makinesi kapatıldı.");
      break;
    } else if (secim == 1) {
      // Toplama işlemi
      double sayi1, sayi2 = 0;
      print("Toplama işlemi için ilk sayıyı giriniz:");
      sayi1 = double.parse(stdin.readLineSync()!);
      print("Toplama işlemi için ikinci sayıyı giriniz:");
      sayi2 = double.parse(stdin.readLineSync()!);

      double result = toplama(sayi1, sayi2);

      print("Sonuç: $result \n");
    } else if (secim == 2) {
      // Çıkarma işlemi
      double sayi1, sayi2 = 0;
      print("Çıkarma işlemi için ilk sayıyı giriniz:");
      sayi1 = double.parse(stdin.readLineSync()!);
      print("Çıkarma işlemi için ikinci sayıyı giriniz:");
      sayi2 = double.parse(stdin.readLineSync()!);

      double result = cikarma(sayi1, sayi2);

      print("Sonuç: $result \n");
    } else if (secim == 3) {
      // Çarpma işlemi
      double sayi1, sayi2 = 0;
      print("Çarpma işlemi için ilk sayıyı giriniz:");
      sayi1 = double.parse(stdin.readLineSync()!);
      print("Çarpma işlemi için ikinci sayıyı giriniz:");
      sayi2 = double.parse(stdin.readLineSync()!);

      double result = carpma(sayi1, sayi2);

      print("Sonuç: $result \n");
    } else if (secim == 4) {
      // Bölme işlemi
      double sayi1, sayi2 = 0;
      print("Bölme işlemi için ilk sayıyı giriniz:");
      sayi1 = double.parse(stdin.readLineSync()!);
      print("Bölme işlemi için ikinci sayıyı giriniz:");
      sayi2 = double.parse(stdin.readLineSync()!);

      double result = bolme(sayi1, sayi2);

      print("Sonuç: $result \n");
    } else {
      print("Geçersiz işlem tipi. Lütfen 0-4 arasında bir seçenek girin.");
    }
  }
}

double toplama(double sayi1, double sayi2) {
  return sayi1 + sayi2;
}

double cikarma(double sayi1, double sayi2) {
  return sayi1 - sayi2;
}

double carpma(double sayi1, double sayi2) {
  return sayi1 * sayi2;
}

double bolme(double sayi1, double sayi2) {
  return sayi1 / sayi2;
}
