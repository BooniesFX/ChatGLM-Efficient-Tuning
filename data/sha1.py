import sys
import hashlib

# 从命令行参数中获取文件名
filename = sys.argv[1]

# 打开文件并计算 SHA1 校验和
with open(filename, mode='rb') as f:
    sha1 = hashlib.sha1()
    while True:
        data = f.read(1024)  # 每次读取 1024 字节
        if not data:
            break
        sha1.update(data)

# 输出 SHA1 校验和
print(sha1.hexdigest())