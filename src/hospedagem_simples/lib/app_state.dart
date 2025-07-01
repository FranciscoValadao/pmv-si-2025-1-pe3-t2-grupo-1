import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<double> _myCartSummary = [];
  List<double> get myCartSummary => _myCartSummary;
  set myCartSummary(List<double> value) {
    _myCartSummary = value;
  }

  void addToMyCartSummary(double value) {
    myCartSummary.add(value);
  }

  void removeFromMyCartSummary(double value) {
    myCartSummary.remove(value);
  }

  void removeAtIndexFromMyCartSummary(int index) {
    myCartSummary.removeAt(index);
  }

  void updateMyCartSummaryAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    myCartSummary[index] = updateFn(_myCartSummary[index]);
  }

  void insertAtIndexInMyCartSummary(int index, double value) {
    myCartSummary.insert(index, value);
  }

  /// carrinho de reservas
  List<DocumentReference> _myReservation = [];
  List<DocumentReference> get myReservation => _myReservation;
  set myReservation(List<DocumentReference> value) {
    _myReservation = value;
  }

  void addToMyReservation(DocumentReference value) {
    myReservation.add(value);
  }

  void removeFromMyReservation(DocumentReference value) {
    myReservation.remove(value);
  }

  void removeAtIndexFromMyReservation(int index) {
    myReservation.removeAt(index);
  }

  void updateMyReservationAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    myReservation[index] = updateFn(_myReservation[index]);
  }

  void insertAtIndexInMyReservation(int index, DocumentReference value) {
    myReservation.insert(index, value);
  }

  DocumentReference? _selectedRoom;
  DocumentReference? get selectedRoom => _selectedRoom;
  set selectedRoom(DocumentReference? value) {
    _selectedRoom = value;
  }

  List<ReservationStruct> _reservationCart = [];
  List<ReservationStruct> get reservationCart => _reservationCart;
  set reservationCart(List<ReservationStruct> value) {
    _reservationCart = value;
  }

  void addToReservationCart(ReservationStruct value) {
    reservationCart.add(value);
  }

  void removeFromReservationCart(ReservationStruct value) {
    reservationCart.remove(value);
  }

  void removeAtIndexFromReservationCart(int index) {
    reservationCart.removeAt(index);
  }

  void updateReservationCartAtIndex(
    int index,
    ReservationStruct Function(ReservationStruct) updateFn,
  ) {
    reservationCart[index] = updateFn(_reservationCart[index]);
  }

  void insertAtIndexInReservationCart(int index, ReservationStruct value) {
    reservationCart.insert(index, value);
  }

  CheckInCheckOutStruct _selectedDates =
      CheckInCheckOutStruct.fromSerializableMap(jsonDecode('{}'));
  CheckInCheckOutStruct get selectedDates => _selectedDates;
  set selectedDates(CheckInCheckOutStruct value) {
    _selectedDates = value;
  }

  void updateSelectedDatesStruct(Function(CheckInCheckOutStruct) updateFn) {
    updateFn(_selectedDates);
  }
}
