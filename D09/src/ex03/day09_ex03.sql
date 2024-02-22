create function fnc_trg_person_audit() returns trigger as $psql$
	begin
	if TG_OP='INSERT' then
		insert into person_audit (row_id, name, age, gender, address)
		values(new.id, new.name, new.age, new.gender, new.address);
	end if;
	if TG_OP='UPDATE' then
		insert into person_audit (type_event, row_id, name, age, gender, address)
		values ('U', old.id, old.name, old.age, old.gender, old.address);
	end if;
	if TG_OP='DELETE' then
		insert into person_audit (type_event, row_id, name, age, gender, address)
		values ('D', old.id, old.name, old.age, old.gender, old.address);
	end if;
	return new;
	end;
	$psql$
language plpgsql;
	
create trigger trg_person_audit
after insert or update or delete on person
for each row execute procedure fnc_trg_person_audit();

-- INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk'); 
-- UPDATE person SET name = 'Bulat' WHERE id = 10; 
-- UPDATE person SET name = 'Damir' WHERE id = 10; 
-- DELETE FROM person WHERE id = 10;

-- select * from person_audit