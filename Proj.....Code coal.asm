.model small
.stack 100h
.data
    msg1 db 'Fetching Instruction...', 13, 10, '$'
    msg2 db 'Decoding Instruction...', 13, 10, '$'
    msg3 db 'Executing Instruction...', 13, 10, '$'
    msg4 db 'Storing Result...', 13, 10, '$'
    result db 0

.code
main:
    mov ax, @data
    mov ds, ax

    
    lea dx, msg1
    call print_msg
    nop 

 
    lea dx, msg2
    call print_msg
    nop 

 
    lea dx, msg3
    call print_msg
    mov al, 5
    mov bl, 3
    add al, bl

   
    lea dx, msg4
    call print_msg
    mov result, al

   
    mov ah, 4ch
    int 21h

print_msg:
    mov ah, 09h
    int 21h
    ret


end main

