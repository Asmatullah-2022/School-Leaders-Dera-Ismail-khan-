import 'package:cloud_firestore/cloud_firestore.dart';

/// Converts between Dart [DateTime] (used in models' toJson/fromJson for
/// Hive cache + PDF/CSV export) and Firestore's native [Timestamp] (used on
/// the wire so Firestore console/queries treat these as real dates).
DateTime dateTimeFromFirestoreValue(dynamic value) {
  if (value is Timestamp) return value.toDate();
  if (value is String) return DateTime.parse(value);
  if (value is DateTime) return value;
  return DateTime.now();
}

DateTime? dateTimeFromFirestoreValueOrNull(dynamic value) {
  if (value == null) return null;
  return dateTimeFromFirestoreValue(value);
}

Timestamp dateTimeToFirestoreValue(DateTime value) => Timestamp.fromDate(value);

Timestamp? dateTimeToFirestoreValueOrNull(DateTime? value) =>
    value == null ? null : Timestamp.fromDate(value);

/// Recursively swaps Firestore [Timestamp]s for ISO8601 strings so a raw
/// Firestore document map can be handed to a model's JSON `fromJson` (used
/// by both the Firestore repository layer and the Hive cache layer, keeping
/// exactly one JSON shape per model).
Map<String, dynamic> firestoreDataToJson(Map<String, dynamic> data) {
  return data.map((key, value) => MapEntry(key, _convertValue(value)));
}

dynamic _convertValue(dynamic value) {
  if (value is Timestamp) return value.toDate().toIso8601String();
  if (value is Map) {
    return value.map((k, v) => MapEntry(k as String, _convertValue(v)));
  }
  if (value is List) return value.map(_convertValue).toList();
  return value;
}

/// Converts a model's JSON map (ISO8601 date strings) into a Firestore-write
/// map (native Timestamps), given the set of field names that hold dates.
Map<String, dynamic> jsonToFirestoreData(
  Map<String, dynamic> json, {
  required Set<String> dateFields,
}) {
  final Map<String, dynamic> result = Map<String, dynamic>.from(json);
  for (final field in dateFields) {
    final dynamic value = result[field];
    if (value is String) {
      result[field] = Timestamp.fromDate(DateTime.parse(value));
    }
  }
  return result;
}
