; no link for today
section .data
    seed dq 0x853c49e6748fea9b      ; Initial non-zero 64-bit seed value

section .text
    global generate_seed

; uint64_t generate_seed(void)
generate_seed:
    mov     rax, [rel seed]         ; Load current seed
    
    ; x ^= x << 13
    mov     rdx, rax
    shl     rdx, 13
    xor     rax, rdx

    ; x ^= x >> 7
    mov     rdx, rax
    shr     rdx, 7
    xor     rax, rdx

    ; x ^= x << 17
    mov     rdx, rax
    shl     rdx, 17
    xor     rax, rdx

    mov     [rel seed], rax         ; Store new seed back
    ret                             ; Return 64-bit seed in RAX
