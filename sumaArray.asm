section .bss
longitud: resw 1

section .data
global suma_vf
suma_vf:
    push ebp                
    mov ebp,esp
    xor ecx, ecx


    mov eax, [ebp+8]
    push eax
    mov eax, [ebp+12]
    mov [longitud], eax
    pop eax

load:
    fld dword[eax]
    inc ecx
    add eax, 4
    cmp ecx, [longitud]
    jnz load
    
sum:
    fadd
    dec ecx
    cmp ecx, 1
    jnz sum

    pop ebp             
    ret
