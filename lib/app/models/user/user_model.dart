// ignore_for_file: non_constant_identifier_names

import 'package:flutter_fashion/app/models/image/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserModel({
    required int id,
    required String username,
    required String fullName,
    required String phone,
    required String email,
    required int role,
    required DateTime created_at,
    required Image image,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
