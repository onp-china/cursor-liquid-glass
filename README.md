# Cursor Liquid Glass (Material Theme Palenight)

macOS 上 Cursor 的磨砂玻璃主题配置：**Material Theme Palenight** 语法高亮 + **Vibrancy Continued** 透明背景。

## 说明

**本仓库不是从零实现的磨砂方案**，而是基于社区已有项目和个人配置整理、微调后的**使用记录与备份**。

我们做的是：

- 选用并组合现有扩展与主题
- 在他人方案基础上调整透明度、聊天区分层、对比度等参数
- 把最终可用的 `settings` / CSS 片段保存下来，方便换机恢复

核心能力来自以下项目（感谢原作者）：

| 来源 | 作用 |
|------|------|
| [Vibrancy Continued](https://github.com/illixion/vscode-vibrancy-continued) | macOS 窗口磨砂 / 透明（`illixion.vscode-vibrancy-continued`） |
| [Material Theme](https://github.com/material-theme/vsc-material-theme) | 语法高亮与 UI 配色（`equinusocio.vsc-material-theme`） |
| [cursor-ai-liquid-glass-themes](https://github.com/ramonclaudio/cursor-ai-liquid-glass-themes) | Liquid Glass 思路与 Vibrancy 配置参考 |
| Vibrancy 扩展内置 `Cursor Dark.css` fix | Cursor 聊天区 / 侧边栏透明修复（随扩展自动加载） |

本仓库中**唯一自写部分**是 `liquid-glass-chat-fix.css` 及 `settings.vibrancy.json` 里的参数组合——即在上述方案之上的个人定制，并非独立开发的渲染引擎或主题框架。

## 特性

- 编辑器 / 侧边栏 / 聊天区磨砂透明
- 保留 Material Theme 插件的语法高亮与语义高亮
- 聊天区 bubble / 输入框分层，避免叠加重影
- 侧边栏文件名、状态栏图标对比度增强

## 依赖扩展

```bash
cursor --install-extension illixion.vscode-vibrancy-continued
cursor --install-extension equinusocio.vsc-material-theme
cursor --install-extension equinusocio.vsc-material-theme-icons
```

或：`cat extensions.txt | xargs -L1 cursor --install-extension`

## 安装

```bash
git clone https://github.com/onp-china/cursor-liquid-glass.git
cd cursor-liquid-glass
chmod +x install.sh
./install.sh
```

将 `settings.vibrancy.json` 中的配置**合并**进：

`~/Library/Application Support/Cursor/User/settings.json`

并把 `vscode_vibrancy.imports` 里的路径改为你本机的绝对路径，例如：

```json
"/Users/kiki/Library/Application Support/Cursor/User/liquid-glass-chat-fix.css"
```

## 启用

1. `Cmd + Shift + P` → **Reload Vibrancy**（或 **Enable Vibrancy**）
2. `Cmd + Q` 完全退出 Cursor 后重新打开

## 系统要求

- macOS（Vibrancy 依赖系统透明效果）
- 系统设置 → 辅助功能 → **降低透明度**：关闭

## Cursor 更新后

每次 Cursor 大版本更新后可能需要：

1. `Cmd + Shift + P` → **Reload Vibrancy**
2. 若出现 corrupt 警告 → 扩展中 Disable 再 Enable Vibrancy

## 文件说明

| 文件 | 说明 |
|------|------|
| `liquid-glass-chat-fix.css` | 自定义磨砂 CSS（空编辑器、聊天区、侧边栏/状态栏） |
| `settings.vibrancy.json` | 需合并进 Cursor settings 的配置片段 |
| `extensions.txt` | 必需扩展列表 |
| `install.sh` | 复制 CSS 到 Cursor User 目录 |

## 微调

- 磨砂强度：`vscode_vibrancy.opacity`（默认 `0.25`）
- 聊天 bubble 透明度：CSS 变量 `--vibrancy-chat-bubble`
- 更亮语法对比：可换 `Material Theme Palenight High Contrast`
