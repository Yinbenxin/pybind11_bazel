workspace(name = "pybind")

load("//bazel:repositories.bzl", "pybind_deps")

pybind_deps()

load("@rules_python//python:repositories.bzl", "py_repositories")

py_repositories()

load("@pybind11_bazel//:python_configure.bzl", "python_configure")

python_configure(
    name = "local_config_python",
    python_version = "3",
)