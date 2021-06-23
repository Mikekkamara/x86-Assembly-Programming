
org 100h

jmp start

msg: db "H", 0dh,0ah,"e", 0dh,0ah,"l", 0dh,0ah,"l", 0dh,0ah,"o", 0dh,0ah," ", 0dh,0ah,"W", 0dh,0ah,"o", 0dh,0ah,"r", 0dh,0ah, "l", 0dh,0ah, "d $"


start:
mov ah, 9
mov dx, offset msg
int 21h
mov ah, 0
int 16h



ret




