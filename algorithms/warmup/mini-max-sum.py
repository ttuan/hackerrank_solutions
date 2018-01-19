import sys

def miniMaxSum(arr):
    s = sum(arr)
    print (s - max(arr)), (s - min(arr))

if __name__ == "__main__":
    arr = map(int, raw_input().strip().split(' '))
    miniMaxSum(arr)

