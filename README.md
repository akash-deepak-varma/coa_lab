This the git repo for the Assembly where I will upload the code I do in IIITDM 
anyone can use them my main motto is to help others even a little bit from my knowledge 

and here is some of impotant parts in assembly 
-> print:
    mov ah, 09h                             ; load the system call number 9 to ah
    lea dx, msg                             ; load the EA of message in to dx
    int 21 h                                ; call the interrupt

->  printing ascii or someting in the register
    mov dl,cl                               ; move the result to dl
    mov ah, 02h                             ; result printing
    int 21h

->  taking input from the user
    mov ah, 01h                             ; load the system call number 1 to ah
    int 21 h ; call the interrupt           ; the entered value is in accumulator

->  Exit call
    mov ax, 4c00h
    int 21h
    


    points to be noted
    

    *All arthemetic op can only be done in registetr.
    
