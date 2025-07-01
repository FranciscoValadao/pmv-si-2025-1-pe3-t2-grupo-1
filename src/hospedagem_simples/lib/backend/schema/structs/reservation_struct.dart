// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservationStruct extends FFFirebaseStruct {
  ReservationStruct({
    DocumentReference? roomType,
    DateTime? startDate,
    DateTime? endDate,
    int? days,
    DocumentReference? user,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _roomType = roomType,
        _startDate = startDate,
        _endDate = endDate,
        _days = days,
        _user = user,
        super(firestoreUtilData);

  // "RoomType" field.
  DocumentReference? _roomType;
  DocumentReference? get roomType => _roomType;
  set roomType(DocumentReference? val) => _roomType = val;

  bool hasRoomType() => _roomType != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "days" field.
  int? _days;
  int get days => _days ?? 0;
  set days(int? val) => _days = val;

  void incrementDays(int amount) => days = days + amount;

  bool hasDays() => _days != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? val) => _user = val;

  bool hasUser() => _user != null;

  static ReservationStruct fromMap(Map<String, dynamic> data) =>
      ReservationStruct(
        roomType: data['RoomType'] as DocumentReference?,
        startDate: data['startDate'] as DateTime?,
        endDate: data['endDate'] as DateTime?,
        days: castToType<int>(data['days']),
        user: data['user'] as DocumentReference?,
      );

  static ReservationStruct? maybeFromMap(dynamic data) => data is Map
      ? ReservationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'RoomType': _roomType,
        'startDate': _startDate,
        'endDate': _endDate,
        'days': _days,
        'user': _user,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'RoomType': serializeParam(
          _roomType,
          ParamType.DocumentReference,
        ),
        'startDate': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'endDate': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
        'days': serializeParam(
          _days,
          ParamType.int,
        ),
        'user': serializeParam(
          _user,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ReservationStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReservationStruct(
        roomType: deserializeParam(
          data['RoomType'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['RoomType'],
        ),
        startDate: deserializeParam(
          data['startDate'],
          ParamType.DateTime,
          false,
        ),
        endDate: deserializeParam(
          data['endDate'],
          ParamType.DateTime,
          false,
        ),
        days: deserializeParam(
          data['days'],
          ParamType.int,
          false,
        ),
        user: deserializeParam(
          data['user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
      );

  @override
  String toString() => 'ReservationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReservationStruct &&
        roomType == other.roomType &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        days == other.days &&
        user == other.user;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([roomType, startDate, endDate, days, user]);
}

ReservationStruct createReservationStruct({
  DocumentReference? roomType,
  DateTime? startDate,
  DateTime? endDate,
  int? days,
  DocumentReference? user,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReservationStruct(
      roomType: roomType,
      startDate: startDate,
      endDate: endDate,
      days: days,
      user: user,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReservationStruct? updateReservationStruct(
  ReservationStruct? reservation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    reservation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReservationStructData(
  Map<String, dynamic> firestoreData,
  ReservationStruct? reservation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (reservation == null) {
    return;
  }
  if (reservation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && reservation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final reservationData =
      getReservationFirestoreData(reservation, forFieldValue);
  final nestedData =
      reservationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = reservation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReservationFirestoreData(
  ReservationStruct? reservation, [
  bool forFieldValue = false,
]) {
  if (reservation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(reservation.toMap());

  // Add any Firestore field values
  reservation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReservationListFirestoreData(
  List<ReservationStruct>? reservations,
) =>
    reservations?.map((e) => getReservationFirestoreData(e, true)).toList() ??
    [];
