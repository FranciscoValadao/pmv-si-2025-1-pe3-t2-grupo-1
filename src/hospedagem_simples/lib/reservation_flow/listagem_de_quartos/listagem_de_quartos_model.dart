import '/backend/backend.dart';
import '/components/date_picker/date_picker_widget.dart';
import '/components/top_nav1/top_nav1_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'listagem_de_quartos_widget.dart' show ListagemDeQuartosWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListagemDeQuartosModel extends FlutterFlowModel<ListagemDeQuartosWidget> {
  ///  Local state fields for this page.
  /// filter start date
  String? startDate;

  /// filter end date
  String? endDate;

  /// the room type selected in this page
  DocumentReference? selectedRoom;

  ///  State fields for stateful widgets in this page.

  // Model for datePicker component.
  late DatePickerModel datePickerModel;
  // Model for TopNav1 component.
  late TopNav1Model topNav1Model;

  @override
  void initState(BuildContext context) {
    datePickerModel = createModel(context, () => DatePickerModel());
    topNav1Model = createModel(context, () => TopNav1Model());
  }

  @override
  void dispose() {
    datePickerModel.dispose();
    topNav1Model.dispose();
  }
}
