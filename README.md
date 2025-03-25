# 202503 Zig Project

## Zig Android交叉编译示例

该仓库包含一个示例，展示了如何将一个简单的Zig应用程序交叉编译为Android平台应用。

### 项目概述

该示例展示了通过Zig语言将一个简单的 `main.zig` 文件编译为Android可执行文件，并在Android设备上运行的文件过程。

### 目录结构

- `main.zig`：主程序文件，包含简单的Zig代码。
- `main.o`：编译后的目标文件，作为交叉编译过程中间产物。
- `main`：编译后的可执行文件，适用于Android平台。
- `README.md`：项目文档，提供项目概述和使用说明。