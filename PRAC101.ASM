.model small 
.stack 100h

.data 
    msg1 db "Good morning$"
    msg2 db "Welcome to IIITDM$"
    msg3 db "This is the first lab of COA practice$"
    msg4 db "Thank you$"

.code 
    mov ax ,@data 
    mov ds , ax

    mov ah , 09h
    lea dx , msg1
    int 21h

    mov dl ,20h  ?for space ascii value in hexadecimal
    mov ah ,02h
    int 21h

    mov ah ,09h
    lea dx , msg2
    int 21h

    mov dl ,10
    mov ah ,02h
    int 21h

    mov ah ,09h
    lea dx , msg3
    int 21h

    mov dl ,10
    mov ah ,02h
    int 21h

    mov ah ,09h
    lea dx , msg4
    int 21h

    mov ax ,4c00h
    int 21h

end    