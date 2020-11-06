# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmoshe <gmoshe@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/19 16:52:17 by gmoshe            #+#    #+#              #
#    Updated: 2020/10/20 14:08:22 by gmoshe           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

RUN apk update
RUN apk upgrade
RUN apk add wget
RUN apk add openssl
RUN apk add php7 php7-fpm php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session
RUN apk add openssh

RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN mv wordpress /www/
RUN rm latest.zip

COPY wp-config.php /www/
COPY ./start.sh .
RUN chmod u+x start.sh

EXPOSE 5050
ENTRYPOINT [ "sh", "start.sh" ]