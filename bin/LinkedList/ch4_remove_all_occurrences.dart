import 'node.dart';
Node? removeOccurrences(Node? head, int value) {
  // بنحذف العقد المتكررة من البداية
  while (head != null && head.value == value) {
    head = head.next;  // ننتقل الى العقدة التالية ونتجاهل الحالية
  }

  Node? current = head;

  // حذف العقد المتكررة من بقية القائمة
  while (current != null && current.next != null) {
    if (current.next!.value == value) {
      // تخطي العقدة التي تحتوي على القيمة الي بدنا نحذفها
      current.next = current.next!.next;
    } else {
      // ننتقل الى العقدة التالية إذا لم نحذف شيئا
      current = current.next;
    }
  }

  return head; // الراس الجديد للقائمة بعد الحذف
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
  Node? head = Node(1);
  head.next = Node(2);
  head.next!.next = Node(2);
  head.next!.next!.next = Node(3);
  head.next!.next!.next!.next = Node(2);

  print("Original List:");
  printList(head);

  head = removeOccurrences(head, 2);

  print("List after removing 2:");
  printList(head);
}
