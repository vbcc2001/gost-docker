FROM  alpine:latest
# 使用变量必须申明
ARG TARGETOS
ARG TARGETARCH
# add iptables for tun/tap
RUN apk add --no-cache iptables 
COPY ./builder/3.0.0-rc.0/gost-$TARGETOS-$TARGETARCH /bin/gost
COPY ./config.json /etc/gost/config.json
ENTRYPOINT ["/bin/gost","-C","/etc/gost/config.json"]