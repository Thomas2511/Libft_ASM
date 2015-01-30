#ifndef TEST_H
# define TEST_H

int		ft_isascii(int c);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
char	*ft_bzero(char *str, int size);
char	*ft_strcat(char *str, char *str2);
int		ft_puts(char *str);
int		ft_strlen(char *str);
void	*ft_memset(void *b, int c, int n);
void	*ft_memcpy(void *dst, const void *src, int n);
char	*ft_strdup(char *str);
int		ft_cat(int fd);

#endif /* TEST_H */
