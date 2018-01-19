""" Node is defined as
class node:
  def __init__(self, data):
      self.data = data
      self.left = None
      self.right = None
"""

"""
Giai thuat duoc xay dung dua tren dac diem cua cay tim kiem nhi phan:
    + Moi node con ben trai se co gia tri nho hon gtri node cha
    + Moi node con ben phai se co gia tri lon hon gtri node cha
Y tuong se la check gia tri cua tung node, check xem no co nam trong pham vi cho
phep hay khong. Dung ngay gia tri node cha de tao pham vi thu hep do.
"""
def check_binary_search_tree(node, left=-1, right=10001):
    if not node:
        return True

    if node.data <= left or node.data >= right:
        return False

    return check_binary_search_tree(node.left, left, node.data) and
check_binary_search_tree(node.right, node.data, right)
