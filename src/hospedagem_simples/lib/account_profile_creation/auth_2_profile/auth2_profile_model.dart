import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/top_nav1/top_nav1_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'auth2_profile_widget.dart' show Auth2ProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Auth2ProfileModel extends FlutterFlowModel<Auth2ProfileWidget> {
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
