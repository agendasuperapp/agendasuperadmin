import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_rodape_widget.dart' show CpRodapeWidget;
import 'package:flutter/material.dart';

class CpRodapeModel extends FlutterFlowModel<CpRodapeWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in cp_rodape widget.
  List<TblNotificacoesQuantRow>? queryConsQtNotif;
  // State field(s) for MouseRegionDashBoard widget.
  bool mouseRegionDashBoardHovered = false;
  // State field(s) for MouseRegionAgendamentos widget.
  bool mouseRegionAgendamentosHovered = false;
  // State field(s) for MouseRegionComissaoDiaria widget.
  bool mouseRegionComissaoDiariaHovered = false;
  // State field(s) for MouseRegionMenu widget.
  bool mouseRegionMenuHovered = false;
  // State field(s) for MouseRegionNotificacoes widget.
  bool mouseRegionNotificacoesHovered = false;
  // State field(s) for MouseRegionPerfil widget.
  bool mouseRegionPerfilHovered = false;
  // State field(s) for MouseRegionEmpresa widget.
  bool mouseRegionEmpresaHovered = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
