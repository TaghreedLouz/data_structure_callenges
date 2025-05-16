void reverseList(List<int> list) {
  //نستخدم قائمة الStack لتخزين العناصر مؤقت
  final stack = <int>[];

  // نضيف كل عنصر من القائمة في ال stack
  for (var item in list) {
    stack.add(item);
  }

  //  نطبع العناصر من ال stack بطريقة LIFO (اخر عنصر دخل يطلع اول) وبنتاكد انها مش فاضية عئان ينفذ الكود
  while (stack.isNotEmpty) {
    print(stack.removeLast()); // ازالة وطباعة اخر عنصر
  }
}

void main() {
  final list = [1, 2, 3, 4, 5];

  print("--Original List:");
  print(list);
  print("\n--Reverse List:");
  reverseList(list);
}
