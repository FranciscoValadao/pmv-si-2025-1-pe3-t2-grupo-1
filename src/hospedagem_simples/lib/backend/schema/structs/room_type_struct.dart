// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomTypeStruct extends FFFirebaseStruct {
  RoomTypeStruct({
    List<String>? amenidades,
    int? banheiros,
    List<String>? caracteristicas,
    String? descricao,
    List<String>? fotos,
    int? hospedes,
    String? nome,
    double? valordiaria,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _amenidades = amenidades,
        _banheiros = banheiros,
        _caracteristicas = caracteristicas,
        _descricao = descricao,
        _fotos = fotos,
        _hospedes = hospedes,
        _nome = nome,
        _valordiaria = valordiaria,
        super(firestoreUtilData);

  // "amenidades" field.
  List<String>? _amenidades;
  List<String> get amenidades => _amenidades ?? const [];
  set amenidades(List<String>? val) => _amenidades = val;

  void updateAmenidades(Function(List<String>) updateFn) {
    updateFn(_amenidades ??= []);
  }

  bool hasAmenidades() => _amenidades != null;

  // "banheiros" field.
  int? _banheiros;
  int get banheiros => _banheiros ?? 0;
  set banheiros(int? val) => _banheiros = val;

  void incrementBanheiros(int amount) => banheiros = banheiros + amount;

  bool hasBanheiros() => _banheiros != null;

  // "caracteristicas" field.
  List<String>? _caracteristicas;
  List<String> get caracteristicas => _caracteristicas ?? const [];
  set caracteristicas(List<String>? val) => _caracteristicas = val;

  void updateCaracteristicas(Function(List<String>) updateFn) {
    updateFn(_caracteristicas ??= []);
  }

  bool hasCaracteristicas() => _caracteristicas != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "fotos" field.
  List<String>? _fotos;
  List<String> get fotos => _fotos ?? const [];
  set fotos(List<String>? val) => _fotos = val;

  void updateFotos(Function(List<String>) updateFn) {
    updateFn(_fotos ??= []);
  }

  bool hasFotos() => _fotos != null;

  // "hospedes" field.
  int? _hospedes;
  int get hospedes => _hospedes ?? 0;
  set hospedes(int? val) => _hospedes = val;

  void incrementHospedes(int amount) => hospedes = hospedes + amount;

  bool hasHospedes() => _hospedes != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "valordiaria" field.
  double? _valordiaria;
  double get valordiaria => _valordiaria ?? 0.0;
  set valordiaria(double? val) => _valordiaria = val;

  void incrementValordiaria(double amount) =>
      valordiaria = valordiaria + amount;

  bool hasValordiaria() => _valordiaria != null;

  static RoomTypeStruct fromMap(Map<String, dynamic> data) => RoomTypeStruct(
        amenidades: getDataList(data['amenidades']),
        banheiros: castToType<int>(data['banheiros']),
        caracteristicas: getDataList(data['caracteristicas']),
        descricao: data['descricao'] as String?,
        fotos: getDataList(data['fotos']),
        hospedes: castToType<int>(data['hospedes']),
        nome: data['nome'] as String?,
        valordiaria: castToType<double>(data['valordiaria']),
      );

  static RoomTypeStruct? maybeFromMap(dynamic data) =>
      data is Map ? RoomTypeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'amenidades': _amenidades,
        'banheiros': _banheiros,
        'caracteristicas': _caracteristicas,
        'descricao': _descricao,
        'fotos': _fotos,
        'hospedes': _hospedes,
        'nome': _nome,
        'valordiaria': _valordiaria,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amenidades': serializeParam(
          _amenidades,
          ParamType.String,
          isList: true,
        ),
        'banheiros': serializeParam(
          _banheiros,
          ParamType.int,
        ),
        'caracteristicas': serializeParam(
          _caracteristicas,
          ParamType.String,
          isList: true,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'fotos': serializeParam(
          _fotos,
          ParamType.String,
          isList: true,
        ),
        'hospedes': serializeParam(
          _hospedes,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'valordiaria': serializeParam(
          _valordiaria,
          ParamType.double,
        ),
      }.withoutNulls;

  static RoomTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      RoomTypeStruct(
        amenidades: deserializeParam<String>(
          data['amenidades'],
          ParamType.String,
          true,
        ),
        banheiros: deserializeParam(
          data['banheiros'],
          ParamType.int,
          false,
        ),
        caracteristicas: deserializeParam<String>(
          data['caracteristicas'],
          ParamType.String,
          true,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        fotos: deserializeParam<String>(
          data['fotos'],
          ParamType.String,
          true,
        ),
        hospedes: deserializeParam(
          data['hospedes'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        valordiaria: deserializeParam(
          data['valordiaria'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'RoomTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RoomTypeStruct &&
        listEquality.equals(amenidades, other.amenidades) &&
        banheiros == other.banheiros &&
        listEquality.equals(caracteristicas, other.caracteristicas) &&
        descricao == other.descricao &&
        listEquality.equals(fotos, other.fotos) &&
        hospedes == other.hospedes &&
        nome == other.nome &&
        valordiaria == other.valordiaria;
  }

  @override
  int get hashCode => const ListEquality().hash([
        amenidades,
        banheiros,
        caracteristicas,
        descricao,
        fotos,
        hospedes,
        nome,
        valordiaria
      ]);
}

RoomTypeStruct createRoomTypeStruct({
  int? banheiros,
  String? descricao,
  int? hospedes,
  String? nome,
  double? valordiaria,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RoomTypeStruct(
      banheiros: banheiros,
      descricao: descricao,
      hospedes: hospedes,
      nome: nome,
      valordiaria: valordiaria,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RoomTypeStruct? updateRoomTypeStruct(
  RoomTypeStruct? roomType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    roomType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRoomTypeStructData(
  Map<String, dynamic> firestoreData,
  RoomTypeStruct? roomType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (roomType == null) {
    return;
  }
  if (roomType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && roomType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final roomTypeData = getRoomTypeFirestoreData(roomType, forFieldValue);
  final nestedData = roomTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = roomType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRoomTypeFirestoreData(
  RoomTypeStruct? roomType, [
  bool forFieldValue = false,
]) {
  if (roomType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(roomType.toMap());

  // Add any Firestore field values
  roomType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRoomTypeListFirestoreData(
  List<RoomTypeStruct>? roomTypes,
) =>
    roomTypes?.map((e) => getRoomTypeFirestoreData(e, true)).toList() ?? [];
