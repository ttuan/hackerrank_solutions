#Body
"""
 Get Node data of the Nth Node from the end.
 head could be None as well for empty list
 Node is defined as

 class Node(object):

   def __init__(self, data=None, next_node=None):
       self.data = data
       self.next = next_node

 return back the node data of the linked list in the below method.
"""

def GetNode(head, position):
    temp = head
    diff = 0

    while head.next != None:
        if diff >= position:
            temp = temp.next
        else:
            diff += 1
        head = head.next
    return temp.data
