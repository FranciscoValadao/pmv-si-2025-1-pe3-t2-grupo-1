import '/backend/backend.dart';
import '/components/date_picker/date_picker_widget.dart';
import '/components/disponib_picker/disponib_picker_widget.dart';
import '/components/top_nav1/top_nav1_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'system_management_widget.dart' show SystemManagementWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SystemManagementModel extends FlutterFlowModel<SystemManagementWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for datePicker component.
  late DatePickerModel datePickerModel;
  // Models for disponibPicker dynamic component.
  late FlutterFlowDynamicModels<DisponibPickerModel> disponibPickerModels;
  // Model for TopNav1 component.
  late TopNav1Model topNav1Model;

  @override
  void initState(BuildContext context) {
    datePickerModel = createModel(context, () => DatePickerModel());
    disponibPickerModels =
        FlutterFlowDynamicModels(() => DisponibPickerModel());
    topNav1Model = createModel(context, () => TopNav1Model());
  }

  @override
  void dispose() {
    datePickerModel.dispose();
    disponibPickerModels.dispose();
    topNav1Model.dispose();
  }
}
