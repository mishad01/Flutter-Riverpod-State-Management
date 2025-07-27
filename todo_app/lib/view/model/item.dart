class Item {
  String id;
  String name;
  final bool favourite;

  Item(this.favourite, {required this.id, required this.name});

  Item copyWith({String? id, String? name, bool? favourite}) {
    return Item(
      favourite ?? this.favourite,
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
