import 'package:freezed_annotation/freezed_annotation.dart';
part 'role.freezed.dart';
part 'role.g.dart';

@freezed
abstract class Role with _$Role {
  factory Role({
    @JsonKey(name: '_id') required String id, 
    @JsonKey(name: 'role_name') required String roleName,
    @JsonKey(name: 'description') required String description,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}
