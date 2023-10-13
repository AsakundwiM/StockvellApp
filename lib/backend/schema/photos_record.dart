import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PhotosRecord extends FirestoreRecord {
  PhotosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "pdf" field.
  DocumentReference? _pdf;
  DocumentReference? get pdf => _pdf;
  bool hasPdf() => _pdf != null;

  void _initializeFields() {
    _location = snapshotData['location'] as String?;
    _time = snapshotData['Time'] as DateTime?;
    _pdf = snapshotData['pdf'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('photos');

  static Stream<PhotosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PhotosRecord.fromSnapshot(s));

  static Future<PhotosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PhotosRecord.fromSnapshot(s));

  static PhotosRecord fromSnapshot(DocumentSnapshot snapshot) => PhotosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PhotosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PhotosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PhotosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PhotosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPhotosRecordData({
  String? location,
  DateTime? time,
  DocumentReference? pdf,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location': location,
      'Time': time,
      'pdf': pdf,
    }.withoutNulls,
  );

  return firestoreData;
}

class PhotosRecordDocumentEquality implements Equality<PhotosRecord> {
  const PhotosRecordDocumentEquality();

  @override
  bool equals(PhotosRecord? e1, PhotosRecord? e2) {
    return e1?.location == e2?.location &&
        e1?.time == e2?.time &&
        e1?.pdf == e2?.pdf;
  }

  @override
  int hash(PhotosRecord? e) =>
      const ListEquality().hash([e?.location, e?.time, e?.pdf]);

  @override
  bool isValidKey(Object? o) => o is PhotosRecord;
}
