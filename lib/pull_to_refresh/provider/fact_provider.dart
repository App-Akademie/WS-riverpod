import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ws_riverpod/pull_to_refresh/models/fact.dart';

part 'fact_provider.g.dart';

@riverpod
Future<Fact> fact(FactRef ref) async {
  final response = await http.get(
    Uri.https('uselessfacts.jsph.pl', '/api/v2/facts/random'),
  );

  final json = jsonDecode(response.body) as Map;
  return Fact.fromJson(Map.from(json));
}
