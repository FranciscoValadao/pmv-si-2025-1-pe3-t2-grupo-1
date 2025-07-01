import '/components/top_nav1/top_nav1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'entrypage_widget.dart' show EntrypageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EntrypageModel extends FlutterFlowModel<EntrypageWidget> {
  ///  Local state fields for this page.
  /// filter start date
  String? startDate;

  /// filter end date
  String? endDate;

  /// the room type selected in this page
  DocumentReference? selectedRoom;

  ///  State fields for stateful widgets in this page.

  // Model for TopNav1 component.
  late TopNav1Model topNav1Model;

  @override
  void initState(BuildContext context) {
    topNav1Model = createModel(context, () => TopNav1Model());
  }

  @override
  void dispose() {
    topNav1Model.dispose();
  }
}
