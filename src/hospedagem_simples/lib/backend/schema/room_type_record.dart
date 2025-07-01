import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomTypeRecord extends FirestoreRecord {
  RoomTypeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "caracteristicas" field.
  List<String>? _caracteristicas;
  List<String> get caracteristicas => _caracteristicas ?? const [];
  bool hasCaracteristicas() => _caracteristicas != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "valordiaria" field.
  double? _valordiaria;
  double get valordiaria => _valordiaria ?? 0.0;
  bool hasValordiaria() => _valordiaria != null;

  // "amenidades" field.
  List<String>? _amenidades;
  List<String> get amenidades => _amenidades ?? const [];
  bool hasAmenidades() => _amenidades != null;

  // "fotos" field.
  List<String>? _fotos;
  List<String> get fotos => _fotos ?? const [];
  bool hasFotos() => _fotos != null;

  // "hospedes" field.
  int? _hospedes;
  int get hospedes => _hospedes ?? 0;
  bool hasHospedes() => _hospedes != null;

  // "banheiros" field.
  int? _banheiros;
  int get banheiros => _banheiros ?? 0;
  bool hasBanheiros() => _banheiros != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _caracteristicas = getDataList(snapshotData['caracteristicas']);
    _descricao = snapshotData['descricao'] as String?;
    _valordiaria = castToType<double>(snapshotData['valordiaria']);
    _amenidades = getDataList(snapshotData['amenidades']);
    _fotos = getDataList(snapshotData['fotos']);
    _hospedes = castToType<int>(snapshotData['hospedes']);
    _banheiros = castToType<int>(snapshotData['banheiros']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RoomType');

  static Stream<RoomTypeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomTypeRecord.fromSnapshot(s));

  static Future<RoomTypeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomTypeRecord.fromSnapshot(s));

  static RoomTypeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoomTypeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomTypeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomTypeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomTypeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomTypeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomTypeRecordData({
  String? nome,
  String? descricao,
  double? valordiaria,
  int? hospedes,
  int? banheiros,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'descricao': descricao,
      'valordiaria': valordiaria,
      'hospedes': hospedes,
      'banheiros': banheiros,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomTypeRecordDocumentEquality implements Equality<RoomTypeRecord> {
  const RoomTypeRecordDocumentEquality();

  @override
  bool equals(RoomTypeRecord? e1, RoomTypeRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        listEquality.equals(e1?.caracteristicas, e2?.caracteristicas) &&
        e1?.descricao == e2?.descricao &&
        e1?.valordiaria == e2?.valordiaria &&
        listEquality.equals(e1?.amenidades, e2?.amenidades) &&
        listEquality.equals(e1?.fotos, e2?.fotos) &&
        e1?.hospedes == e2?.hospedes &&
        e1?.banheiros == e2?.banheiros;
  }

  @override
  int hash(RoomTypeRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.caracteristicas,
        e?.descricao,
        e?.valordiaria,
        e?.amenidades,
        e?.fotos,
        e?.hospedes,
        e?.banheiros
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomTypeRecord;
}
