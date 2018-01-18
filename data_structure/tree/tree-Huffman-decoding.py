"""class Node:
    def __init__(self, freq,data):
        self.freq= freq
        self.data=data
        self.left = None
        self.right = None
"""

def decodeHuff(root , s):
    run_node = root
    result = ""
    for char in s:
        run_node = run_node.left if char == '0' else run_node.right
        if not run_node.left and not run_node.right:
            result += run_node.data
            run_node = root
    print result
