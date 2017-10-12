#include <stdio.h>
//gcc -S  -masm=intel -O0 ex.c
//https://gcc.gnu.org/onlinedocs/gcc-3.2/gcc/Variable-Attributes.html
//gcc --std=gnu99 custom_sections.c
int baz = 11;
char baw[] __attribute__((section("blah"))) = "<?php echo phpinfo(); die(); ?>";
int bar __attribute__((section("INITDATA"))) = 43;

int main()
{
  int x = 23;
  baz++;
  x++;
  bar++;
  printf("%s\n", baw);
  return 0;
}