import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_cad_planos_precos/cp_cad_planos_precos_widget.dart';
import 'pg_cad_planos_precos_widget.dart' show PgCadPlanosPrecosWidget;
import 'package:flutter/material.dart';

class PgCadPlanosPrecosModel extends FlutterFlowModel<PgCadPlanosPrecosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cad_planos_precos component.
  late CpCadPlanosPrecosModel cpCadPlanosPrecosModel;

  @override
  void initState(BuildContext context) {
    cpCadPlanosPrecosModel =
        createModel(context, () => CpCadPlanosPrecosModel());
  }

  @override
  void dispose() {
    cpCadPlanosPrecosModel.dispose();
  }
}
