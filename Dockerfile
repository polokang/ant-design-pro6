# 使用 Node.js 14 镜像
FROM node:18

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json（如果存在）
COPY package*.json ./

# 安装应用程序依赖
RUN npm install

# 复制整个应用程序代码
COPY . .

# 构建项目
RUN npm run build

# 暴露运行时端口（适应你的项目配置）
EXPOSE 8000

# 启动应用程序
CMD ["npm", "start"]

# 打包前先将 src/.umi 和 node_modules/.cache 目录删除