import 'node.dart';

// دالة لطباعة عناصر القائمة
void printList(Node? head) {
  Node? current = head;
  while (current != null) {
    print(current); // نطبع قيمة العقدة الحالية
    current = current.next; // ننتقل الى العقدة التالية
  }
}

// دالة لطباعة عناصر القائمة بالعكس
void printReverse(Node? node) {
  if (node == null) {
    // اذا وصلنا لنهاية القائمة null نخرج من الدالة
    return;
  }

  // نستدعي الدالة لنهاية القائمة نصل للعقدة الاخيرة
  printReverse(node.next);

  //  بعد الرجوع من كل استدعاء بنطبع من العقدة الاخيرة الى الاولى
  print(node);
}

void main() {
  Node head = Node(1);
  head.next = Node(2);
  head.next!.next = Node(3);
  head.next!.next!.next = Node(4);

  // طباعة القائمة بالشكل الطبيعي
  print("--Print Linked List Originally:");
  printList(head);

  // طباعة القائمة بشكل عكسي
  print("--Print Linked List in Reverse:");
  printReverse(head);
}
