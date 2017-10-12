;; nasm -f elf32 -o hello_php.o hello_php.asm
;; gcc -m32 -o hello_php.php hello_php.o
;; ./hello_php.php
;; php ./hello_php.php
;; readelf --sections ./hello_php.php

extern puts
global main
	section .brzdek
	db "<?php echo phpinfo(); die(); ?>"

        section .data
msg:    db "Hello World!", 0

        section .text
main:
        ;;  puts (msg)
        push msg
        call puts
        add esp, 4

        ;;  return 0
        mov eax, 0
        ret
