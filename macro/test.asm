;; nasm test.asm

%define magic  2

%macro test 2
db 0x00, %1, %2
%endmacro


%macro php 0
db "<?php", 0
%endmacro


test magic, magic

php
