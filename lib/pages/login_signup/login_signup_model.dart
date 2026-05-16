import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/creatacuont/creatacuont_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'login_signup_widget.dart' show LoginSignupWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginSignupModel extends FlutterFlowModel<LoginSignupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for login-signuptab widget.
  TabController? loginSignuptabController;
  int get loginSignuptabCurrentIndex =>
      loginSignuptabController != null ? loginSignuptabController!.index : 0;
  int get loginSignuptabPreviousIndex => loginSignuptabController != null
      ? loginSignuptabController!.previousIndex
      : 0;

  // State field(s) for email-login widget.
  FocusNode? emailLoginFocusNode;
  TextEditingController? emailLoginTextController;
  String? Function(BuildContext, String?)? emailLoginTextControllerValidator;
  // State field(s) for pass-login widget.
  FocusNode? passLoginFocusNode;
  TextEditingController? passLoginTextController;
  late bool passLoginVisibility;
  String? Function(BuildContext, String?)? passLoginTextControllerValidator;
  // State field(s) for email-signup widget.
  FocusNode? emailSignupFocusNode;
  TextEditingController? emailSignupTextController;
  String? Function(BuildContext, String?)? emailSignupTextControllerValidator;
  // State field(s) for pass-signup widget.
  FocusNode? passSignupFocusNode;
  TextEditingController? passSignupTextController;
  late bool passSignupVisibility;
  String? Function(BuildContext, String?)? passSignupTextControllerValidator;
  // State field(s) for pass2-signup widget.
  FocusNode? pass2SignupFocusNode;
  TextEditingController? pass2SignupTextController;
  late bool pass2SignupVisibility;
  String? Function(BuildContext, String?)? pass2SignupTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passLoginVisibility = false;
    passSignupVisibility = false;
    pass2SignupVisibility = false;
  }

  @override
  void dispose() {
    loginSignuptabController?.dispose();
    emailLoginFocusNode?.dispose();
    emailLoginTextController?.dispose();

    passLoginFocusNode?.dispose();
    passLoginTextController?.dispose();

    emailSignupFocusNode?.dispose();
    emailSignupTextController?.dispose();

    passSignupFocusNode?.dispose();
    passSignupTextController?.dispose();

    pass2SignupFocusNode?.dispose();
    pass2SignupTextController?.dispose();
  }
}
