import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/cp_afiliado_cupom_cad/cp_afiliado_cupom_cad_widget.dart';
import 'pg_cupom_cad_widget.dart' show PgCupomCadWidget;
import 'package:flutter/material.dart';

class PgCupomCadModel extends FlutterFlowModel<PgCupomCadWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_afiliado_cupom_cad component.
  late CpAfiliadoCupomCadModel cpAfiliadoCupomCadModel;

  @override
  void initState(BuildContext context) {
    cpAfiliadoCupomCadModel =
        createModel(context, () => CpAfiliadoCupomCadModel());
  }

  @override
  void dispose() {
    cpAfiliadoCupomCadModel.dispose();
  }
}
