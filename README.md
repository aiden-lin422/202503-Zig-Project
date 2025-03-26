# 202503 Zig Project

## Zig Android交叉编译示例

该仓库包含一个示例，展示了如何将一个简单的Zig应用程序交叉编译嵌入Android平台应用。

### 项目概述

该示例展示了通过Zig语言将一个简单的 `main.zig` 文件编译为共享库文件，使其能在Android应用中运行的过程。

### 实现方式

1. 将 `libmain.so` 放入目标Android设备的 `app/src/main/jniLibs/arm64-v8a/` 目录。

2. 在 `Java` 或 `Kotlin` 代码中调用JNI库，如：

```Java
static {
    System.loadLibrary("main");
}
```

### 目录结构

- `src`：包含所需编译的源程序的目录。
    - `main.zig`：主程序文件，包含简单的Zig代码。
- `zig-out`：包含编译完成的文件的目录。
    - `lib`：包含编译完成的库文件的目录。
        - `libmain.so`：编译后的共享库文件，可被Android应用加载。
- `build.zig`：编译程序文件，包含编译主程序文件的Zig代码。
- `README.md`：项目文档，提供项目概述和使用说明。