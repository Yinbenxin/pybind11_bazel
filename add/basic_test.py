
# 导入basic模块
import basic

def test_add():
    # 测试add函数
    result1 = basic.add(1, 2)
    print(f"1 + 2 = {result1}")
    assert result1 == 3
    
    result2 = basic.add(2, 2)
    print(f"2 + 2 = {result2}")
    assert result2 == 4


if __name__ == "__main__":
    test_add()
    print("All tests passed!")