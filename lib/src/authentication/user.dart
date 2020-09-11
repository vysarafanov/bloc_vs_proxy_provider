class User {
  final int id;
  final bool isAnon;

  const User(
    this.id, {
    this.isAnon: false,
  });

  @override
  String toString() => 'User(id: $id, isAnon: $isAnon)';

  @override
  bool operator ==(other) =>
      other is User && other.id == id && other.isAnon == isAnon;

  @override
  int get hashCode => id.hashCode ^ isAnon.hashCode;
}
