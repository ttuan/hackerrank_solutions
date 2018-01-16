"""
Node is defined as
self.left (the left child of the node)
self.right (the right child of the node)
self.data (the value of the node)"""


"""
Top view of a binary tree is the set of nodes visible when the tree is viewed from the top.
So, when you are at top of a tree, the only thing you can see is nodes in left
and all nodes in right side
       1
    /     \
   2       3
  /  \    / \
 4    5  6   7


4 2 1 3 7
"""

def topView(root, order=0):
    if not root:
        return
    if order <= 0:
        topView(root.left, -1)
    print root.data,
    if order >= 0:
        topView(root.right, 1)
