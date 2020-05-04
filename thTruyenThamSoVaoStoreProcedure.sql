-- in
create procedure getCusById (in cusNum int(11))
begin
	select * from customers where customerNumber = cusNum;
end

call getCusById(175);

-- out
create procedure th_index_sql.getCustomersCountByCity(in in_city varchar(50), out total int)
begin
	select count(customerNumber) into total
	from customers
	where city = in_city;
end;

call getCustomersCountByCity ('Lyon', @total);
select @total;

-- inout
create procedure setCounter(inout counter int, in inc int)
begin
	set counter = counter + inc;
end;

set @counter = 1;
call setCounter (@counter, 1);
call setCounter (@counter, 1);
call setCounter (@counter, 5);
select @counter;