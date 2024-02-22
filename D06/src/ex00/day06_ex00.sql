create table person_discounts
(id BIGINT primary key,
 fk_person_discounts_person_id BIGINT,
 foreign key (fk_person_discounts_person_id) references person(id),
 fk_person_discounts_pizzeria_id BIGINT,
 foreign key (fk_person_discounts_pizzeria_id) references pizzeria(id),
 discount float
)