import '/flutter_flow/flutter_flow_util.dart';
import '/pages/d_admin/cp_admin/cp_cad_temas_blackgroundx/cp_cad_temas_blackgroundx_widget.dart';
import 'pg_cad_temas_blackground_widget.dart' show PgCadTemasBlackgroundWidget;
import 'package:flutter/material.dart';

class PgCadTemasBlackgroundModel
    extends FlutterFlowModel<PgCadTemasBlackgroundWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cad_temas_blackgroundx component.
  late CpCadTemasBlackgroundxModel cpCadTemasBlackgroundxModel;

  @override
  void initState(BuildContext context) {
    cpCadTemasBlackgroundxModel =
        createModel(context, () => CpCadTemasBlackgroundxModel());
  }

  @override
  void dispose() {
    cpCadTemasBlackgroundxModel.dispose();
  }
}
