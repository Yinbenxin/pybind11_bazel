# Bazel Pybind11 示例

这是一个使用Bazel构建系统和Pybind11的示例项目，展示了如何在C++和Python之间创建绑定。

## 项目结构

```
├── add/
│   ├── BUILD           # Bazel构建规则
│   ├── __init__.py     # Python包初始化文件
│   ├── basic.cpp       # C++源代码
│   ├── basic.py        # Python包装器
│   └── basic_test.py   # 测试文件
└── bazel/
    ├── BUILD
    └── repositories.bzl # 外部依赖配置
```

## 功能

这个示例实现了一个简单的加法函数：
- C++中实现基础的加法运算
- 通过Pybind11将C++函数暴露给Python
- Python测试验证功能正确性

## 构建和测试

1. 构建Python扩展模块：
```bash
bazel build //add:basic.so
```

2. 构建并运行测试：
```bash
bazel test //add:basic_test
```

## 依赖

- Bazel构建系统
- Python 3
- Pybind11

所有依赖都通过Bazel的WORKSPACE文件自动管理，无需手动安装。