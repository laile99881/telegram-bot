# 使用 Python 3.9 轻量版镜像作为基础镜像
FROM python:3.9-slim

# 设置工作目录为 /app
WORKDIR /app

# 复制 requirements.txt 到工作目录
COPY requirements.txt .

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目所有文件到工作目录
COPY . .

# 启动命令，运行 app.py
CMD ["python", "app.py"]
