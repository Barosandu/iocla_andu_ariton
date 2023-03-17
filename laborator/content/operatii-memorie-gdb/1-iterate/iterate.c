// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

/*
 * Afisati adresele elementelor din vectorul "v" impreuna cu valorile
 * de la acestea.
 * Parcurgeti adresele, pe rand, din octet in octet,
 * din 2 in 2 octeti si apoi din 4 in 4.
 */

int main(void)
{
	int v[] = {0xCAFEBABE, 0xDEADBEEF, 0x0B00B135, 0xBAADF00D, 0xDEADC0DE};
	unsigned short* short_ptr = (unsigned short*)v;
	while(short_ptr && *short_ptr) {
		printf("%p -> 0x%x\n", short_ptr, *short_ptr);
		short_ptr ++;
	}
	
	
	int* int_ptr = (int*)v;
	while(int_ptr && *int_ptr) {
		printf("%p -> 0x%x\n", int_ptr, *int_ptr);;
		int_ptr ++;
	}

	return 0;
}
