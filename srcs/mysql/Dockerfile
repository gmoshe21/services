# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmoshe <gmoshe@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/19 13:34:30 by gmoshe            #+#    #+#              #
#    Updated: 2020/10/21 19:08:21 by gmoshe           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

RUN apk update
RUN apk upgrade
RUN apk add mysql mysql-client
RUN apk add openrc
VOLUME [ "/var/lib/mysql" ]

COPY ./sql_config.sql /etc/
COPY ./my.cnf /etc/
COPY ./wordpress.sql /etc/
COPY ./start.sh .

RUN chmod u+x start.sh

EXPOSE 3306
ENTRYPOINT [ "sh", "start.sh" ]