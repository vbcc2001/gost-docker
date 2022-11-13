# gost Docker 容器
### 支持IPV6
### 支持tun

# 构造命令
docker buildx build -t vbcc2001/gost:v1 --platform linux/amd64 .
# 运行命令
docker run -d --name gost vbcc2001/gost:v1