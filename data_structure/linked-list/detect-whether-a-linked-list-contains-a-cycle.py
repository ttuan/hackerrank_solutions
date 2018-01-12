"""
Detect a cycle in a linked list. Note that the head pointer may be 'None' if the list is empty.

A Node is defined as:

    class Node(object):
        def __init__(self, data = None, next_node = None):
            self.data = data
            self.next = next_node
"""

"""
https://en.wikipedia.org/wiki/Cycle_detection#Tortoise_and_hare

The idea is to have two references to the list and move them at different speeds. Move one forward by 1 node and the other by 2 nodes.

    If the linked list has a loop they will definitely meet.
    Else either of the two references(or their next) will become null.
"""

def has_cycle(head):
    if head == None:
        return false

    slow = head
    fast = head

    while True:
        slow = slow.next

        if fast.next != None:
            fast = fast.next.next
        else:
            return 0

        if slow == None or fast == None:
            return 0

        if slow == fast:
            return 1
