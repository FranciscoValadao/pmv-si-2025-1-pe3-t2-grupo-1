import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/top_nav1/top_nav1_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'detalhes_reserva_widget.dart' show DetalhesReservaWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetalhesReservaModel extends FlutterFlowModel<DetalhesReservaWidget> {
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
