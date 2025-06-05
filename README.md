# Harry Potter Karakterleri - Flutter Test Uygulaması

 Uygulama, Harry Potter evrenindeki karakterleri listeleyen, detay sayfasına geçiş sağlayan ve hata yönetimi içeren bir mobil uygulamadır.

## 📱 Ekran Görüntüleri

> Ekran görüntüsü eklemek istersen:
> 
![Ekran görüntüsü 2025-06-05 220936](https://github.com/user-attachments/assets/bfb8a318-3907-4501-ac07-b8f53d5d2a62)
![Ekran görüntüsü 2025-06-05 215622](https://github.com/user-attachments/assets/07cc00ab-c182-4f7d-9fd2-e6b12529de01)
![Ekran görüntüsü 2025-06-05 220920](https://github.com/user-attachments/assets/ac1f158d-80d1-43e7-aa37-6f13975478a9)

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
