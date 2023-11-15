program Rainfall
implicit none

character(30)::Town(5)
integer::Rain(5)
integer::st,i

i=0
open(10,file='data.txt',status='old',iostat=st)
read(10,*) !prospernao thn proth grammh toy arxeiou
do 
  i=i+1
  read (10,'(A20,2x,i3)',iostat=st) Town(i),Rain(i)
  
  write(*,'(A20,2x,i3)') Town(i),Rain(i)   

 if(i==5) then
  exit
 end if  
!write(*,'(A20)') Town(i)
!write(*,'(i3)') Rain(i)
end do    
close (10)



end program