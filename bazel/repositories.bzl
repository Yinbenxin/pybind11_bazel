load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def pybind_deps():
    _rule_proto()
    _rule_python()
    _rules_foreign_cc()

    _com_github_pybind11_bazel()
    _com_github_pybind11()
def _rule_proto():
    maybe(
        http_archive,
        name = "rules_proto",
        sha256 = "dc3fb206a2cb3441b485eb1e423165b231235a1ea9b031b4433cf7bc1fa460dd",
        strip_prefix = "rules_proto-5.3.0-21.7",
        urls = [
            "https://github.com/bazelbuild/rules_proto/archive/refs/tags/5.3.0-21.7.tar.gz",
        ],
    )
def _rules_foreign_cc():
    maybe(
        http_archive,
        name = "rules_foreign_cc",
        sha256 = "a2e6fb56e649c1ee79703e99aa0c9d13c6cc53c8d7a0cbb8797ab2888bbc99a3",
        strip_prefix = "rules_foreign_cc-0.12.0",
        url = "https://github.com/bazelbuild/rules_foreign_cc/releases/download/0.12.0/rules_foreign_cc-0.12.0.tar.gz",
    )
    
def _rule_python():
    maybe(
        http_archive,
        name = "rules_python",
        sha256 = "ca77768989a7f311186a29747e3e95c936a41dffac779aff6b443db22290d913",
        strip_prefix = "rules_python-0.36.0",
        urls = [
            "https://github.com/bazelbuild/rules_python/archive/refs/tags/0.36.0.tar.gz",
        ],
    )

def _com_github_pybind11_bazel():
    maybe(
        http_archive,
        name = "pybind11_bazel",
        sha256 = "dc4882b23a617575d0fd822aba88aa4a14133c3d428b5a8fb83d81d03444a475",
        strip_prefix = "pybind11_bazel-8889d39b2b925b2a47519ae09402a96f00ccf2b4",
        urls = [
            "https://github.com/pybind/pybind11_bazel/archive/8889d39b2b925b2a47519ae09402a96f00ccf2b4.zip",
        ],
    )

def _com_github_pybind11():
    maybe(
        http_archive,
        name = "pybind11",
        build_file = "@pybind11_bazel//:pybind11.BUILD",
        sha256 = "e08cb87f4773da97fa7b5f035de8763abc656d87d5773e62f6da0587d1f0ec20",
        strip_prefix = "pybind11-2.13.6",
        urls = [
            "https://github.com/pybind/pybind11/archive/refs/tags/v2.13.6.tar.gz",
        ],
    )
