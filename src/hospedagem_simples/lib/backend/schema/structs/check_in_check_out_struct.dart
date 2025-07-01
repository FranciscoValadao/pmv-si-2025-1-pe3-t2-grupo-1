// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CheckInCheckOutStruct extends FFFirebaseStruct {
  CheckInCheckOutStruct({
    DateTime? dataEntrada,
    DateTime? dataSaida,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _dataEntrada = dataEntrada,
        _dataSaida = dataSaida,
        super(firestoreUtilData);

  // "dataEntrada" field.
  DateTime? _dataEntrada;
  DateTime? get dataEntrada => _dataEntrada;
  set dataEntrada(DateTime? val) => _dataEntrada = val;

  bool hasDataEntrada() => _dataEntrada != null;

  // "dataSaida" field.
  DateTime? _dataSaida;
  DateTime? get dataSaida => _dataSaida;
  set dataSaida(DateTime? val) => _dataSaida = val;

  bool hasDataSaida() => _dataSaida != null;

  static CheckInCheckOutStruct fromMap(Map<String, dynamic> data) =>
      CheckInCheckOutStruct(
        dataEntrada: data['dataEntrada'] as DateTime?,
        dataSaida: data['dataSaida'] as DateTime?,
      );

  static CheckInCheckOutStruct? maybeFromMap(dynamic data) => data is Map
      ? CheckInCheckOutStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dataEntrada': _dataEntrada,
        'dataSaida': _dataSaida,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dataEntrada': serializeParam(
          _dataEntrada,
          ParamType.DateTime,
        ),
        'dataSaida': serializeParam(
          _dataSaida,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static CheckInCheckOutStruct fromSerializableMap(Map<String, dynamic> data) =>
      CheckInCheckOutStruct(
        dataEntrada: deserializeParam(
          data['dataEntrada'],
          ParamType.DateTime,
          false,
        ),
        dataSaida: deserializeParam(
          data['dataSaida'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'CheckInCheckOutStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CheckInCheckOutStruct &&
        dataEntrada == other.dataEntrada &&
        dataSaida == other.dataSaida;
  }

  @override
  int get hashCode => const ListEquality().hash([dataEntrada, dataSaida]);
}

CheckInCheckOutStruct createCheckInCheckOutStruct({
  DateTime? dataEntrada,
  DateTime? dataSaida,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CheckInCheckOutStruct(
      dataEntrada: dataEntrada,
      dataSaida: dataSaida,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CheckInCheckOutStruct? updateCheckInCheckOutStruct(
  CheckInCheckOutStruct? checkInCheckOut, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    checkInCheckOut
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCheckInCheckOutStructData(
  Map<String, dynamic> firestoreData,
  CheckInCheckOutStruct? checkInCheckOut,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (checkInCheckOut == null) {
    return;
  }
  if (checkInCheckOut.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && checkInCheckOut.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final checkInCheckOutData =
      getCheckInCheckOutFirestoreData(checkInCheckOut, forFieldValue);
  final nestedData =
      checkInCheckOutData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = checkInCheckOut.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCheckInCheckOutFirestoreData(
  CheckInCheckOutStruct? checkInCheckOut, [
  bool forFieldValue = false,
]) {
  if (checkInCheckOut == null) {
    return {};
  }
  final firestoreData = mapToFirestore(checkInCheckOut.toMap());

  // Add any Firestore field values
  checkInCheckOut.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCheckInCheckOutListFirestoreData(
  List<CheckInCheckOutStruct>? checkInCheckOuts,
) =>
    checkInCheckOuts
        ?.map((e) => getCheckInCheckOutFirestoreData(e, true))
        .toList() ??
    [];
