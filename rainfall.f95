program Rainfall
implicit none

character(30)::Town(50)
integer::Rain(50)
integer::st,i,Mesos


i=1
Mesos=0
open(10,file='data.txt',status='old',iostat=st)
read(10,*) !prospernao thn proth grammh toy arxeiou
do 

  read (10,'(A20,2x,i3)',iostat=st) Town(i),Rain(i)
    if (st==-1) exit 
  write(*,'(A20,2x,i3)') Town(i),Rain(i) 
  Mesos = Mesos + Rain(i)  
  i=i+1

  
!write(*,'(A20)') Town(i)
!write(*,'(i3)') Rain(i)
end do    
close (10)

write (*,'(A,2x,i2,2x,A)') 'Exoume',i,'Poleis kai ta dedomena tous gia broxh'
write (*,'(A,2x,i5)') 'O mesos oros broxhs stis poleis einai',Mesos
end program