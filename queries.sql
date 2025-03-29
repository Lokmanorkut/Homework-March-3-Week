-- 1.Books tablosundaki tüm kitapları listeleyen sorguyu yazınız.
SELECT
    *
FROM
    Books;

-- 2.Yalnızca "Bilgisayar Bilimleri" kategorisindeki kitapları listeleyiniz.
SELECT
    b.*
FROM
    Books b
    JOIN Categories c ON b.category_id = c.id
WHERE
    c.name = 'Bilgisayar Bilimleri';

-- 3. 2020 ve sonrasında yayımlanan kitapları listeleyiniz.
SELECT
    *
FROM
    Books
WHERE
    publication_year >= 2020;

-- 4. Her kitabın ismini ve ait olduğu kategoriyi listeleyen sorguyu yazınız.
SELECT
    b.title,
    c.name AS category
FROM
    Books b
    JOIN Categories c ON b.category_id = c.id;

-- 5.Kitap alan öğrencilerin adını, soyadını ve kitap adını listeleyiniz.
SELECT
    s.first_name,
    s.last_name,
    b.title
FROM
    Borrows br
    JOIN Students s ON br.student_id = s.id
    JOIN Books b ON br.book_id = b.id;

-- 6.Her kitapla ilişkili yazarı ve yayın yılını listeleyiniz
SELECT
    b.title,
    a.name AS author,
    b.publication_year
FROM
    Books b
    JOIN Authors a ON b.author_id = a.id;

-- 7. Hangi kullanıcı hangi kitabı ne zaman almış?
SELECT
    s.first_name,
    s.last_name,
    b.title,
    br.borrow_date
FROM
    Borrows br
    JOIN Students s ON br.student_id = s.id
    JOIN Books b ON br.book_id = b.id;

-- 8. Geri dönüş tarihi boş olan kitapların listesini ve kullanıcı bilgilerini getiriniz.
SELECT
    s.first_name,
    s.last_name,
    b.title,
    br.borrow_date,
    br.due_date
FROM
    Borrows br
    JOIN Students s ON br.student_id = s.id
    JOIN Books b ON br.book_id = b.id
WHERE
    br.return_date IS NULL;

-- 9.Her kategoriye ait kaç kitap olduğunu listeleyiniz.
SELECT
    c.name AS category,
    COUNT(b.id) AS book_count
FROM
    Categories c
    LEFT JOIN Books b ON c.id = b.category_id
GROUP BY
    c.name
ORDER BY
    book_count DESC;

-- 10.En çok kitap ödünç alan kullanıcıları en fazla borç alandan az borç alana göre sıralayınız
SELECT
    s.first_name,
    s.last_name,
    COUNT(br.id) AS borrow_count
FROM
    Students s
    JOIN Borrows br ON s.id = br.student_id
GROUP BY
    s.id,
    s.first_name,
    s.last_name
ORDER BY
    borrow_count DESC;