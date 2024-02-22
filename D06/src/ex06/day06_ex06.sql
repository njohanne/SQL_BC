CREATE SEQUENCE IF NOT EXISTS seq_person_discounts
    AS bigint
    START WITH 1 INCREMENT 1;

SELECT setval('seq_person_discounts', (SELECT count(*) from person_discounts));

ALTER TABLE person_discounts
ALTER COLUMN id SET DEFAULT nextval('seq_person_discounts');