
// for given x print all numbers from x up to 0 which are divided by 3 without a remainder

.data
numberX dword 10

.code
mov eax, numberX
mov ebx, 3
move edx, 0
move ecx numberX

L1:
   div eax, ebx
   cmp edx, 0
   jne L2
   print(eax)
   loop L1

L2:
  nop



//  write a procedure for this calculation (-(x * y) + (x / y) - y / (x + y)) 

expression PROC

mov eax, esi    ; esi is our x 
mul eax, edi    ; edi is our y
mov ebx, eax
mov eax, esi
div eax, edi
sub eax, ebx

mov ebx, esi
add ebx, edi
mov ecx, edi
div ecx, ebx
sub eax, ebx

expression ENDP

main PROC
.data 
x dword 0
y dword 0

.code 
SCAN x
SCAN y
mov esi, x
mov edi, y
call expression

PRINT(eax)



