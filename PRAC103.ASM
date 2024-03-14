;Write a MASM program for reading two numbers (single digit) from key board and
;perform the addition, subtraction operation and print each result with appropriate
;messages. All the results should be less than 10.

.model small
.stack 100h

.data 
    num1 db 0
    num2 db 0

    ms1 db "ADD is:$"
    ms2 db "SUB is:$"
    ms3 db "MUL is:$"
    ms4 db "DIV is:$"
    ms5 db "r$"

    cms db "Enter the number:$"

.code 

    mov ax ,@data
    mov ds ,ax 

    mov ah ,09h
    lea dx ,cms 
    int 21h


    mov ah ,01h
    int 21h 

    sub al ,30h 
    mov num1 ,al

    mov dl ,10
    mov ah ,02h
    int 21h

     

    mov ah ,09h
    lea dx ,cms 
    int 21h

    mov ah ,01h
    int 21h 

    sub al ,30h 
    mov num2 ,al

    mov dl ,10
    mov ah ,02h
    int 21h

     

    mov ah ,09h
    lea dx ,ms1
    int 21h

    mov cl ,num1 
    mov bl ,num2

    add cl,bl 

    add cl ,30h

    mov dl , cl 
    mov ah ,02h
    int 21h

    mov dl ,10
    mov ah ,02h
    int 21h

    mov ah ,09h
    lea dx ,ms2
    int 21h

    mov cl ,num1
    mov dl ,num2

    sub cl,dl 

    add cl ,30h

    mov dl , cl 
    mov ah ,02h
    int 21h

    mov dl ,10
    mov ah ,02h
    int 21h

    mov ah ,09h
    lea dx ,ms3
    int 21h

    mov al ,num1 
    mov bl ,num2 

    mul bl 

    add al ,30h 

    mov dl ,al 
    mov ah ,02h
    int 21h

    mov dl ,10
    mov ah ,02h
    int 21h

    mov ah ,09h
    lea dx ,ms4
    int 21h

    mov bl,num1

    mov ax ,bl
    mov bl ,num2 

    div bl

    add al ,30h 
    add ah ,30h

    mov bh,ah

    mov dl ,al 
    mov ah ,02h
    int 21h


    mov ah ,09h
    lea dx ,ms5
    int 21h

    mov dl ,bh 
    mov ah ,02h
    int 21h





    mov ax ,4c00h
    int 21h

end       
