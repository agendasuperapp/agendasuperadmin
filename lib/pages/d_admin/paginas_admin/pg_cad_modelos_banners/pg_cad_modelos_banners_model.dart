import '/flutter_flow/flutter_flow_util.dart';
import '/pages/d_admin/cp_admin/cp_cad_modelos_banners/cp_cad_modelos_banners_widget.dart';
import 'pg_cad_modelos_banners_widget.dart' show PgCadModelosBannersWidget;
import 'package:flutter/material.dart';

class PgCadModelosBannersModel
    extends FlutterFlowModel<PgCadModelosBannersWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cad_modelos_banners component.
  late CpCadModelosBannersModel cpCadModelosBannersModel;

  @override
  void initState(BuildContext context) {
    cpCadModelosBannersModel =
        createModel(context, () => CpCadModelosBannersModel());
  }

  @override
  void dispose() {
    cpCadModelosBannersModel.dispose();
  }
}
