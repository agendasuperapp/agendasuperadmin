import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'cp_notificacao_widget.dart' show CpNotificacaoWidget;
import 'package:flutter/material.dart';

class CpNotificacaoModel extends FlutterFlowModel<CpNotificacaoWidget> {
  ///  State fields for stateful widgets in this component.

  InstantTimer? instantTimer;
  // State field(s) for SwitchListTileNotificacoesWeb widget.
  bool? switchListTileNotificacoesWebValue;
  // Stores action output result for [Custom Action - caWebOneSignalRequestPermission] action in SwitchListTileNotificacoesWeb widget.
  String? resultPermissOneSign2Copy;
  // Stores action output result for [Action Block - acOneSignalWebCarregarNotificacoes] action in SwitchListTileNotificacoesWeb widget.
  bool? resultOneSignalCarregNotifON2;
  // Stores action output result for [Action Block - acOneSignalWebCarregarNotificacoes] action in SwitchListTileNotificacoesWeb widget.
  bool? acDesativarNotificacoesOneSignal22;
  // State field(s) for SwitchListTileNotificacoesAPP widget.
  bool? switchListTileNotificacoesAPPValue;
  // Stores action output result for [Action Block - acOneSignalAPPInicializarNotificacoes] action in SwitchListTileNotificacoesAPP widget.
  bool? varResultInicializaNotifOneSiganl2;
  // Stores action output result for [Action Block - acOneSignalAPPInicializarNotificacoes] action in ContainerAtivos widget.
  bool? varResultInicializaNotifOneSiganl;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
