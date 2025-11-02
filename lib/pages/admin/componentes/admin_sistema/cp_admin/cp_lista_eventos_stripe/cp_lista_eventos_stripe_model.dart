import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/admin/a_sistema/home/ca_aguarde/ca_aguarde_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'cp_lista_eventos_stripe_widget.dart' show CpListaEventosStripeWidget;
import 'package:flutter/material.dart';

class CpListaEventosStripeModel
    extends FlutterFlowModel<CpListaEventosStripeWidget> {
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

  dynamic varTblPagamentosStripeLogJson;

  int varQuantResultadosGeral = 0;

  int varQuantResultadosFiltro = 0;

  List<ViewTblEstabelecimentosFiltroRow> varTblEstabelecimentos = [];
  void addToVarTblEstabelecimentos(ViewTblEstabelecimentosFiltroRow item) =>
      varTblEstabelecimentos.add(item);
  void removeFromVarTblEstabelecimentos(
          ViewTblEstabelecimentosFiltroRow item) =>
      varTblEstabelecimentos.remove(item);
  void removeAtIndexFromVarTblEstabelecimentos(int index) =>
      varTblEstabelecimentos.removeAt(index);
  void insertAtIndexInVarTblEstabelecimentos(
          int index, ViewTblEstabelecimentosFiltroRow item) =>
      varTblEstabelecimentos.insert(index, item);
  void updateVarTblEstabelecimentosAtIndex(
          int index, Function(ViewTblEstabelecimentosFiltroRow) updateFn) =>
      varTblEstabelecimentos[index] = updateFn(varTblEstabelecimentos[index]);

  List<ViewTblPagamentosStripeEventosRow> varTblEventos = [];
  void addToVarTblEventos(ViewTblPagamentosStripeEventosRow item) =>
      varTblEventos.add(item);
  void removeFromVarTblEventos(ViewTblPagamentosStripeEventosRow item) =>
      varTblEventos.remove(item);
  void removeAtIndexFromVarTblEventos(int index) =>
      varTblEventos.removeAt(index);
  void insertAtIndexInVarTblEventos(
          int index, ViewTblPagamentosStripeEventosRow item) =>
      varTblEventos.insert(index, item);
  void updateVarTblEventosAtIndex(
          int index, Function(ViewTblPagamentosStripeEventosRow) updateFn) =>
      varTblEventos[index] = updateFn(varTblEventos[index]);

  List<ViewTblPgStStatusAssinaturaFiltroRow> varTblStatusAssinatura = [];
  void addToVarTblStatusAssinatura(ViewTblPgStStatusAssinaturaFiltroRow item) =>
      varTblStatusAssinatura.add(item);
  void removeFromVarTblStatusAssinatura(
          ViewTblPgStStatusAssinaturaFiltroRow item) =>
      varTblStatusAssinatura.remove(item);
  void removeAtIndexFromVarTblStatusAssinatura(int index) =>
      varTblStatusAssinatura.removeAt(index);
  void insertAtIndexInVarTblStatusAssinatura(
          int index, ViewTblPgStStatusAssinaturaFiltroRow item) =>
      varTblStatusAssinatura.insert(index, item);
  void updateVarTblStatusAssinaturaAtIndex(
          int index, Function(ViewTblPgStStatusAssinaturaFiltroRow) updateFn) =>
      varTblStatusAssinatura[index] = updateFn(varTblStatusAssinatura[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in cp_lista_eventos_stripe widget.
  List<ViewTblEstabelecimentosFiltroRow>? queryTblEstabelecimentosFiltro;
  // Stores action output result for [Backend Call - Query Rows] action in cp_lista_eventos_stripe widget.
  List<ViewTblPagamentosStripeEventosRow>? queryNomesEventos;
  // Stores action output result for [Backend Call - Query Rows] action in cp_lista_eventos_stripe widget.
  List<ViewTblPgStStatusAssinaturaFiltroRow>? queryStatusAssinatura;
  // State field(s) for TextFieldPesquisar widget.
  FocusNode? textFieldPesquisarFocusNode;
  TextEditingController? textFieldPesquisarTextController;
  String? Function(BuildContext, String?)?
      textFieldPesquisarTextControllerValidator;
  // State field(s) for DropDownEstabelecimentos widget.
  int? dropDownEstabelecimentosValue;
  FormFieldController<int>? dropDownEstabelecimentosValueController;
  // State field(s) for DropDownEventos widget.
  String? dropDownEventosValue;
  FormFieldController<String>? dropDownEventosValueController;
  // State field(s) for DropDownErro widget.
  String? dropDownErroValue;
  FormFieldController<String>? dropDownErroValueController;
  // State field(s) for DropDownPeriodoTeste widget.
  String? dropDownPeriodoTesteValue;
  FormFieldController<String>? dropDownPeriodoTesteValueController;
  // State field(s) for DropDownStatusAssinatura widget.
  String? dropDownStatusAssinaturaValue;
  FormFieldController<String>? dropDownStatusAssinaturaValueController;
  // State field(s) for DropDownCancelamentos widget.
  String? dropDownCancelamentosValue;
  FormFieldController<String>? dropDownCancelamentosValueController;
  // State field(s) for DropDownLimite widget.
  int? dropDownLimiteValue;
  FormFieldController<int>? dropDownLimiteValueController;
  // State field(s) for SwitchContaProducao widget.
  bool? switchContaProducaoValue;

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
    required bool? paramAbrirTelaAguarde,
  }) async {
    ApiCallResponse? apiResultTblPagamentosStripeLogs;
    List<ViewTblPagamentosStripeLogTotaisRow>? queryConsTotais;

    if (paramAbrirTelaAguarde!) {
      showDialog(
        context: context,
        builder: (dialogContext) {
          return Dialog(
            elevation: 0,
            insetPadding: EdgeInsets.zero,
            backgroundColor: Colors.transparent,
            alignment: AlignmentDirectional(0.0, 0.0)
                .resolve(Directionality.of(context)),
            child: CaAguardeWidget(
              paramMostrarAnimacao: true,
              paramFecharAoClicar: true,
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
    apiResultTblPagamentosStripeLogs =
        await SupabaseGroup.viewtblpagamentosstripelogCall.call(
      idEstabelecimento: (dropDownEstabelecimentosValue == 0) ||
              (dropDownEstabelecimentosValue == null)
          ? ''
          : dropDownEstabelecimentosValue?.toString(),
      nomeEvento: (dropDownEventosValue == 'Todos') ||
              (dropDownEventosValue == '') ||
              (dropDownEventosValue == null || dropDownEventosValue == '')
          ? ''
          : dropDownEventosValue,
      limit: valueOrDefault<String>(
        dropDownLimiteValue?.toString(),
        '10',
      ),
      orderby: 'id',
      ascdesc: 'desc',
      contaTeste:
          switchContaProducaoValue! ? false.toString() : true.toString(),
      token: currentJwtToken,
      rangeInicial: varRangeInicial.toString(),
      rangeFinal: varRangeFinal.toString(),
      consulta: textFieldPesquisarTextController.text,
      erro: () {
        if (dropDownErroValue == 'todos') {
          return '';
        } else if (dropDownErroValue == 'true') {
          return 'true';
        } else if (dropDownErroValue == 'false') {
          return 'false';
        } else if (dropDownErroValue == 'sem_estab') {
          return 'true';
        } else {
          return '';
        }
      }(),
      semEstabelecimento: dropDownErroValue == 'sem_estab' ? 'true' : '',
      periodoTeste:
          dropDownPeriodoTesteValue == 'todos' ? '' : dropDownPeriodoTesteValue,
      assinaturaCancSolicitado: () {
        if (dropDownCancelamentosValue == 'todos') {
          return '';
        } else if (dropDownCancelamentosValue == 'solicitou') {
          return 'true';
        } else {
          return '';
        }
      }(),
      statusAssinatura: (dropDownStatusAssinaturaValue == 'Todos') ||
              (dropDownStatusAssinaturaValue == '') ||
              (dropDownStatusAssinaturaValue == null ||
                  dropDownStatusAssinaturaValue == '')
          ? ''
          : dropDownStatusAssinaturaValue,
    );

    queryConsTotais = await ViewTblPagamentosStripeLogTotaisTable().queryRows(
      queryFn: (q) => q.eqOrNull(
        'conta_teste',
        switchContaProducaoValue! ? false : true,
      ),
    );
    if (SupabaseGroup.viewtblpagamentosstripelogCall
            .id(
              (apiResultTblPagamentosStripeLogs.jsonBody ?? ''),
            )
            ?.firstOrNull !=
        null) {
      varTblPagamentosStripeLogJson = getJsonField(
        (apiResultTblPagamentosStripeLogs.jsonBody ?? ''),
        r'''$''',
      );
      varQuantResultadosFiltro = functions.fcConverterStringPInteiro(
          functions.fcRetornarStringDepoisCaracateres(
              (apiResultTblPagamentosStripeLogs.getHeader('content-range') ??
                  ''),
              '/'));
      varQuantResultadosGeral = queryConsTotais.firstOrNull!.quant!;
      varTotalPaginas = functions.fcOpDividirERetornarInteiro(
          functions.fcConverterStringPInteiro(
              functions.fcRetornarStringDepoisCaracateres(
                  (apiResultTblPagamentosStripeLogs
                          .getHeader('content-range') ??
                      ''),
                  '/')),
          dropDownLimiteValue!);
      varTerminouCarregamento = true;
    } else {
      varTblPagamentosStripeLogJson = null;
      varQuantResultadosFiltro = 0;
      varQuantResultadosGeral = queryConsTotais.firstOrNull!.quant!;
      varTotalPaginas = 0;
      varTerminouCarregamento = true;
    }

    FFAppState().update(() {});
    if (paramAbrirTelaAguarde) {
      Navigator.pop(context);
    }
  }
}
