"""
Node is defined as
self.left (the left child of the node)
self.right (the right child of the node)
self.data (the value of the node)
"""

#Solution is based on the following thought: The value of a common ancestor has to always be between the two values in question.

def lca(root , v1 , v2):
    if root.data < v1 and root.data < v2:
        return lca(root.right, v1, v2)
    if root.data > v1 and root.data > v2:
        return lca(root.left, v1, v2)
    return root
