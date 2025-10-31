import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/admin/a_sistema/home/ca_aguarde/ca_aguarde_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'cp_lista_estabelecimentos_admin2_widget.dart'
    show CpListaEstabelecimentosAdmin2Widget;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CpListaEstabelecimentosAdmin2Model
    extends FlutterFlowModel<CpListaEstabelecimentosAdmin2Widget> {
  ///  Local state fields for this component.

  String varFotoFundo = 'sem foto';

  List<bool> varFiltroTipoPlano = [true, false];
  void addToVarFiltroTipoPlano(bool item) => varFiltroTipoPlano.add(item);
  void removeFromVarFiltroTipoPlano(bool item) =>
      varFiltroTipoPlano.remove(item);
  void removeAtIndexFromVarFiltroTipoPlano(int index) =>
      varFiltroTipoPlano.removeAt(index);
  void insertAtIndexInVarFiltroTipoPlano(int index, bool item) =>
      varFiltroTipoPlano.insert(index, item);
  void updateVarFiltroTipoPlanoAtIndex(int index, Function(bool) updateFn) =>
      varFiltroTipoPlano[index] = updateFn(varFiltroTipoPlano[index]);

  bool varTerminouCarregamento = false;

  int varRangeInicial = 0;

  int varRangeFinal = 9;

  int varNumPaginaAtual = 1;

  int varTotalPaginas = 0;

  dynamic varTblEstabelecimentosJson;

  int varQuantResultadosGeral = 0;

  int varQuantResultadosFiltro = 0;

  List<ViewTblAppPlanosNomesFiltrosRow> varTblPlanosNomesFiltro = [];
  void addToVarTblPlanosNomesFiltro(ViewTblAppPlanosNomesFiltrosRow item) =>
      varTblPlanosNomesFiltro.add(item);
  void removeFromVarTblPlanosNomesFiltro(
          ViewTblAppPlanosNomesFiltrosRow item) =>
      varTblPlanosNomesFiltro.remove(item);
  void removeAtIndexFromVarTblPlanosNomesFiltro(int index) =>
      varTblPlanosNomesFiltro.removeAt(index);
  void insertAtIndexInVarTblPlanosNomesFiltro(
          int index, ViewTblAppPlanosNomesFiltrosRow item) =>
      varTblPlanosNomesFiltro.insert(index, item);
  void updateVarTblPlanosNomesFiltroAtIndex(
          int index, Function(ViewTblAppPlanosNomesFiltrosRow) updateFn) =>
      varTblPlanosNomesFiltro[index] = updateFn(varTblPlanosNomesFiltro[index]);

  List<ViewTblEstabStatusAssinaturaFiltroRow> varTblStatusAssinatura = [];
  void addToVarTblStatusAssinatura(
          ViewTblEstabStatusAssinaturaFiltroRow item) =>
      varTblStatusAssinatura.add(item);
  void removeFromVarTblStatusAssinatura(
          ViewTblEstabStatusAssinaturaFiltroRow item) =>
      varTblStatusAssinatura.remove(item);
  void removeAtIndexFromVarTblStatusAssinatura(int index) =>
      varTblStatusAssinatura.removeAt(index);
  void insertAtIndexInVarTblStatusAssinatura(
          int index, ViewTblEstabStatusAssinaturaFiltroRow item) =>
      varTblStatusAssinatura.insert(index, item);
  void updateVarTblStatusAssinaturaAtIndex(int index,
          Function(ViewTblEstabStatusAssinaturaFiltroRow) updateFn) =>
      varTblStatusAssinatura[index] = updateFn(varTblStatusAssinatura[index]);

  List<ViewTblPgStatusPagamentoFiltroRow> varTblStatusPagamento = [];
  void addToVarTblStatusPagamento(ViewTblPgStatusPagamentoFiltroRow item) =>
      varTblStatusPagamento.add(item);
  void removeFromVarTblStatusPagamento(
          ViewTblPgStatusPagamentoFiltroRow item) =>
      varTblStatusPagamento.remove(item);
  void removeAtIndexFromVarTblStatusPagamento(int index) =>
      varTblStatusPagamento.removeAt(index);
  void insertAtIndexInVarTblStatusPagamento(
          int index, ViewTblPgStatusPagamentoFiltroRow item) =>
      varTblStatusPagamento.insert(index, item);
  void updateVarTblStatusPagamentoAtIndex(
          int index, Function(ViewTblPgStatusPagamentoFiltroRow) updateFn) =>
      varTblStatusPagamento[index] = updateFn(varTblStatusPagamento[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in cp_lista_estabelecimentos_admin2 widget.
  List<ViewTblAppPlanosNomesFiltrosRow>? queryTblPlanosNomes;
  // Stores action output result for [Backend Call - Query Rows] action in cp_lista_estabelecimentos_admin2 widget.
  List<ViewTblEstabStatusAssinaturaFiltroRow>? queryEstabStatusAssinatura;
  // Stores action output result for [Backend Call - Query Rows] action in cp_lista_estabelecimentos_admin2 widget.
  List<ViewTblPgStatusPagamentoFiltroRow>? queryEstabStatusPagmento;
  // State field(s) for TextFieldPesquisar widget.
  FocusNode? textFieldPesquisarFocusNode;
  TextEditingController? textFieldPesquisarTextController;
  String? Function(BuildContext, String?)?
      textFieldPesquisarTextControllerValidator;
  // State field(s) for DropDownNomesPlanos widget.
  int? dropDownNomesPlanosValue;
  FormFieldController<int>? dropDownNomesPlanosValueController;
  // State field(s) for DropDownStatusPlano widget.
  String? dropDownStatusPlanoValue;
  FormFieldController<String>? dropDownStatusPlanoValueController;
  // State field(s) for DropDownTipo widget.
  String? dropDownTipoValue;
  FormFieldController<String>? dropDownTipoValueController;
  // State field(s) for DropDownStatusAssinatura widget.
  String? dropDownStatusAssinaturaValue;
  FormFieldController<String>? dropDownStatusAssinaturaValueController;
  // State field(s) for DropDownPeriodoTeste widget.
  String? dropDownPeriodoTesteValue;
  FormFieldController<String>? dropDownPeriodoTesteValueController;
  // State field(s) for DropDownCancelamento widget.
  String? dropDownCancelamentoValue;
  FormFieldController<String>? dropDownCancelamentoValueController;
  // State field(s) for DropDownStatusPagamento widget.
  String? dropDownStatusPagamentoValue;
  FormFieldController<String>? dropDownStatusPagamentoValueController;
  // State field(s) for DropDownLimite widget.
  int? dropDownLimiteValue;
  FormFieldController<int>? dropDownLimiteValueController;
  // State field(s) for SwitchContaProducao widget.
  bool? switchContaProducaoValue;
  // State field(s) for SwitchSituacao widget.
  bool? switchSituacaoValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldPesquisarFocusNode?.dispose();
    textFieldPesquisarTextController?.dispose();
  }

  /// Action blocks.
  Future acAtualizarDadosAPI(
    BuildContext context, {
    required bool? paramNavPrimeiraPag,
    required bool? paramExibirAguarde,
  }) async {
    ApiCallResponse? apiResultTblEstabelecimentos;
    List<ViewTblEstabelecimentosTotaisRow>? queryConsTotais;

    if (paramExibirAguarde!) {
      showDialog(
        context: context,
        builder: (dialogContext) {
          return Dialog(
            elevation: 0,
            insetPadding: EdgeInsets.zero,
            backgroundColor: Colors.transparent,
            alignment: AlignmentDirectional(0.0, 0.0)
                .resolve(Directionality.of(context)),
            child: WebViewAware(
              child: CaAguardeWidget(
                paramMostrarAnimacao: true,
                paramFecharAoClicar: true,
              ),
            ),
          );
        },
      );
    }
    if (paramNavPrimeiraPag!) {
      varRangeInicial = 0;
      varRangeFinal = (dropDownLimiteValue!) - 1;
      varNumPaginaAtual = 1;
    }
    apiResultTblEstabelecimentos =
        await SupabaseGroup.viewtblestabelecimentosadminCall.call(
      situacao: switchSituacaoValue?.toString(),
      assinatura: dropDownTipoValue == 'todos' ? '' : dropDownTipoValue,
      contaTeste: switchContaProducaoValue! ? 'false' : 'true',
      idPlanoNome: dropDownNomesPlanosValue == 0
          ? ''
          : dropDownNomesPlanosValue?.toString(),
      statusPlano:
          dropDownStatusPlanoValue == 'todos' ? '' : dropDownStatusPlanoValue,
      statusPagamento: dropDownStatusPagamentoValue == 'Todos'
          ? ''
          : dropDownStatusPagamentoValue,
      rangeInicial: varRangeInicial.toString(),
      rangeFinal: varRangeFinal.toString(),
      orderby: 'id',
      ascdesc: 'desc',
      token: currentJwtToken,
      consulta: textFieldPesquisarTextController.text != ''
          ? functions.fcConverterStringMinusculo(functions
              .fcRemoverAcentosString(textFieldPesquisarTextController.text))
          : '',
      assinaturaCancSolicitado:
          dropDownCancelamentoValue == 'todos' ? '' : 'true',
      statusAssinatura: dropDownStatusAssinaturaValue == 'Todos'
          ? ''
          : dropDownStatusAssinaturaValue,
      periodoTesteAtivo:
          dropDownPeriodoTesteValue == 'todos' ? '' : dropDownPeriodoTesteValue,
    );

    queryConsTotais = await ViewTblEstabelecimentosTotaisTable().queryRows(
      queryFn: (q) => q.eqOrNull(
        'conta_teste',
        switchContaProducaoValue! ? false : true,
      ),
    );
    if (SupabaseGroup.viewtblestabelecimentosadminCall
                .id(
                  (apiResultTblEstabelecimentos.jsonBody ?? ''),
                )
                ?.firstOrNull !=
            null &&
        SupabaseGroup.viewtblestabelecimentosadminCall
                .id(
                  (apiResultTblEstabelecimentos.jsonBody ?? ''),
                )
                ?.firstOrNull !=
            '') {
      varTblEstabelecimentosJson = getJsonField(
        (apiResultTblEstabelecimentos.jsonBody ?? ''),
        r'''$''',
      );
      varQuantResultadosFiltro = functions.fcConverterStringPInteiro(
          functions.fcRetornarStringDepoisCaracateres(
              (apiResultTblEstabelecimentos.getHeader('content-range') ?? ''),
              '/'));
      varQuantResultadosGeral = queryConsTotais.firstOrNull!.quant!;
      varTotalPaginas = functions.fcOpDividirERetornarInteiro(
          functions.fcConverterStringPInteiro(
              functions.fcRetornarStringDepoisCaracateres(
                  (apiResultTblEstabelecimentos.getHeader('content-range') ??
                      ''),
                  '/')),
          dropDownLimiteValue!);
      varTerminouCarregamento = true;
    } else {
      varTblEstabelecimentosJson = null;
      varQuantResultadosFiltro = 0;
      varQuantResultadosGeral = queryConsTotais.firstOrNull!.quant!;
      varTotalPaginas = 0;
      varTerminouCarregamento = true;
    }

    FFAppState().update(() {});
    if (paramExibirAguarde) {
      Navigator.pop(context);
    }
  }
}
