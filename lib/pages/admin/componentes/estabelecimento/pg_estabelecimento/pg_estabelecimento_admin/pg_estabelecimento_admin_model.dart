import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/estabelecimento/comp_estabelecimento/cp_estabelecimento_cad/cp_estabelecimento_cad_widget.dart';
import 'pg_estabelecimento_admin_widget.dart' show PgEstabelecimentoAdminWidget;
import 'package:flutter/material.dart';

class PgEstabelecimentoAdminModel
    extends FlutterFlowModel<PgEstabelecimentoAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_estabelecimento_cad component.
  late CpEstabelecimentoCadModel cpEstabelecimentoCadModel;

  @override
  void initState(BuildContext context) {
    cpEstabelecimentoCadModel =
        createModel(context, () => CpEstabelecimentoCadModel());
  }

  @override
  void dispose() {
    cpEstabelecimentoCadModel.dispose();
  }
}
