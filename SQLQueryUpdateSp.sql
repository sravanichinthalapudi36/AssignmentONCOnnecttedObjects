alter procedure spUpdateStudent            
(      @Studid int,      
    @StudName VARCHAR(50),    
	 @StudMarks INTEGER 
)            
as            
begin            
   Update StudentDetails             
   set StudName =@StudName , StudMarks=@StudMarks           
   where Studid=@Studid           
End