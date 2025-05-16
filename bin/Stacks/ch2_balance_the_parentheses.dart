bool isBalanced(String input) {
  final stack = <String>[]; // ال stack لتخزين الاقواس المفتوحة '('

  for (var char in input.split("")) {
    if (char == "(") {
      stack.add(char);  // اذا لقينا قوس مفتوح نضيفه لل stack
    } else if (char == ")") {
      if (stack.isEmpty) {
        // اذا ما لقينا قوس مفتوح قبل للمطابقة يعني غير متوازن
        return false;
      }
      stack.removeLast(); // ازالة قوس مفتوح مطابق لقوس الاغلاق الحالي
    }
  }

  // اذا ال stack فارغ، يعني كل الاقواس المتفتوحة تم اغلاقها
  return stack.isEmpty;
}

void main() {
  print("--Balance Parentheses Examples:");
  print("(()) -> ${isBalanced("(())")}");
  print("(() -> ${isBalanced("(()")}");
  print("(()()) -> ${isBalanced("(()())")}");
  print(")() -> ${isBalanced(")()")}");
}
