// class Item {
//   final int id;
//   final String name;
//
//   Item({required this.id, required this.name});
// }
//
// class Item {
//   final int id;
//   final String name;
//   final List<String> subItems;
//
//   Item({required this.id, required this.name, required this.subItems});
// }


class Item {
  final int id;
  final String name;
  final List<String> subItems;
  String? selectedSubItem;

  Item({
    required this.id,
    required this.name,
    required this.subItems,
    this.selectedSubItem,
  });
}