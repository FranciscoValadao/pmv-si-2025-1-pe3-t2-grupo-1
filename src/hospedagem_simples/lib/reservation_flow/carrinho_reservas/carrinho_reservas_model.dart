import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/components/cart_reservation/cart_reservation_widget.dart';
import '/components/checkout_card/checkout_card_widget.dart';
import '/components/top_nav1/top_nav1_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'carrinho_reservas_widget.dart' show CarrinhoReservasWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarrinhoReservasModel extends FlutterFlowModel<CarrinhoReservasWidget> {
  ///  Local state fields for this page.

  bool? showCart = false;

  ///  State fields for stateful widgets in this page.

  // Model for TopNav1 component.
  late TopNav1Model topNav1Model;
  // Models for cartReservation dynamic component.
  late FlutterFlowDynamicModels<CartReservationModel> cartReservationModels;
  // Model for checkoutCard component.
  late CheckoutCardModel checkoutCardModel;

  @override
  void initState(BuildContext context) {
    topNav1Model = createModel(context, () => TopNav1Model());
    cartReservationModels =
        FlutterFlowDynamicModels(() => CartReservationModel());
    checkoutCardModel = createModel(context, () => CheckoutCardModel());
  }

  @override
  void dispose() {
    topNav1Model.dispose();
    cartReservationModels.dispose();
    checkoutCardModel.dispose();
  }
}
