--Tüm kitapları listeleme 
SELECT * FROM Books;
--Bilgisayar Bilimleri Kategorisindeki kitapları listeleme
SELECT * FROM Books WHERE category = 'Bİlgisayar Bilimleri';
--2020 ve sonrasında yayımlanan kitapları listeleme
SELECT * FROM Books WHERE publication_year >= 2020;
--Her kitabın ismini ve ait olduğu kategoriyi listeleyen sorguyu yazınız
SELECT book_name,category FROM Books;

