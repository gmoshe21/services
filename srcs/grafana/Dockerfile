# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmoshe <gmoshe@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/22 11:38:33 by gmoshe            #+#    #+#              #
#    Updated: 2020/10/22 11:38:36 by gmoshe           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

RUN apk update
RUN apk add grafana --repository=http://dl-3.alpinelinux.org/alpine/edge/testing/

COPY influxdb-datasource.yaml /usr/share/grafana/conf/provisioning/datasources/influxdb.yaml
COPY dashboards.yaml /usr/share/grafana/conf/provisioning/dashboards/dashboards.yaml
COPY ./json/* /var/lib/grafana/dashboards/

EXPOSE	3000
ENTRYPOINT [ "grafana-server", "--homepath=/usr/share/grafana" ]