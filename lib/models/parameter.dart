import 'package:freezed_annotation/freezed_annotation.dart';

part 'parameter.freezed.dart';
part 'parameter.g.dart';

@freezed
abstract class Parameter with _$Parameter {
  factory Parameter({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'parameter_name') required String parameterName, // Name of the parameter
    @JsonKey(name: 'parameter_value') required String parameterValue, // Value of the parameter
  }) = _Parameter;

  factory Parameter.fromJson(Map<String, dynamic> json) => _$ParameterFromJson(json);
}
