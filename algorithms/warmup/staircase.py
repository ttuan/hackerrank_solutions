#!/bin/python

import sys

def staircase(n):
  for i in range(1,n+1):
    print (n - i)*" " + i*"#"

if __name__ == "__main__":
  n = int(raw_input().strip())
  staircase(n)

