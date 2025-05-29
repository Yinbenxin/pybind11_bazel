
# 导入basic模块
import basic

def add(a, b):
    """调用C++实现的add函数"""
    return basic.add(a, b)


if __name__ == "__main__":
    # 测试add函数
    result = add(1, 2)
    print(f"1 + 2 = {result}")
