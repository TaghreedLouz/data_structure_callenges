class Node {
  int value;
  Node? next; //لما تكون null يعني اخر عقدة

  Node(this.value);

  @override
  String toString() {
    return "$value";
  }

}
