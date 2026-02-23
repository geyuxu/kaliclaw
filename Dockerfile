# 使用 Kali 官方滚动更新镜像 (原生支持 ARM64/Apple Silicon)
FROM kalilinux/kali-rolling

# 替换源并安装核心安全工具包与依赖
RUN apt-get update && apt-get install -y --no-install-recommends \
    nmap \
    metasploit-framework \
    exploitdb \
    python3 \
    python3-pip \
    curl \
    git \
    ca-certificates \
    socat \
    && rm -rf /var/lib/apt/lists/*

# 安装 Node.js 22.x (OpenClaw 运行刚需)
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y nodejs

# 全局安装 OpenClaw
RUN npm install -g openclaw@latest

# 初始化工作目录与技能存放目录
WORKDIR /workspace
RUN mkdir -p /root/.openclaw/skills

# 启动 OpenClaw Gateway 服务
CMD ["openclaw", "gateway", "--port", "18789"]