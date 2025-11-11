import '/flutter_flow/flutter_flow_util.dart';
import '/pages/b_estabelecimento/comp_estabelecimento/cp_estabelecimento_cad/cp_estabelecimento_cad_widget.dart';
import 'cp_estabelec_view_admin_widget.dart' show CpEstabelecViewAdminWidget;
import 'package:flutter/material.dart';

class CpEstabelecViewAdminModel
    extends FlutterFlowModel<CpEstabelecViewAdminWidget> {
  ///  State fields for stateful widgets in this component.

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
