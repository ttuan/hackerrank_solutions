"""
 Find the node at which both lists merge and return the data of that node.
 head could be None as well for empty list
 Node is defined as

 class Node(object):

   def __init__(self, data=None, next_node=None):
       self.data = data
       self.next = next_node


"""

"""
Say one list is x long and merges at j. And the other list is y long and merges at k.

One iterator will take j steps to hit the merge point, then x-j steps to hit the end, then it will go to the other list and take k steps to hit the merge point. Total1 = j + (x-j) + k.

The other iterator will take k steps to hit the merge, y-k to hit the end, then will go to the other list and take j steps to hit the merge. Total2 = k + (y-k) + j.

Since the second part of both lists is the same sequence, x-j is the same as y-k. Call that number q. Plugging that into both totals gives j + q + k for the first and k + q + j for the second. Which are obviously equal. So they travel to the merge point in the same number of steps.
"""

def FindMergeNode(headA, headB):
    currentA, currentB = headA, headB

    while currentA != currentB:
        if currentA.next == None:
            currentA = headB
        else:
            currentA = currentA.next

        if currentB.next == None:
            currentB = headA
        else:
            currentB = currentB.next

    return currentA.data
