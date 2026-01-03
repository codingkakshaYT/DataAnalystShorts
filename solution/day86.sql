-- table creation script
CREATE TABLE Person (
    Id INT PRIMARY KEY,
    Email VARCHAR(255)
);
--- data insertion script
INSERT INTO Person (Id, Email) VALUES
(1, 'john@example.com'),
(2, 'bob@example.com'),
(3, 'john@example.com'),
(4, 'alice@example.com'),
(5, 'bob@example.com'),
(6, 'charlie@example.com'),
(7, 'diana@example.com'),
(8, 'eve@example.com'),
(9, 'frank@example.com'),
(10, 'grace@example.com'),
(11, 'henry@example.com'),
(12, 'ivy@example.com'),
(13, 'jack@example.com'),
(14, 'kate@example.com'),
(15, 'leo@example.com'),
(16, 'mike@example.com'),
(17, 'nancy@example.com'),
(18, 'oliver@example.com'),
(19, 'peter@example.com'),
(20, 'quinn@example.com');
--solution for the question
WITH tablea as(
select id, email,
ROW_NUMBER()OVER(PARTITION by email order by id asc) as rn
from person 
)
select * from person where id in (select 
 id from tablea where rn>1)
