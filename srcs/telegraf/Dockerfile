# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmoshe <gmoshe@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/22 11:37:06 by gmoshe            #+#    #+#              #
#    Updated: 2020/10/22 11:37:09 by gmoshe           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

RUN		apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/

ENTRYPOINT ["telegraf"]
