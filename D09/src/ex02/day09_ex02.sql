create function fnc_trg_person_delete_audit() returns trigger as $psql$
	begin
		insert into person_audit (type_event, row_id, name, age, gender, address)
		values ('D', old.id, old.name, old.age, old.gender, old.address);
		return new;
	end;
	$psql$
language plpgsql;

create trigger trg_person_delete_audit
after delete on person
for each row execute procedure fnc_trg_person_delete_audit();

DELETE FROM person WHERE id = 10;

--select * from person_audit