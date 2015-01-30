#include <stdio.h>
#include <libc.h>
#include "test.h"

int main()
{
	char s[] = "prout";
	char s1[] = "prout";
	char s2[] = "pouet";
	char s3[] = "plope";
	int i;

	for(i = 0; i < 128; i++)
	{
		printf("%c - %d - %d  - %d - %d \n", i, ft_isascii(i), ft_isalpha(i), ft_isdigit(i), ft_isalnum(i));
	}
	printf("bzero: %s\n", ft_bzero(s, 5));
	printf("strcat: %s\n", ft_strcat(s1, s2));
	puts("plop");
	printf("puts: %d\n", ft_puts(s2));
	printf("len: %d\n", ft_strlen("12345"));
	printf("memset: %s\n", (char *)ft_memset(s3, 'x', 3));
	printf("memcpy: %s\n", (char *)ft_memcpy(s3, s2, 3));
	printf("strdup: %s\n", (char *)ft_strdup(s1));
	ft_cat(0);
	ft_cat(-1);
	return 0;
}
