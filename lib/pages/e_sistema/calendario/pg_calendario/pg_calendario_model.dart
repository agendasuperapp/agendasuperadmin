import '/flutter_flow/flutter_flow_util.dart';
import '/pages/e_sistema/calendario/cp_calendario_personalizado/cp_calendario_personalizado_widget.dart';
import 'pg_calendario_widget.dart' show PgCalendarioWidget;
import 'package:flutter/material.dart';

class PgCalendarioModel extends FlutterFlowModel<PgCalendarioWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cpCalendarioPersonalizado component.
  late CpCalendarioPersonalizadoModel cpCalendarioPersonalizadoModel;

  @override
  void initState(BuildContext context) {
    cpCalendarioPersonalizadoModel =
        createModel(context, () => CpCalendarioPersonalizadoModel());
  }

  @override
  void dispose() {
    cpCalendarioPersonalizadoModel.dispose();
  }
}
