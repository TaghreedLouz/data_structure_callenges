import 'node.dart';
Node? reverseList(Node? head) {
  Node? prev = null;        // العقدة السابقة بتكون null
  Node? current = head;     // نبدأ من اول القائمة

  while (current != null) {
    Node? nextNode = current.next; // نخزن العقدة التالية
    current.next = prev;            // نعيد توجيه العقدة الحالية للعقدة السابقة بعكس اتجاهها
    prev = current;                 // نحدث العقدة السابقة لتصبح الحالية
    current = nextNode;             // ننتقل إلى العقدة التالية المخزنة سابقا
  }

  return prev; // العقدة السابقة هي الراس الجديد للLinked List
}

// دالة لطباعة القائمة
void printList(Node? head) {
  Node? current = head;
  while (current != null) {
    print(current);
    current = current.next;
  }
}

void main() {
  Node head = Node(1);
  head.next = Node(2);
  head.next!.next = Node(3);

  print("--Original List:");
  printList(head);

  Node? reversedHead = reverseList(head);
  print("--Reversed List:");
  printList(reversedHead);
}
