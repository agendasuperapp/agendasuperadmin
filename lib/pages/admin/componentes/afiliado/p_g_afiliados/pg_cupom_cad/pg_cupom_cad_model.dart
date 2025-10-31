import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_admin_cupons_padroes_cad/cp_admin_cupons_padroes_cad_widget.dart';
import 'pg_cupom_cad_widget.dart' show PgCupomCadWidget;
import 'package:flutter/material.dart';

class PgCupomCadModel extends FlutterFlowModel<PgCupomCadWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_admin_cupons_padroes_cad component.
  late CpAdminCuponsPadroesCadModel cpAdminCuponsPadroesCadModel;

  @override
  void initState(BuildContext context) {
    cpAdminCuponsPadroesCadModel =
        createModel(context, () => CpAdminCuponsPadroesCadModel());
  }

  @override
  void dispose() {
    cpAdminCuponsPadroesCadModel.dispose();
  }
}
