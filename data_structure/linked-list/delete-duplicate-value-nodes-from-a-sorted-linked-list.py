"""
 Delete duplicate nodes
 head could be None as well for empty list
 Node is defined as

 class Node(object):

   def __init__(self, data=None, next_node=None):
       self.data = data
       self.next = next_node

 return back the head of the linked list in the below method.
"""

def RemoveDuplicates(head):
    if head == None or head.next == None:
        return head

    temp = head
    while head.next != None:
        if head.data == head.next.data:
            head.next = head.next.next
        else:
            head = head.next
    return temp
