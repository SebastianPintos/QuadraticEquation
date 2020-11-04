extern printf

section .data 
          
            formato db "%f", 10, 0
            parcial1 dq 0.0
            parcial2 dq 0.0
            raiz dq 0.0
            cuatro dw 4
            dosA dq 0.0
            a dq 0.0
            b dq 0.0
            c dq 0.0
            res1 dq 0.0
            res2 dq 0.0
            
section .text

global CMAIN

CMAIN:
            push ebp
            mov ebp, esp
            
            fld dword[ebp + 8]
            fst qword[a]
            
            fld dword[ebp + 12]
            fst qword[b]
            
            fld dword[ebp + 16]
            fst qword[c]
            
            fld qword[c]            
            FMUL qword[a]
            FIMUL dword[cuatro]
            fst qword[parcial1]
            
            fld qword[b]
            FMUL qword[b]
            
            
            FSUB qword[parcial1]
            
            FSQRT
            fst qword[raiz]
            
            fld qword[a]
            fadd qword[a]
            fst qword[dosA]
            
            fld qword[b]
            fchs
            fadd qword[raiz]
            fdiv qword[dosA]
            fst qword[res1]
            
            
            push dword[res1+4]
            push dword[res1]
            push formato
            
            call printf
            
            
            fld qword[b]
            fchs
            fsub qword[raiz]
            fdiv qword[dosA]
            fst qword[res2]
            
            
            push dword[res2+4]
            push dword[res2]
            push formato
            
            call printf
            
            ret

