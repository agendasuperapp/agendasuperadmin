import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/afiliado/estabelecimento/comp_estabelecimento/cp_cad_servicos/cp_cad_servicos_widget.dart';
import 'pg_cad_servicos_widget.dart' show PgCadServicosWidget;
import 'package:flutter/material.dart';

class PgCadServicosModel extends FlutterFlowModel<PgCadServicosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cad_servicos component.
  late CpCadServicosModel cpCadServicosModel;

  @override
  void initState(BuildContext context) {
    cpCadServicosModel = createModel(context, () => CpCadServicosModel());
  }

  @override
  void dispose() {
    cpCadServicosModel.dispose();
  }
}
