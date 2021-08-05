# Pared down from https://kate.io/blog/2017/08/22/weird-python-integers/
# Prints 5.

import ctypes
ctypes.memmove(id(3) + 24, id(5) + 24, 8)

print(1 + 2)
