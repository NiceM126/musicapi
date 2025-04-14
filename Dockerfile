FROM python:3.9-alpine

# 设置工作目录
ADD . /app
WORKDIR /app

# 设置国内源，安装nodejs
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk add --update --no-cache curl nodejs

# 安装Python依赖
RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/ --trusted-host pypi.tuna.tsinghua.edu.cn

# 暴露端口
EXPOSE 7878

# 启动命令
CMD ["python", "main.py"] 