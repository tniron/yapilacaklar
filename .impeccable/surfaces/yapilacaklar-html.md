---
version: 1
slug: "yapilacaklar-html"
primary_target: "Yapilacaklar.html"
related_targets: []
---

# Yapılacaklar — görev ekranı (giriş + onay kodu + liste)

Scope: `Yapilacaklar.html`, tek sayfa; giriş, onay kodu ve görev listesi ekranları. Mode: Operate.
Audience/job: herkese açık Türkçe kullanıcılar; telefonda ayaküstü görev ekleme/işaretleme, bilgisayarda gözden geçirme. Mevcut işlevler aynen korunur, yeni özellik yok. Açık/koyu mod sistem temasını izler.

## Direction contract

THESIS: Liste, Şehir Hatları iskelesindeki sefer tabelası gibi okunur: sıra no, görev, durum sütunları; sıradaki iş öne çıkar, biten iş "Tamamlananlar"a kalkar. Reddedilen kategori varsayılanı: beyaz kart içinde yuvarlak onay kutulu yumuşak liste.

OWN-WORLD: Lacivert emaye başlık şeridi (#0d2b4e), beyazımsı tabela zemini (#f6f7f4), baca kırmızısı (#c8102e) yalnızca "sıradaki" göreve ve birincil eyleme ayrılmış. Barlow Semi Condensed büyük harf etiketler ve tablo rakamları; gövde Barlow. Köşeler 6px; gölge yok, ayrım bir piksellik çizgilerle.

STORY: Kullanıcı açar, sağ üstte kaç iş kaldığını, en üstte sıradakini görür; alttaki şeritten yazıp ekler; işaretlediği görev yerinde "TAMAM" olup Tamamlananlar bölümüne kayar. Filtre sekmeleri sayılarıyla neyin ne kadar olduğunu söyler.

FIRST VIEWPORT: Telefon: lacivert başlık şeridinde solda "Yapılacaklar", sağda dev kalan iş sayısı + "İŞ KALDI"; altında sayılı TÜMÜ/AKTİF/BİTEN sekmeleri. Ardından NO/GÖREV/DURUM başlıklı tabela satırları; 01 kırmızı "SIRADAKİ". Ekleme şeridi altta sabit, lacivert, kırmızı EKLE. Masaüstü: aynı tabela 720px sütunda ortalı; ekleme şeridi başlığın altında.

FORM: İskele (Şehir Hatları sefer tabelası), grounded list #4; raises: kırmızı yalnızca sıradakine (oryantiring), tamamlanan yerinde kayıp vurgulu kalır (kapı panosu), sekmeler sayıyı taşır (asetat kılavuz). seed:1cc2388ba4104165

FINISH: unreviewed and undocumented is unfinished; this build ends with the finish review, the verdict, DESIGN.md, and every shipping raster carrying its provenance

## Memorable moment
Bir görev işaretlenince satır "TAMAM" olur, kayarak Tamamlananlar bölümüne iner ve orada kısa süre vurgulu kalır.

## Unresolved
- Masaüstünde sıra numarası yerine eklenme saati gösterilebilir mi (veri var: created_at) — şimdilik sıra no.
