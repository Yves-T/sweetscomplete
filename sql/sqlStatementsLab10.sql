USE sweetscomplete;

SELECT *
FROM `members`
WHERE `email` = 'felix.blevins@southcom.net';

INSERT INTO
  `members` (`name`, `address`, `city`, `state_province`, `postal_code`, `country`, `phone`, `balance`, `email`, `password`)
VALUES ('TEST USER', '321 bla street', 'New York', 'NY', '12345', 'BEL', '+1 123-456-7890', '0', 'test@test.com',
        'password');

UPDATE `members`
SET
  `address`     = '228 Grand Avenue',
  `postal_code` = '10002',
  `password`    = 'somethings'
WHERE `email` = 'test@test.com';

DELETE FROM `members`
WHERE `email` = 'test@test.com';

SELECT *
FROM `products`
ORDER BY `title`
LIMIT 20
OFFSET 40;

SELECT *
FROM `products`
WHERE `special` = 1;

SELECT COUNT(*)
FROM `products`;

SELECT *
FROM `products`
WHERE `title` LIKE '%chocolate%';

SELECT *
FROM `members`
  JOIN `purchases`
    ON
      `members`.`user_id` = `purchases`.`user_id`
WHERE `members`.`user_id` = 79;

SELECT
  m.name,
  m.email,
  p.*,
  r.title
FROM `members` AS m
  JOIN `purchases` AS p
    ON m.user_id = p.user_id
  JOIN `products` AS r
    ON r.product_id = p.product_id
WHERE m.user_id = 79;
