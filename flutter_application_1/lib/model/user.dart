class User {
  final String name;
  final String email;
  final String address;
  final String book;
  final String game;

  const User(
      {required this.name,
      required this.address,
      required this.email,
      required this.book,
      required this.game});

  static User fromJson(Map<String, dynamic> json) => User(
        name: json['name'],
        email: json['email'],
        address: json['address'],
        book: json['book'],
        game: json['game'],
      );

  Map<String, String> toJson() => {
        'name': name,
        'email': email,
        'address': address,
        'book': book,
        'game': game,
      };

  User copy({
    String? name,
    String? email,
    String? address,
    String? book,
    String? game,
  }) =>
      User(
        name: name ?? this.name,
        email: email ?? this.email,
        address: address ?? this.address,
        book: book ?? this.book,
        game: game ?? this.game,
      );
}
