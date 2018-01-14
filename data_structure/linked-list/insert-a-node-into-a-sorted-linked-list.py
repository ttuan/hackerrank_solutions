def SortedInsert(head, data):
    new_node = Node()
    new_node.data = data
    if new_node.data < head.data:
        new_node.next = head
        head.prev = new_node
        return new_node
    else:
        this_node = head
        that_node = head.next
        while((that_node != None) and (new_node.data > that_node.data)):
            this_node = that_node
            that_node = that_node.next
        if that_node == None:
            this_node.next = new_node
            new_node.prev = this_node
        else:
            this_node.next = new_node
            that_node.prev = new_node
            new_node.prev = this_node
            new_node.next = that_node

        this_node = head

        while this_node!=None:
            this_node = this_node.next
        return head
