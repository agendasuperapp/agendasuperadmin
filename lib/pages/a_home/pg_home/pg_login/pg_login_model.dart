import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a_home/cp_home/cp_login/cp_login_widget.dart';
import 'pg_login_widget.dart' show PgLoginWidget;
import 'package:flutter/material.dart';

class PgLoginModel extends FlutterFlowModel<PgLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_login component.
  late CpLoginModel cpLoginModel;

  @override
  void initState(BuildContext context) {
    cpLoginModel = createModel(context, () => CpLoginModel());
  }

  @override
  void dispose() {
    cpLoginModel.dispose();
  }
}
