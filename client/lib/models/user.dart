import 'dart:convert';

class User {
  final String id;
  final String username;
  final String level;
  final String email;
  final String phonenumber;
  final String password;
  final String token;
  final String type;

  User(
      {required this.id,
      required this.username,
      required this.level,
      required this.email,
      required this.phonenumber,
      required this.password,
      required this.token,
      required this.type});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'level': level,
      'email': email,
      'phonenumber': phonenumber,
      'password': password,
      'type': type,
      'token': token,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] ?? '',
      username: map['username'] ?? '',
      level: map['level'] ?? '',
      email: map['email'] ?? '',
      phonenumber: map['phonenumber'] ?? '',
      password: map['password'] ?? '',
      type: map['type'] ?? '',
      token: map['token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
