#Body
"""
 Compare two linked list
 head could be None as well for empty list
 Node is defined as

 class Node(object):

   def __init__(self, data=None, next_node=None):
       self.data = data
       self.next = next_node

 return back the head of the linked list in the below method.
"""

def CompareLists(headA, headB):
    while headA and headB and headA.data == headB.data:
        headA = headA.next
        headB = headB.next
    return int(headA == headB)
