---
title: 远程 SSH 使用 Codex：转发本地 Clash 代理到服务器
date: 2025-06-21 12:00:00
categories:
  - 技术教程
  - 网络配置
tags:
  - Clash
  - SSH
  - Linux
  - 代理
  - 教程
description: 详解将本地 Clash 代理转发至远程服务器，以便在 Remote SSH 会话中顺利使用 Codex 插件和其他联网工具的完整流程
---

# 🧭 一步一步：让远程服务器通过本地 Clash 科学上网 + 复制认证文件

> 适用于任何 Ubuntu / Debian / 其他 Linux 服务器，通过本地 Clash 代理实现科学上网，同时完成 `.codex/auth.json` 等认证文件的复制。

## 0️⃣ 前置准备：确认本地代理正常

先确保你本地的 Clash 能联网。在**本地电脑终端**执行：

```bash
curl -x http://127.0.0.1:7897 -I https://www.google.com
```

若返回 `HTTP/2 200` 或 `301 / 308`，说明代理可用 ✅

> Clash 默认端口：
>
> - HTTP(S)：7897
> - SOCKS5：7898  
>   可在 Clash Dashboard 查看端口。

## 1️⃣ 建立 SSH 反向代理隧道

关键步骤：让远程服务器“反向”访问你本地的代理。在**本地电脑**执行：

```bash
ssh -p <服务器端口> \
    -R 7897:127.0.0.1:7897 \
    -o ServerAliveInterval=60 \
    root@<服务器地址>
```

示例：

```bash
ssh -p 30065 -R 7897:127.0.0.1:7897 -o ServerAliveInterval=60 root@connect.westc.gpuhub.com
```

| 参数 | 含义 |
| ---- | ---- |
| `-R 7897:127.0.0.1:7897` | 把远程的 127.0.0.1:7897 转发到本地 Clash 代理端口 |
| `ServerAliveInterval=60` | 每 60 秒发一次心跳，防止断连 |
| `-p` | SSH 端口号 |

> 保持此连接不要断，它就是“桥梁”。如果想后台运行，可配合 `autossh` 实现自动重连。

## 2️⃣ 在远程服务器上设置代理环境变量

### 2.1 临时设置（当前会话生效）

在远程终端执行：

```bash
export http_proxy="http://127.0.0.1:7897"
export https_proxy="http://127.0.0.1:7897"
export no_proxy="localhost,127.0.0.1,.local"
```

测试：

```bash
curl -I https://chat.openai.com
curl -I https://www.google.com
```

如返回 200 / 30x 响应，即代理生效 ✅

### 2.2 永久生效（登录自动加载）

将上述环境变量追加到 shell 配置文件。

#### bash

```bash
echo 'export http_proxy="http://127.0.0.1:7897"' >> ~/.bashrc
echo 'export https_proxy="http://127.0.0.1:7897"' >> ~/.bashrc
echo 'export no_proxy="localhost,127.0.0.1,.local"' >> ~/.bashrc
source ~/.bashrc
```

#### zsh

```bash
echo 'export http_proxy="http://127.0.0.1:7897"' >> ~/.zshrc
echo 'export https_proxy="http://127.0.0.1:7897"' >> ~/.zshrc
echo 'export no_proxy="localhost,127.0.0.1,.local"' >> ~/.zshrc
source ~/.zshrc
```

## 3️⃣ 测试代理是否生效

在远程服务器执行：

```bash
curl -I https://www.google.com
curl -I https://chat.openai.com
```

若输出包含 `HTTP/1.1 200 Connection established` 或 `HTTP/2 200`，说明代理成功。

其他命令测试示例：

```bash
pip install requests
apt update
git clone https://github.com/openai/openai-cookbook.git
```

## 4️⃣ 复制 `.codex/auth.json`（或其他认证文件）

若远程服务器需要访问 ChatGPT / Codex 等服务，需要同步认证文件。

假设本机路径为 `~/.codex/auth.json`：

### 拷贝整个 `.codex` 文件夹

```bash
scp -P <服务器端口> -r ~/.codex root@<服务器地址>:~
```

示例：

```bash
scp -P 30065 -r ~/.codex root@connect.westc.gpuhub.com:~
```

### 或仅拷贝 `auth.json`

```bash
ssh -p <服务器端口> root@<服务器地址> "mkdir -p ~/.codex"
scp -P <服务器端口> ~/.codex/auth.json root@<服务器地址>:~/.codex/
```

### 远程服务器确认

```bash
ls -la ~/.codex
chmod 700 ~/.codex
chmod 600 ~/.codex/auth.json
```

## 5️⃣ VS Code Remote SSH 自动化配置（推荐）

在本地编辑 `~/.ssh/config`：

```bash
nano ~/.ssh/config
```

添加配置：

```
Host myserver
    HostName <服务器地址>
    Port <端口号>
    User root
    RemoteForward 7897 127.0.0.1:7897
    ServerAliveInterval 60
```

示例：

```
Host gpuhub-westc
    HostName connect.westc.gpuhub.com
    Port 30065
    User root
    RemoteForward 7897 127.0.0.1:7897
    ServerAliveInterval 60
```

之后在 VS Code 选择 `gpuhub-westc` 连接即可自动建立代理隧道。

## 6️⃣ 验证代理端口监听状态

在远程执行：

```bash
ss -lnpt | grep 7897
# 或
netstat -lnpt 2>/dev/null | grep 7897
```

出现如下输出代表 SSH 已成功建立反向转发：

```
LISTEN  0  128 127.0.0.1:7897  *:*  users:(("sshd",pid=xxx,fd=3))
```

## 7️⃣ 常见问题排查

| 问题 | 原因 | 解决方案 |
| ---- | ---- | -------- |
| `Connection refused` | 本地 Clash 未运行或端口不匹配 | 检查本地代理状态与端口号 |
| `curl` 卡住或超时 | SSH 隧道断开 | 保持连接或使用 `autossh` 自动重连 |
| `.codex` 权限错误 | 认证文件权限过宽被拒 | 执行 `chmod 600 ~/.codex/auth.json` |
| `apt` / `git` / `pip` 仍不走代理 | 未继承环境变量 | 在各自配置文件中单独设置代理 |

## 8️⃣ 一键命令模板（通用换主机）

替换以下变量即可复用：

- `PORT` → SSH 端口
- `HOST` → 服务器地址

```bash
# 本地建立隧道
ssh -p PORT -R 7897:127.0.0.1:7897 -o ServerAliveInterval=60 root@HOST

# 远程设置环境变量
echo 'export http_proxy="http://127.0.0.1:7897"' >> ~/.bashrc
echo 'export https_proxy="http://127.0.0.1:7897"' >> ~/.bashrc
echo 'export no_proxy="localhost,127.0.0.1,.local"' >> ~/.bashrc
source ~/.bashrc

# 拷贝认证
scp -P PORT -r ~/.codex root@HOST:~
```

---

🎉 完成！你现在拥有：

- 远程服务器的网络流量走本地 Clash 代理
- `.codex/auth.json` 等认证文件安全同步
- VS Code Remote SSH 自动转发配置
- 可快速迁移到任意新服务器的标准流程

随时换服务器、换端口、换账号，只需跟着本文操作即可。
