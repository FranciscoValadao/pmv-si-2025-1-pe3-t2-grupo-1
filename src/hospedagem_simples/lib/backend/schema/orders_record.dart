import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "totalPrice" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "timeCreated" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "orderNumber" field.
  int? _orderNumber;
  int get orderNumber => _orderNumber ?? 0;
  bool hasOrderNumber() => _orderNumber != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "checkinDate" field.
  DateTime? _checkinDate;
  DateTime? get checkinDate => _checkinDate;
  bool hasCheckinDate() => _checkinDate != null;

  // "checkoutDate" field.
  DateTime? _checkoutDate;
  DateTime? get checkoutDate => _checkoutDate;
  bool hasCheckoutDate() => _checkoutDate != null;

  // "selectedRoom" field.
  List<DocumentReference>? _selectedRoom;
  List<DocumentReference> get selectedRoom => _selectedRoom ?? const [];
  bool hasSelectedRoom() => _selectedRoom != null;

  void _initializeFields() {
    _totalPrice = castToType<double>(snapshotData['totalPrice']);
    _timeCreated = snapshotData['timeCreated'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _orderNumber = castToType<int>(snapshotData['orderNumber']);
    _users = getDataList(snapshotData['users']);
    _checkinDate = snapshotData['checkinDate'] as DateTime?;
    _checkoutDate = snapshotData['checkoutDate'] as DateTime?;
    _selectedRoom = getDataList(snapshotData['selectedRoom']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  double? totalPrice,
  DateTime? timeCreated,
  String? status,
  DocumentReference? owner,
  int? orderNumber,
  DateTime? checkinDate,
  DateTime? checkoutDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'totalPrice': totalPrice,
      'timeCreated': timeCreated,
      'status': status,
      'owner': owner,
      'orderNumber': orderNumber,
      'checkinDate': checkinDate,
      'checkoutDate': checkoutDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.totalPrice == e2?.totalPrice &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.status == e2?.status &&
        e1?.owner == e2?.owner &&
        e1?.orderNumber == e2?.orderNumber &&
        listEquality.equals(e1?.users, e2?.users) &&
        e1?.checkinDate == e2?.checkinDate &&
        e1?.checkoutDate == e2?.checkoutDate &&
        listEquality.equals(e1?.selectedRoom, e2?.selectedRoom);
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.totalPrice,
        e?.timeCreated,
        e?.status,
        e?.owner,
        e?.orderNumber,
        e?.users,
        e?.checkinDate,
        e?.checkoutDate,
        e?.selectedRoom
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
