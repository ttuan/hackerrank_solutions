"""
Node is defined as
self.left (the left child of the node)
self.right (the right child of the node)
self.data (the value of the node)"""

def insert(root,val):
    if not root:
        root = Node('')
        root.data = val
        return root
    if root.data > val:
        root.left = insert(root.left, val)
    else:
        root.right = insert(root.right, val)
    return root


# No rescusive
def insert(root, val):
    newNode = Node('')
    newNode.data = val

    if root == None:
        return newNode

    current = None
    nextNode = root

    while nextNode != None:
        current = nextNode;
        nextNode = current.right if current.data < val else current.left

    if current.data < val:
        current.right = newNode
    else:
        current.left = newNode

    return root
