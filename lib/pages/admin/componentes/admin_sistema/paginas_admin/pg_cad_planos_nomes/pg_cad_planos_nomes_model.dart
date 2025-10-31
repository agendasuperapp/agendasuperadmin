import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_cad_planos_nomes/cp_cad_planos_nomes_widget.dart';
import 'pg_cad_planos_nomes_widget.dart' show PgCadPlanosNomesWidget;
import 'package:flutter/material.dart';

class PgCadPlanosNomesModel extends FlutterFlowModel<PgCadPlanosNomesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cad_planos_nomes component.
  late CpCadPlanosNomesModel cpCadPlanosNomesModel;

  @override
  void initState(BuildContext context) {
    cpCadPlanosNomesModel = createModel(context, () => CpCadPlanosNomesModel());
  }

  @override
  void dispose() {
    cpCadPlanosNomesModel.dispose();
  }
}
