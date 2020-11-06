# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmoshe <gmoshe@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/22 11:26:44 by gmoshe            #+#    #+#              #
#    Updated: 2020/10/22 11:26:49 by gmoshe           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

RUN	apk update
RUN	apk add openrc openssl vsftpd
RUN apk add --no-cache --upgrade bash && rm -rf /var/cache/apk/*
RUN mkdir -p /var/ftp

COPY ./vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY start.sh /start.sh
RUN chmod u+x /start.sh
RUN	mkdir -p /ftp_anon /gmoshe
RUN	printf "move files from the window on the left here\n" > /gmoshe/Readme.txt
RUN	printf "gmoshe\ngmoshe\n" | adduser gmoshe -s /bin/false -h /gmoshe
RUN	printf "/bin/false\n" >> /etc/shells
RUN	chown gmoshe:gmoshe /gmoshe
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=AB/ST=CD/L=EF/O=21/CN=gmoshe' -keyout /etc/vsftpd/vsftpd.key -out /etc/vsftpd/vsftpd.crt

EXPOSE	20 21 21000-22000

ENTRYPOINT [ "sh", "start.sh" ]