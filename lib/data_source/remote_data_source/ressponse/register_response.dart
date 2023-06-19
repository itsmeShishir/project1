import "package:json_annotation/json_annotation.dart";

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  bool? success;
  String? message;

  RegisterResponse({
    this.success,
    this.message,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}
