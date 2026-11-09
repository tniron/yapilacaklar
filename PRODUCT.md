# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Users
Herkese açık bir yapılacaklar uygulaması: tanımadığımız kişiler e-postayla kayıt olup kendi kişisel listelerini tutar. İki ana kullanım anı var:
- Telefonda, ayaküstü: akla gelen işi hızlıca yazmak ve biteni işaretlemek.
- Bilgisayarda, iş başında: günü planlamak, listeyi gözden geçirip düzenlemek.

## Product Purpose
Kişisel işleri tek yerde toplamak ve her cihazdan aynı listeye ulaşmak. Başarı: kullanıcı bir işi saniyeler içinde ekleyebiliyor, listesine baktığında neyin kaldığını hemen görüyor ve tamamlananları işaretlemekten tatmin oluyor.

## Positioning
Sade, tek amaçlı, Türkçe bir yapılacaklar listesi: proje yönetimi aracı değil. Hesap e-posta + onay koduyla açılır, liste buluta kaydedilir ve her cihazda aynıdır. (Rakiplerden ayrışan özel bir mekanizma henüz tanımlanmadı.)

## Operating Context
- Tek HTML sayfası (`Yapilacaklar.html`), GitHub Pages ve Cloudflare Workers üzerinden yayında.
- Veriler Supabase'te; her kullanıcı yalnızca kendi görevlerini görür (RLS).
- Kayıt akışı: e-posta + şifre → e-postaya 6 haneli onay kodu (Brevo SMTP) → kod doğruysa hesap açılır.
- Eski sürümde kullanıcı adıyla açılmış hesaplar kullanıcı adıyla giriş yapabilir.

## Capabilities and Constraints
- Ekranlar: giriş, onay kodu, görev listesi.
- Görev işlemleri: ekle, tamamlandı işaretle, çift tıklayarak düzenle, sil, Tümü/Aktif/Tamamlanan filtresi, kalan görev sayacı, tamamlananları temizle, çıkış.
- Teknik: tek dosya, derleme adımı yok; supabase-js CDN'den yüklenir; internet bağlantısı gerekir.
- Açık karar: yeni özellik (tarih, öncelik, liste/kategori vb.) eklenip eklenmeyeceği belirlenmedi; tasarım mevcut özelliklerle çalışmalı.

## Brand Commitments
- Ürün adı: "Yapılacaklar".
- Arayüz dili: Türkçe.
- Açık ve koyu mod: sistem temasına göre otomatik geçiş korunmalı.

## Evidence on Hand
Gerçek kullanıcı, kullanım verisi, referans veya marka varlığı (logo, renk, yazı tipi) yok. Tasarımlarda bunlar uydurulmamalı; örnek görevler örnek olduğu belli olacak şekilde kullanılmalı.

## Product Principles
1. Ekleme her şeyden hızlı: bir görev yazmak tek hamle olmalı.
2. Kalan iş bir bakışta görünür.
3. Telefonda başparmakla, bilgisayarda klavyeyle rahat kullanılır.
4. Hesap ve onay adımları güven verir, karmaşık görünmez.

## Accessibility & Inclusion
Belirli bir standart istenmedi; temel erişilebilirlik (kontrast, klavye kullanımı, dokunma hedefleri) korunmalı.
