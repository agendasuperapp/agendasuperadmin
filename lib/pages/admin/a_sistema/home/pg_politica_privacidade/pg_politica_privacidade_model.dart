import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_politica_privacidade/cp_politica_privacidade_widget.dart';
import 'pg_politica_privacidade_widget.dart' show PgPoliticaPrivacidadeWidget;
import 'package:flutter/material.dart';

class PgPoliticaPrivacidadeModel
    extends FlutterFlowModel<PgPoliticaPrivacidadeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_politica_privacidade component.
  late CpPoliticaPrivacidadeModel cpPoliticaPrivacidadeModel;

  @override
  void initState(BuildContext context) {
    cpPoliticaPrivacidadeModel =
        createModel(context, () => CpPoliticaPrivacidadeModel());
  }

  @override
  void dispose() {
    cpPoliticaPrivacidadeModel.dispose();
  }
}
