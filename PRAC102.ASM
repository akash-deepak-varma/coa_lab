;Write a MASM program for adding three numbers statically and print the result (the
;sum should be less than 10).
;Input: three numbers
;Output: Sum of the numbers is X

.model small
.stack 100h

.data 
    num1 db 1
    num2 db 2
    num3 db 3
    sum db 0

    ms1 db "Sum of numbers is:$"

.code 
    mov ax ,@data 
    mov ds , ax 

    mov al , num1
    mov bl , num2 

    add al , bl 

    ;add al , 30h

    mov bl , num3

    add al , bl     

    mov sum , al 

    mov dl , sum

    add dl , 30h

    mov cl , dl 

    mov ah ,09h
    lea dx ,ms1 
    int 21h 


    mov dl ,cl 
    mov ah ,02h
    int 21h 

    mov ax ,4c00h
    int 21h 

end    
