FROM node:20-slim

# 安装 kilocli pnpm
RUN npm install -g @kilocode/cli pnpm

RUN apt-get update

# # 安装 google
# RUN DEBIAN_FRONTEND=noninteractive \
#     apt-get install -y --no-install-recommends \
#     wget xdg-utils fonts-wqy-zenhei fonts-wqy-microhei fonts-noto-cjk fonts-noto-cjk-extra
# RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# # 下载失败可以手动下载后放到当前文件夹下
# # COPY ./google-chrome-stable_current_amd64.deb .
# RUN apt-get install -y --no-install-recommends \
#     ./google-chrome-stable_current_amd64.deb 
# RUN rm google-chrome-stable_current_amd64.deb 

# 安装git和ssh
RUN apt-get install -y --no-install-recommends git openssh-client

RUN apt-get clean 
RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*; 

# 工作目录
WORKDIR /workspace

EXPOSE 3000

# 默认命令
ENTRYPOINT ["kilo"]
CMD ["serve", "--hostname", "0.0.0.0", "--port", "3000"]

# 打包  docker build -t kilocli-server -f ./Dockerfile.kilocli .
# 替换端口案例
#   docker run -p 8080:3333 kilocli-server serve --hostname 0.0.0.0 --port 3333