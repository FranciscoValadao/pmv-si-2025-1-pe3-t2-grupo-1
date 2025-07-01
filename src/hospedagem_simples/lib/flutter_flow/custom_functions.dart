import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

double? priceSummary(List<double>? prices) {
// summarize a list of prices from the product list
  if (prices == null || prices.isEmpty) {
    return null;
  }
  return prices.reduce((value, element) => value + element);
}

/// Calcula o número de dias entre checkIn e checkOut
int? periodCalculator(
  DateTime? checkIn,
  DateTime? checkOut,
) {
  if (checkIn == null || checkOut == null) {
    return 0;
  }
  final start = DateTime(checkIn.year, checkIn.month, checkIn.day);
  final end = DateTime(checkOut.year, checkOut.month, checkOut.day);
  return end.difference(start).inDays;
}

/// retorna a lista de datas entre duas datas
List<DateTime>? listDate(
  DateTime start,
  DateTime end,
) {
  final List<DateTime> dates = [];
  DateTime current = start;

  while (!current.isAfter(end)) {
    dates.add(current);
    current = current.add(Duration(days: 1));
  }

  return dates;
}
