use DotNetData
create table StudentDetails(
Studid  int primary key identity(100,1),
StudName varchar(20),
StudMarks int
);

use DotNetData
create table DeptDetailsr(
Deptid int identity(50,1),
DeptName varchar(20),
DeptStatus varchar(20)
);

       SET IDENTITY_INSERT DeptDetails ON

	   select * from DeptDetailsr
