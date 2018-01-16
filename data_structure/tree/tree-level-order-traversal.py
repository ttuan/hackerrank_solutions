"""
Node is defined as
self.left (the left child of the node)
self.right (the right child of the node)
self.data (the value of the node)
"""
def levelOrder(root):
    ans, level = [], [root]

    while root and level:
        currentNodes = []
        nextLevel = []
        for node in level:
            currentNodes.append(node.data)
            if node.left:
                nextLevel.append(node.left)
            if node.right:
                nextLevel.append(node.right)
        ans += currentNodes
        level = nextLevel

    for a in ans:
        print a
