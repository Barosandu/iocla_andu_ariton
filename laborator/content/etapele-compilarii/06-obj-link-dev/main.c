void set_price(int);
void print_price();

extern int qty;
void print_quantity();

int main(void)
{
	/*
	 * TODO: Make it so you print:
	 *    price is 21
	 *    quantity is 42
	 * without directly calling a printing function from an existing
	 * library(do NOT use printf, fprintf, fwrite, ...).
	 */
	set_price(42);
	print_price();

	qty = 42;
	print_quantity();
	return 0;
}
