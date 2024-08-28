.model small
.data 
   myarr db 0,3,4,5,6,7,8,9,1,2
   num   db 4
   index db 0  
   isfound db 0 
   enter db 'Enter the number: $'
   found db 'number is present in the array at index $'
   notfound db 'number is not present in the array$'
.code
   mov ax, @data
   mov ds, ax
   
   mov si, offset myarr
   mov cx, 10   
   
   mov ah, 9
   lea dx, enter
   int 21h
   
   mov ah, 1
   int 21h
           
   
   mov num, al  
               
   mov dl, 10
   mov ah, 2
   int 21h
   
   mov dl, 13
   mov ah, 2
   int 21h
   
    

loopup:
   mov al, [si] 
   
   add al, 48
   cmp num, al
   je exit
   inc index
   inc si
   loop loopup
   jmp exitt           
   
exit:
   mov isfound, 1 
   mov ah, 9
   lea dx, found 
   int 21h
   
   add index, 48
   mov dl, index
   mov ah, 2
   int 21h 
   jmp mainexit
   
exitt:
   mov ah, 9
   lea dx, notfound
   int 21h
mainexit:
   mov ah, 4ch
   int 21h
   ends
end  