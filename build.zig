const std = @import("std");

pub fn build(builder: *std.Build) void {
    // 设置Android目标架构
    const target = builder.resolveTargetQuery(.{ .cpu_arch = .aarch64, .os_tag = .linux, .abi = .android });

    // 选择优化模式
    const optimize = builder.standardOptimizeOption(.{ .preferred_optimize_mode = .Debug });

    // 生成JNI共享库
    const library = builder.addSharedLibrary(.{ .name = "main", .root_source_file = builder.path("src/main.zig"), .target = target, .optimize = optimize });

    builder.installArtifact(library);
}
