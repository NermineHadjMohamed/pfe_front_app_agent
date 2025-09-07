import 'package:freezed_annotation/freezed_annotation.dart';

part 'nfc_tag.freezed.dart';
part 'nfc_tag.g.dart';


@freezed
abstract class NfcTag with _$NfcTag {
  factory NfcTag({
    @JsonKey(name: '_id') String? id,  
    required String tagId,             
    required String state,               
  }) = _NfcTag;


  factory NfcTag.fromJson(Map<String, dynamic> json) => _$NfcTagFromJson(json);
}
