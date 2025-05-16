import 'node.dart';
Node? findMiddle(Node? head) {
  // slow بخطوة واحدة    fast بخطوتين
  Node? slow = head;
  Node? fast = head;

  // تستمر طالما ال fast والعقدة التالية مش null
  while (fast != null && fast.next != null) {
    slow = slow!.next;          // خطوة واحدة للامام
    fast = fast.next!.next;     // خطوتين للامام
  }

  // عند انتهاء, ال slow يشير للعقدة الوسطى
  return slow;
}

void main() {
  Node head = Node(1);
  head.next = Node(2);
  head.next!.next = Node(3);
  head.next!.next!.next = Node(4);
  head.next!.next!.next!.next = Node(5);

  Node? middle = findMiddle(head);
  print("Middle Node Value: ${middle}");
}
