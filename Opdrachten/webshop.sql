/* Product: T-shirt */
/* Het product dat ik verkoop is een T-shirt. T-shirts zijn populair en worden wereldwijd gedragen door mensen van alle leeftijden en geslachten. 
Ze zijn verkrijgbaar in verschillende kleuren, maten en merken, en worden vaak gekozen op basis van persoonlijke voorkeur, stijl en gelegenheid.
De shirts zijn verkrijgbaar in heel veel verschillende kleuren, waardoor klanten de mogelijkheid hebben om hun eigen unieke stijl uit te drukken. 
Daarnaast biede ik T-shirts aan in verschillende maten, zodat iedereen een passend kledingstuk kan vinden.
Onze collectie omvat T-shirts van verschillende bekende merken, elk met hun eigen unieke stijl en ontwerpen. Of het nu gaat om casual dagelijkse kleding of om sportieve activiteiten, onze T-shirts zijn geschikt voor verschillende gelegenheden.
Met concurrerende prijzen streef ik ernaar om veel T-shirts aan te bieden tegen betaalbare prijzen. Onze voorraad wordt daarom regelmatig bijgewerkt om ervoor te zorgen dat klanten altijd een gevarieerde selectie hebben om uit te kiezen.
Kortom, het T-shirt assortiment biedt klanten comfortabele, stijlvolle en veel verschillende kledingopties die perfect zijn voor elke gelegenheid. */

CREATE TABLE T_shirts (
    ID INT PRIMARY KEY AUTO_INCREMENT, /* Uniek eigen identificatienummer voor elk T-shirt */
    Kleur VARCHAR(50), /* Opslag voor de kleur van het T-shirt */
    Maat VARCHAR(10), /* Opslag voor de maat van het T-shirt */
    Merk VARCHAR(50), /* Opslag voor het merk van het T-shirt */
    Prijs DECIMAL(10, 2), /* Opslag voor de prijs van het T-shirt */
    Voorraad INT /* Opslag voor de voorraad van het T-shirt */
);

/* Voeg 15 verschillende T-shirts toe */
INSERT INTO T_shirts (Kleur, Maat, Merk, Prijs, Voorraad) VALUES
('Blauw', 'M', 'Nike', 29.99, 20),
('Rood', 'L', 'Adidas', 24.99, 15),
('Groen', 'S', 'Puma', 19.99, 10),
('Zwart', 'XL', 'Stradivarius', 14.99, 30),
('Wit', 'M', 'Ellesse', 27.99, 25),
('Geel', 'L', 'Bershka', 15.99, 18),
('Oranje', 'S', 'New Balance', 26.99, 12),
('Roze', 'XL', 'Champion', 31.99, 22),
('Paars', 'M', 'Project X Paris', 28.99, 17),
('Bruin', 'L', 'Subdued', 23.99, 14),
('Grijs', 'S', 'Zara', 12.99, 11),
('Beige', 'XL', 'Tommy Hilfiger', 33.99, 28),
('Turquoise', 'M', 'Calvin Klein', 29.99, 16),
('Magenta', 'L', 'Ralph Lauren', 32.99, 21),
('Lila', 'S', 'Levi''s', 25.99, 13);

/* Alle T-shirts */
/* Dit statement haalt alle T-shirts op uit de database. */
SELECT * FROM T_shirts;

/* Alle T-shirts gesorteerd op prijs van laag naar hoog */
/* Dit statement haalt alle T-shirts op uit de database en sorteert ze op prijs van laag naar hoog. */
SELECT * FROM T_shirts ORDER BY Prijs ASC;

/* Alle T-shirts gesorteerd op prijs van hoog naar laag */
/* Dit statement haalt alle T-shirts op uit de database en sorteert ze op prijs van hoog naar laag. */
SELECT * FROM T_shirts ORDER BY Prijs DESC;

/* Alle T-shirts van een bepaald merk */
/* Dit statement haalt alle T-shirts op uit de database van een specifiek merk. */
SELECT * FROM T_shirts WHERE Merk = 'Nike';

/* Haal de laagste prijs van alle T-shirts op */
/* Dit statement haalt de laagste prijs van alle T-shirts op uit de database. */
SELECT MIN(Prijs) AS LaagstePrijs FROM T_shirts;

/* Haal de hoogste voorraad van alle T-shirts op */
/* Dit statement haalt de hoogste voorraad van alle T-shirts op uit de database. */
SELECT MAX(Voorraad) AS HoogsteVoorraad FROM T_shirts;

/* Het aantal T-shirts met een bepaalde kleur */
/* Dit statement telt het aantal T-shirts in de database met een specifieke kleur. */
SELECT COUNT(*) AS Aantal_Blauwe_T_shirts FROM T_shirts WHERE Kleur = 'Blauw';

/* De namen van T-shirts waarvan de voorraad lager is dan 10 */
/* Dit statement haalt de ID en kleur op van T-shirts uit de database waarvan de voorraad lager is dan 10. */
SELECT ID, Kleur FROM T_shirts WHERE Voorraad < 10;

/* Verkoop 15 items en pas de voorraad aan */
/* Dit statement verlaagt de voorraad van het T-shirt met 15 stuks na een verkooptransactie. */
UPDATE T_shirts SET Voorraad = Voorraad - 15;
