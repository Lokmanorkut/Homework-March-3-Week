# HomeworkMarch3Week

**This is the homework of the March 3rd week of the Repo Java Spring Boot Course. This week's task is to provide us with information about SQL queries and to increase our database creation, navigation and editing skills.**

* **ALTER TABLE**, SQL'de bir tabloyu değiştirmek için kullanılan bir komuttur.Mevcut bir tabloya sütun eklemek,silmek veya değiştirmek için kullanılır.
  * 1.Yeni Sütun Ekleme:
    `ALTER TABLE tablo_adi ADD COLUMN sutun_adi veri_tipi [kısıtlamalar];`
    
    Örnekler:
    
      `ALTER TABLE Students ADD COLUMN address VARCHAR(200);`
    
      `ALTER TABLE Books ADD COLUMN page_count INT NOT NULL DEFAULT 300;`
    
      `ALTER TABLE Borrows ADD COLUMN fine_amount DECIMAL(10,2);`

  * 2.Sütunun Veri Tipini veya Özelliklerini Değiştirme:
    `ALTER TABLE musteriler ADD dogum_tarihi DATE;`

    Örnekler:
    
    `ALTER TABLE musteriler MODIFY dogum_tarihi VARCHAR(10);`
    
    `ALTER TABLE Students ALTER COLUMN address SET NOT NULL;`

    `ALTER TABLE Students ALTER COLUMN address DROP NOT NULL;`

  * 3.Sütunun Adını Değiştirme:
    `ALTER TABLE tablo_adi RENAME COLUMN eski_sutun_adı TO yeni_sutun_adı;`

    Örnek:

    `ALTER TABLE musteriler RENAME COLUMN dogum_tarihi TO yas;`

  * 4.Sütun Silme:
    `ALTER TABLE tablo_adi DROP COLUMN sutun_adı;`

    Örnek:
    `ALTER TABLE musteriler DROP COLUMN yas;`

