/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tdieumeg <tdieumeg@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/30 15:28:30 by tdieumeg          #+#    #+#             */
/*   Updated: 2015/01/30 15:28:39 by tdieumeg         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

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

#endif /* LIBFT_H */
