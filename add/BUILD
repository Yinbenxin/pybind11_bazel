load("@pybind11_bazel//:build_defs.bzl", "pybind_extension")
load("@rules_python//python:defs.bzl", "py_library", "py_test")
package(default_visibility = ["//visibility:public"])

# 使用pybind_extension创建Python扩展
pybind_extension(
    name = "basic",
    srcs = ["basic.cpp"],
    linkopts = select({
        "@platforms//os:windows": ["/FORCE:UNRESOLVED"],
        "//conditions:default": [],
    }),
    deps = [],
)

# 创建Python库
py_library(
    name = "basic_lib",
    srcs = ["__init__.py"],  # 添加一个空的__init__.py文件
    data = [":basic.so"],  # 使用.so扩展名
    imports = ["."],
)

# 测试
py_test(
    name = "basic_test",
    srcs = ["basic_test.py"],
    deps = [":basic_lib"],
)
