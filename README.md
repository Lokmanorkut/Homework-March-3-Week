
# HomeworkMarch3Week

**This is the homework of the March 3rd week of the Repo Java Spring Boot Course. This week's task is to provide us with information about SQL queries and to increase our database creation, navigation and editing skills.**

* A) **ALTER TABLE**, SQL'de bir tabloyu değiştirmek için kullanılan bir komuttur. Mevcut bir tabloya sütun eklemek, silmek veya değiştirmek için kullanılır.
  * 1. Yeni Sütun Ekleme:  
    `ALTER TABLE tablo_adi ADD COLUMN sutun_adi veri_tipi [kısıtlamalar];`
    
    Örnekler:  
    `ALTER TABLE Students ADD COLUMN address VARCHAR(200);`  
    `ALTER TABLE Books ADD COLUMN page_count INT NOT NULL DEFAULT 300;`  
    `ALTER TABLE Borrows ADD COLUMN fine_amount DECIMAL(10,2);`

  * 2. Sütunun Veri Tipini veya Özelliklerini Değiştirme:  
    `ALTER TABLE musteriler ADD dogum_tarihi DATE;`

    Örnekler:  
    `ALTER TABLE musteriler MODIFY dogum_tarihi VARCHAR(10);`  
    `ALTER TABLE Students ALTER COLUMN address SET NOT NULL;`  
    `ALTER TABLE Students ALTER COLUMN address DROP NOT NULL;`

  * 3. Sütunun Adını Değiştirme:  
    `ALTER TABLE tablo_adi RENAME COLUMN eski_sutun_adı TO yeni_sutun_adı;`

    Örnek:  
    `ALTER TABLE musteriler RENAME COLUMN dogum_tarihi TO yas;`

  * 4. Sütun Silme:  
    `ALTER TABLE tablo_adi DROP COLUMN sutun_adı;`

    Örnek:  
    `ALTER TABLE musteriler DROP COLUMN yas;`

* B) **UPDATE VE DELETE** SQL'de tablo içindeki verileri güncellemek ve silmek için kullanılan komutlardır.
  * `UPDATE`: Bir tablodaki verileri güncellemek için kullanılır.  
    `UPDATE tablo_adi SET sutun1 = deger1, sutun2 = deger2 WHERE sart;`

    Örnek:  
    `UPDATE musteriler SET isim = 'Ahmet', sehir = 'Ankara' WHERE id = 1;`

    Tüm satırları Güncelleme:  
    `UPDATE musteriler SET sehir='İstanbul';`

  * `DELETE`: Tablodan belirli verileri silmek için kullanılır.  
    `DELETE FROM tablo_adi WHERE sart;`

    Örnek:  
    `DELETE FROM musteriler WHERE id = 1;`

* C) **INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN** farkları  
  Farklı tablolar arasında veri birleştirme işlemlerinde kullanılırlar.

  * **INNER JOIN**: İki tabloda eşleşen kayıtları getirir. Eşleşmeyenler dışlanır.  
    `SELECT * FROM Students INNER JOIN Courses ON Students.id = Courses.student_id;`
  
  * **LEFT JOIN**: Sol tablodaki tüm verileri ve sağ tablodaki eşleşenleri getirir.  
    `SELECT * FROM Students LEFT JOIN Courses ON Students.id = Courses.student_id;`
  
  * **RIGHT JOIN**: Sağ tablodaki tüm verileri ve sol tablodaki eşleşenleri getirir.  
    `SELECT * FROM Students RIGHT JOIN Courses ON Students.id = Courses.student_id;`
  
  * **FULL JOIN**: Her iki tablodaki tüm verileri getirir. Eşleşmeyen alanlar NULL olur.  
    `SELECT * FROM Students FULL JOIN Courses ON Students.id = Courses.student_id;`

* D) **HAVING ve GROUP BY birlikte nasıl kullanılır?**  
  `GROUP BY`, verileri gruplar. `HAVING`, gruplar üzerinde filtreleme yapar.  

  Örnek:  
  `SELECT sehir, COUNT(*) FROM musteriler GROUP BY sehir HAVING COUNT(*) > 2;`

* E) **LIMIT, OFFSET kullanarak sıralı veri çekme (ilk 5 kitap gibi)**  
  `SELECT * FROM Books ORDER BY publish_date DESC LIMIT 5;`  
  `SELECT * FROM Books ORDER BY publish_date DESC LIMIT 5 OFFSET 5;`

* F) **SUBQUERY örnekleri – alt sorgu kullanarak kitap veya kullanıcı bilgisi getirme**  
  `SELECT * FROM Books WHERE author_id = (SELECT id FROM Authors WHERE name = 'Orhan Pamuk');`  
  `SELECT name FROM Students WHERE id IN (SELECT student_id FROM Borrows WHERE book_id = 10);`

* G) **AND / OR mantıksal operatörleri ne işe yarar? Koşullu sorgularda nasıl kullanılır?**  
  - `AND`: Tüm koşullar doğruysa veri döner.  
    `SELECT * FROM Books WHERE category = 'Roman' AND year > 2015;`  
  - `OR`: En az bir koşul doğruysa veri döner.  
    `SELECT * FROM Books WHERE category = 'Roman' OR category = 'Şiir';`

* H) **BETWEEN ile aralık filtrelemesi nasıl yapılır?**  
  `SELECT * FROM Books WHERE year BETWEEN 2020 AND 2023;`

* I) **IN ifadesiyle çoklu değer karşılaştırması nasıl yapılır?**  
  `SELECT * FROM Books WHERE category IN ('Roman', 'Şiir', 'Tarih');`

* J) **LIKE operatörü nedir? '%' ve '_' karakterleriyle nasıl kullanılır?**  
  - `%`: Sıfır veya daha fazla karakteri temsil eder.  
    `SELECT * FROM Books WHERE title LIKE 'A%';`  
  - `_`: Tek bir karakteri temsil eder.  
    `SELECT * FROM Books WHERE title LIKE '_ev';`
