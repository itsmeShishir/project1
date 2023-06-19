import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part "user.g.dart";

@Entity()
@JsonSerializable()
class User {
  @Id(assignable: true)
  int uid = 0;

  @Unique()
  @Index()
  @JsonKey(name: '_id')
  String? userId;

  String? username;
  String? fullname;
  String? email;
  String? password;

  // final role= ToOne<Role>();
  User(
      {this.username,
      this.fullname,
      this.email,
      this.password,
      this.userId,
      this.uid = 0});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> tojson() => _$UserToJson(this);
}
