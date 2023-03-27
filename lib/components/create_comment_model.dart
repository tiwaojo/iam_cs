import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateCommentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for shortBio widget.
  TextEditingController? shortBioController1;
  String? Function(BuildContext, String?)? shortBioController1Validator;
  // State field(s) for shortBio widget.
  TextEditingController? shortBioController2;
  String? Function(BuildContext, String?)? shortBioController2Validator;
  // Stores action output result for [Backend Call - API (commentcreate)] action in Button widget.
  ApiCallResponse? commentCreateRes;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    shortBioController1?.dispose();
    shortBioController2?.dispose();
  }

  /// Additional helper methods are added here.

}
