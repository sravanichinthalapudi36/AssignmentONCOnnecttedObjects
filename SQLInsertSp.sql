alter proc InsertStore
@StudName varchar(20),
@StudMarks int
as
begin
insert into StudentDetails(StudName,StudMarks) values(@StudName,@StudMarks)
end
--exec InsertStore 'balu' ,98

--  select * from studentdetails
-- delete from studentdetails where studid in (108, 109, 110)