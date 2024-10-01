import 'package:freezed_annotation/freezed_annotation.dart';

part 'nfc_tag.freezed.dart';
part 'nfc_tag.g.dart';

// Define the NFC Tag model
@freezed
abstract class NfcTag with _$NfcTag {
  factory NfcTag({
    @JsonKey(name: '_id') String? id,  // Optional ID field
    required String tagId,              // Tag ID
    required String state,               // State of the NFC tag
  }) = _NfcTag;

  // JSON serialization
  factory NfcTag.fromJson(Map<String, dynamic> json) => _$NfcTagFromJson(json);
}
