-- film tablosu
CREATE TABLE film (
    film_id INT,
    title VARCHAR(255),
    rating VARCHAR(10),
    replacement_cost DECIMAL(5,2)
);

INSERT INTO film VALUES
(1, 'Film A', 'G', 12.99),
(2, 'Film B', 'PG', 15.99),
(3, 'Film C', 'PG-13', 18.99),
(4, 'Film D', 'G', 12.99),
(5, 'Film E', 'R', 15.99),
(6, 'Film F', 'G', 12.99),
(7, 'Film G', 'PG-13', 15.99),
(8, 'Film H', 'G', 18.99),
(9, 'Film I', 'PG', 12.99),
(10, 'Film J', 'R', 28.99),
(11, 'Film K', 'PG-13', 12.99),
(12, 'Film L', 'G', 15.99);

-- customer tablosu
CREATE TABLE customer (
    customer_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    store_id INT
);

INSERT INTO customer VALUES
(1, 'Ali', 'Yılmaz', 1),
(2, 'Ayşe', 'Kaya', 1),
(3, 'Mehmet', 'Demir', 2),
(4, 'Fatma', 'Koç', 1),
(5, 'Ahmet', 'Acar', 2);

-- city tablosu
CREATE TABLE city (
    city_id INT,
    city VARCHAR(50),
    country_id INT
);

INSERT INTO city VALUES
(1, 'Berlin', 1),
(2, 'Hamburg', 1),
(3, 'Munich', 1),
(4, 'Paris', 2),
(5, 'Lyon', 2),
(6, 'Rome', 3),
(7, 'Milan', 3),
(8, 'Naples', 3),
(9, 'Florence', 3);

-- Soru 1: Rating'e göre film sayısı
SELECT rating, COUNT(*) AS film_sayisi
FROM film
GROUP BY rating;

-- Soru 2: 50'den fazla filme sahip replacement_cost değerleri
SELECT replacement_cost, COUNT(*) AS film_sayisi
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50;

-- Soru 3: Store_id'ye göre müşteri sayısı
SELECT store_id, COUNT(*) AS musteri_sayisi
FROM customer
GROUP BY store_id;

-- Soru 4: En çok şehir barındıran country_id
SELECT country_id, COUNT(*) AS sehir_sayisi
FROM city
GROUP BY country_id
ORDER BY sehir_sayisi DESC
LIMIT 1;
