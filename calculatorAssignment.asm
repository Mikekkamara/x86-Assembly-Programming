
org 100h

jmp welcome            

welcomeMessage1 db "-------------------------------------------------- $"
welcomeMessage2 db 0dh,0ah," ","Welcome, $" 
welcomeMessage3 db "Command Line Calculator $"
welcomeMessage4 db 0dh,0ah,"-------------------------------------------------- $"
optionsMessage db 0dh,0ah,"Please Select Operation To perform $" 
additionOption db 0dh,0ah,"1. Addition  $"
subractionOption db 0dh,0ah,"2. Subtraction   $"
divisionOption db 0dh,0ah,"3. Division  $"
multiplicationOption db 0dh,0ah,"4. Multiplication    $"
 

welcome:
    mov dx, offset welcomeMessage1 
    mov ah, 9
    int 21h 
    mov dx, offset welcomeMessage2
    mov ah, 9
    int 21h
    mov dx, offset welcomeMessage3
    mov ah, 9
    int 21h
    mov dx, offset welcomeMessage4
    mov ah, 9
    int 21h
    mov ah,06h
    mov al,00h
    int 10h
    ;jmp options

options:
    mov dx, offset optionsMessage
    mov ah, 9
    int 21h
    mov dx, offset additionOption
    mov ah, 9
    int 21h
    mov dx, offset subractionOption
    mov ah, 9
    int 21h
    mov dx, offset divisionOption
    mov ah, 9
    int 21h
    mov dx, offset multiplicationOption
    mov ah, 9
    int 21h
    mov ah,1
    int 21h
ret




