import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_cad_planos_periodos/cp_cad_planos_periodos_widget.dart';
import 'pg_cad_planos_periodos_widget.dart' show PgCadPlanosPeriodosWidget;
import 'package:flutter/material.dart';

class PgCadPlanosPeriodosModel
    extends FlutterFlowModel<PgCadPlanosPeriodosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cad_planos_periodos component.
  late CpCadPlanosPeriodosModel cpCadPlanosPeriodosModel;

  @override
  void initState(BuildContext context) {
    cpCadPlanosPeriodosModel =
        createModel(context, () => CpCadPlanosPeriodosModel());
  }

  @override
  void dispose() {
    cpCadPlanosPeriodosModel.dispose();
  }
}
