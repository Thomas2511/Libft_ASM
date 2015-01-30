# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afaucher <afaucher@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/22 20:30:19 by afaucher          #+#    #+#              #
#    Updated: 2015/01/30 15:13:17 by tdieumeg         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

AS = ~/.brew/bin/nasm
RM = /bin/rm
ASFLAGS = -f macho64
LD = ld
LDFLAGS = -macosx_version_min 10.7.0 -dylib -lc

NAME = libfts.a

SRC = ft_isalpha.s \
	  ft_isascii.s \
	  ft_isdigit.s \
	  ft_isalnum.s \
	  ft_bzero.s \
	  ft_strcat.s \
	  ft_puts.s \
	  ft_strlen.s \
	  ft_memset.s \
	  ft_memcpy.s \
	  ft_strdup.s \
	  ft_cat.s

OBJS   =	$(patsubst %.s,%.o,$(SRC))

all: $(NAME)

$(NAME): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^

%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) -f $(NAME)

re: fclean all
