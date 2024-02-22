create table if not exists person_audit (
	created timestamp with time zone default current_timestamp not NULL,
	type_event char(1) constraint ch_type_event check (type_event in ('I','U','D')) default 'I' not NULL,
	row_id bigint not NULL,
	name varchar,
	age integer,
	gender varchar,
	address varchar);

create function fnc_trg_person_insert_audit() returns trigger as $psql$
	begin
		insert into person_audit (row_id, name, age, gender, address)
		values (new.id, new.name, new.age, new.gender, new.address);
		return new;
	end;
$psql$ language plpgsql;

create trigger person_audit
after insert on person
for each row execute procedure fnc_trg_person_insert_audit();

INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk');

--select * from person_audit