import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/afiliado/estabelecimento/comp_estabelecimento/cp_cad_profissionais/cp_cad_profissionais_widget.dart';
import 'pg_cad_profissionais_widget.dart' show PgCadProfissionaisWidget;
import 'package:flutter/material.dart';

class PgCadProfissionaisModel
    extends FlutterFlowModel<PgCadProfissionaisWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cad_profissionais component.
  late CpCadProfissionaisModel cpCadProfissionaisModel;

  @override
  void initState(BuildContext context) {
    cpCadProfissionaisModel =
        createModel(context, () => CpCadProfissionaisModel());
  }

  @override
  void dispose() {
    cpCadProfissionaisModel.dispose();
  }
}
