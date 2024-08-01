import 'package:freezed_annotation/freezed_annotation.dart';

part 'fact.freezed.dart';
part 'fact.g.dart';

@freezed
class Fact with _$Fact {
  factory Fact({
    required String id,
    required String text,
    @JsonKey(name: 'source_url') required String sourceUrl,
  }) = _Fact;

  factory Fact.fromJson(Map<String, dynamic> json) => _$FactFromJson(json);
}
