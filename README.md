# Harry Potter Karakterleri - Flutter Test Uygulaması

Bu proje, Daynex Yazılım için hazırlanmış bir teknik değerlendirme çalışmasıdır. Uygulama, Harry Potter evrenindeki karakterleri listeleyen, detay sayfasına geçiş sağlayan ve hata yönetimi içeren bir mobil uygulamadır.

## 📱 Ekran Görüntüleri

> Ekran görüntüsü eklemek istersen:
> ```
> ![Ekran 1](screenshots/list_screen.png)
> ![Ekran 2](screenshots/detail_screen.png)
> ```

## 🚀 Özellikler

- Harry Potter karakterlerini `https://hp-api.onrender.com` API’sinden çeker
- Karakterler liste halinde gösterilir
- Her karakter için detay ekranı ve Hero animasyonu
- Bloc mimarisi ile state yönetimi
- Dio ile HTTP isteği
- Hata durumunda kullanıcıya bilgilendirme ve tekrar deneme butonu
- Responsive ve temiz arayüz
- Reusable widget: `CharacterCard`

## 🛠️ Kullanılan Teknolojiler

- Flutter
- Bloc (flutter_bloc)
- Dio
- Equatable
- Material 3 Theme

## 🧱 Proje Yapısı

lib/
├── bloc/ # Bloc yapısı (event, state, bloc)
├── data/ # API servisi ve modeller
├── screens/ # Liste ve detay ekranları
├── widgets/ # Reusable widget: CharacterCard
└── main.dart



## 🔧 Nasıl Çalıştırılır?

```bash
git clone https://github.com/kullaniciadi/harry_potter_flutter.git
cd harry_potter_flutter
flutter pub get
flutter run


🧪 Değerlendirme Kriterleri Durumu
Kriter	Açıklama	Durum
API kullanımı	Dio ile API'den veri çekildi	✅
Bloc ile state yönetimi	Bloc pattern uygulandı	✅
UI tasarımı	Sade, anlaşılır, responsive	✅
Hata yönetimi	Kullanıcıya uygun mesajlar ve retry	✅

✉️ Teslim
Test sonucu başarıyla tamamlanmıştır. Proje ile ilgili detaylı bilgi ve geliştirme adımları için iletişime geçebilirsiniz.

Hazırlayan: Mehmet Karadana
E-posta: karadanam519@gmail.com
LinkedIn: linkedin.com/in/mehmet-karadana34