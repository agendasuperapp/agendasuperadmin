import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_menu_lateral_widget.dart' show CpMenuLateralWidget;
import 'package:flutter/material.dart';

class CpMenuLateralModel extends FlutterFlowModel<CpMenuLateralWidget> {
  ///  Local state fields for this component.

  int varContadorDesenvolvimento = 0;

  int varContador = 0;

  int varQuantItens = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegionDasboard widget.
  bool mouseRegionDasboardHovered = false;
  // State field(s) for MouseRegionAgendamentos widget.
  bool mouseRegionAgendamentosHovered = false;
  // State field(s) for MouseRegionAgendDiarios widget.
  bool mouseRegionAgendDiariosHovered = false;
  // State field(s) for MouseRegionAgendCarrinhos widget.
  bool mouseRegionAgendCarrinhosHovered = false;
  // State field(s) for MouseRegionEstab widget.
  bool mouseRegionEstabHovered = false;
  // State field(s) for MouseRegionCadEmpresa widget.
  bool mouseRegionCadEmpresaHovered = false;
  // State field(s) for MouseRegionCadServicos widget.
  bool mouseRegionCadServicosHovered = false;
  // State field(s) for MouseRegionCadProfissionais widget.
  bool mouseRegionCadProfissionaisHovered = false;
  // State field(s) for MouseRegionCadProdutos widget.
  bool mouseRegionCadProdutosHovered = false;
  // State field(s) for MouseRegionPlanoEstab widget.
  bool mouseRegionPlanoEstabHovered = false;
  // State field(s) for MouseRegionCadUsuarios widget.
  bool mouseRegionCadUsuariosHovered = false;
  // State field(s) for MouseRegionFidelidade widget.
  bool mouseRegionFidelidadeHovered = false;
  // State field(s) for MouseRegionConfig widget.
  bool mouseRegionConfigHovered = false;
  // State field(s) for MouseRegionAssistente widget.
  bool mouseRegionAssistenteHovered = false;
  // State field(s) for MouseRegionAfiliados widget.
  bool mouseRegionAfiliadosHovered = false;
  // State field(s) for MouseRegionDashAfiliado widget.
  bool mouseRegionDashAfiliadoHovered = false;
  // State field(s) for MouseRegionAfiCad widget.
  bool mouseRegionAfiCadHovered = false;
  // State field(s) for MouseRegionAfiTreinamento widget.
  bool mouseRegionAfiTreinamentoHovered = false;
  // State field(s) for MouseRegionAfiIndicacoes widget.
  bool mouseRegionAfiIndicacoesHovered = false;
  // State field(s) for MouseRegionAfiSubAfi widget.
  bool mouseRegionAfiSubAfiHovered = false;
  // State field(s) for MouseRegionAfiComisDiarias widget.
  bool mouseRegionAfiComisDiariasHovered = false;
  // State field(s) for MouseRegionAfiComisMensais widget.
  bool mouseRegionAfiComisMensaisHovered = false;
  // State field(s) for MouseRegionAfiAtividades widget.
  bool mouseRegionAfiAtividadesHovered = false;
  // State field(s) for MouseRegionCupons widget.
  bool mouseRegionCuponsHovered = false;
  // State field(s) for MouseRegionAfiSaques widget.
  bool mouseRegionAfiSaquesHovered = false;
  // State field(s) for MouseRegionAfiPlano widget.
  bool mouseRegionAfiPlanoHovered = false;
  // State field(s) for MouseRegionAfiEmpGoogle widget.
  bool mouseRegionAfiEmpGoogleHovered = false;
  // State field(s) for MouseRegionAdmin widget.
  bool mouseRegionAdminHovered = false;
  // State field(s) for MouseRegionAdminEmpresas widget.
  bool mouseRegionAdminEmpresasHovered = false;
  // State field(s) for MouseRegionAdminEvStripe widget.
  bool mouseRegionAdminEvStripeHovered = false;
  // State field(s) for MouseRegionAdminAfiliados widget.
  bool mouseRegionAdminAfiliadosHovered = false;
  // State field(s) for MouseRegionAdminPagSaques widget.
  bool mouseRegionAdminPagSaquesHovered = false;
  // State field(s) for MouseRegionAdminFinanceiro widget.
  bool mouseRegionAdminFinanceiroHovered = false;
  // State field(s) for MouseRegionAdminPlanos widget.
  bool mouseRegionAdminPlanosHovered = false;
  // State field(s) for MouseRegionAdminBancosContas widget.
  bool mouseRegionAdminBancosContasHovered = false;
  // State field(s) for MouseRegionAdminFormasPag widget.
  bool mouseRegionAdminFormasPagHovered = false;
  // State field(s) for MouseRegionAdminCuponsPad widget.
  bool mouseRegionAdminCuponsPadHovered = false;
  // State field(s) for MouseRegionAdminRelatorios widget.
  bool mouseRegionAdminRelatoriosHovered = false;
  // State field(s) for MouseRegionAdminLogsErros widget.
  bool mouseRegionAdminLogsErrosHovered = false;
  // State field(s) for MouseRegionAdminLogsAtiv widget.
  bool mouseRegionAdminLogsAtivHovered = false;
  // State field(s) for MouseRegionAdminAtend widget.
  bool mouseRegionAdminAtendHovered = false;
  // State field(s) for MouseRegionAdminTemas widget.
  bool mouseRegionAdminTemasHovered = false;
  // State field(s) for MouseRegionAdminModBanners widget.
  bool mouseRegionAdminModBannersHovered = false;
  // State field(s) for MouseRegionAdminModFotos widget.
  bool mouseRegionAdminModFotosHovered = false;
  // State field(s) for MouseRegionAdminSegmentos widget.
  bool mouseRegionAdminSegmentosHovered = false;
  // State field(s) for MouseRegionAdminConfig widget.
  bool mouseRegionAdminConfigHovered = false;
  // State field(s) for MouseRegionAdminUsers widget.
  bool mouseRegionAdminUsersHovered = false;
  Stream<List<TblNotificacoesQuantRow>>? containerNotificacaoSupabaseStream1;
  // State field(s) for MouseRegionNotificacoes widget.
  bool mouseRegionNotificacoesHovered = false;
  Stream<List<TblNotificacoesQuantRow>>? containerNotificacaoSupabaseStream2;
  // State field(s) for MouseRegionDarkMode widget.
  bool mouseRegionDarkModeHovered = false;
  // State field(s) for MouseRegionSair widget.
  bool mouseRegionSairHovered = false;
  // Stores action output result for [Action Block - acSairSistema] action in RowSair widget.
  bool? acSairSistemaResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
