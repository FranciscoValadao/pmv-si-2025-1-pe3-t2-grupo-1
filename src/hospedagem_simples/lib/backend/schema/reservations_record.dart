import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Register the reservations made under a user
class ReservationsRecord extends FirestoreRecord {
  ReservationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "dateCheckIn" field.
  DateTime? _dateCheckIn;
  DateTime? get dateCheckIn => _dateCheckIn;
  bool hasDateCheckIn() => _dateCheckIn != null;

  // "dateCheckOut" field.
  DateTime? _dateCheckOut;
  DateTime? get dateCheckOut => _dateCheckOut;
  bool hasDateCheckOut() => _dateCheckOut != null;

  // "status" field.
  Status? _status;
  Status? get status => _status;
  bool hasStatus() => _status != null;

  // "days" field.
  int? _days;
  int get days => _days ?? 0;
  bool hasDays() => _days != null;

  // "roomType" field.
  DocumentReference? _roomType;
  DocumentReference? get roomType => _roomType;
  bool hasRoomType() => _roomType != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _dateCheckIn = snapshotData['dateCheckIn'] as DateTime?;
    _dateCheckOut = snapshotData['dateCheckOut'] as DateTime?;
    _status = snapshotData['status'] is Status
        ? snapshotData['status']
        : deserializeEnum<Status>(snapshotData['status']);
    _days = castToType<int>(snapshotData['days']);
    _roomType = snapshotData['roomType'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('reservations')
          : FirebaseFirestore.instance.collectionGroup('reservations');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('reservations').doc(id);

  static Stream<ReservationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservationsRecord.fromSnapshot(s));

  static Future<ReservationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservationsRecord.fromSnapshot(s));

  static ReservationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservationsRecordData({
  double? price,
  DateTime? createdAt,
  DateTime? dateCheckIn,
  DateTime? dateCheckOut,
  Status? status,
  int? days,
  DocumentReference? roomType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'price': price,
      'created_at': createdAt,
      'dateCheckIn': dateCheckIn,
      'dateCheckOut': dateCheckOut,
      'status': status,
      'days': days,
      'roomType': roomType,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservationsRecordDocumentEquality
    implements Equality<ReservationsRecord> {
  const ReservationsRecordDocumentEquality();

  @override
  bool equals(ReservationsRecord? e1, ReservationsRecord? e2) {
    return e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.dateCheckIn == e2?.dateCheckIn &&
        e1?.dateCheckOut == e2?.dateCheckOut &&
        e1?.status == e2?.status &&
        e1?.days == e2?.days &&
        e1?.roomType == e2?.roomType;
  }

  @override
  int hash(ReservationsRecord? e) => const ListEquality().hash([
        e?.price,
        e?.createdAt,
        e?.dateCheckIn,
        e?.dateCheckOut,
        e?.status,
        e?.days,
        e?.roomType
      ]);

  @override
  bool isValidKey(Object? o) => o is ReservationsRecord;
}
