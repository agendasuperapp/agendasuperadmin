import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_cad_modelos_fotos/cp_cad_modelos_fotos_widget.dart';
import 'pg_cad_modelos_fotos_widget.dart' show PgCadModelosFotosWidget;
import 'package:flutter/material.dart';

class PgCadModelosFotosModel extends FlutterFlowModel<PgCadModelosFotosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cad_modelos_fotos component.
  late CpCadModelosFotosModel cpCadModelosFotosModel;

  @override
  void initState(BuildContext context) {
    cpCadModelosFotosModel =
        createModel(context, () => CpCadModelosFotosModel());
  }

  @override
  void dispose() {
    cpCadModelosFotosModel.dispose();
  }
}
