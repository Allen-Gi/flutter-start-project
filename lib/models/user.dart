import 'dart:convert';

class User {
  final String uid;
  final String email;
  final String name;
  final String photoUrl;

  User({
    required this.uid,
    required this.email,
    required this.name,
    required this.photoUrl,
  });

  // toMap() method
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'photoUrl': photoUrl,
    };
  }

  // factory constructor fromMap()
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      uid: map['uid'],
      email: map['email'],
      name: map['name'],
      photoUrl: map['photoUrl'],
    );
  }

  // toJson
  String toJson() => json.encode(toMap());

  // factory constructor fromJson()
  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  // copyWith() method
  User copyWith({
    String? uid,
    String? email,
    String? name,
    String? photoUrl,
  }) {
    return User(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      name: name ?? this.name,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }
}
