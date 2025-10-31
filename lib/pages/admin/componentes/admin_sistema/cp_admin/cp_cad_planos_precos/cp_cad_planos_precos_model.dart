import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cp_cad_planos_precos_widget.dart' show CpCadPlanosPrecosWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpCadPlanosPrecosModel extends FlutterFlowModel<CpCadPlanosPrecosWidget> {
  ///  Local state fields for this component.

  bool varSituacao = true;

  int varIDAssinaturaEditando = 0;

  int varIDTblAfiliadoAPP = 0;

  List<ViewTblAfiliadosCuponsPadFiltroRow> varViewCuponsPadrao = [];
  void addToVarViewCuponsPadrao(ViewTblAfiliadosCuponsPadFiltroRow item) =>
      varViewCuponsPadrao.add(item);
  void removeFromVarViewCuponsPadrao(ViewTblAfiliadosCuponsPadFiltroRow item) =>
      varViewCuponsPadrao.remove(item);
  void removeAtIndexFromVarViewCuponsPadrao(int index) =>
      varViewCuponsPadrao.removeAt(index);
  void insertAtIndexInVarViewCuponsPadrao(
          int index, ViewTblAfiliadosCuponsPadFiltroRow item) =>
      varViewCuponsPadrao.insert(index, item);
  void updateVarViewCuponsPadraoAtIndex(
          int index, Function(ViewTblAfiliadosCuponsPadFiltroRow) updateFn) =>
      varViewCuponsPadrao[index] = updateFn(varViewCuponsPadrao[index]);

  int varIDPlanoPreco = 0;

  ///  State fields for stateful widgets in this component.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in cp_cad_planos_precos widget.
  List<ViewTblAfiliadosCuponsPadFiltroRow>? queryConsCuponsPadrao;
  Completer<List<ViewTblAppPlanosNomesRow>>? requestCompleter2;
  // State field(s) for TabBarPlano widget.
  TabController? tabBarPlanoController;
  int get tabBarPlanoCurrentIndex =>
      tabBarPlanoController != null ? tabBarPlanoController!.index : 0;
  int get tabBarPlanoPreviousIndex =>
      tabBarPlanoController != null ? tabBarPlanoController!.previousIndex : 0;

  // State field(s) for DropDownPlanoPeriodo widget.
  int? dropDownPlanoPeriodoValue;
  FormFieldController<int>? dropDownPlanoPeriodoValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDownPlanoPeriodo widget.
  List<TblPlanosPeriodosRow>? queryConsPlanosPeriodos;
  // State field(s) for DropDownAplicativo widget.
  int? dropDownAplicativoValue;
  FormFieldController<int>? dropDownAplicativoValueController;
  // State field(s) for DropDownNome widget.
  int? dropDownNomeValue;
  FormFieldController<int>? dropDownNomeValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDownNome widget.
  List<TblPlanosNomesRow>? queryConsPlanoNome;
  // State field(s) for DropDownCupomPadrao widget.
  int? dropDownCupomPadraoValue;
  FormFieldController<int>? dropDownCupomPadraoValueController;
  // State field(s) for CountControllerQtProfMin widget.
  int? countControllerQtProfMinValue;
  // State field(s) for CountControllerQtProfMax widget.
  int? countControllerQtProfMaxValue;
  // State field(s) for TextFieldQtAgendamentos widget.
  FocusNode? textFieldQtAgendamentosFocusNode;
  TextEditingController? textFieldQtAgendamentosTextController;
  String? Function(BuildContext, String?)?
      textFieldQtAgendamentosTextControllerValidator;
  // State field(s) for TextFieldValor widget.
  FocusNode? textFieldValorFocusNode;
  TextEditingController? textFieldValorTextController;
  String? Function(BuildContext, String?)?
      textFieldValorTextControllerValidator;
  // State field(s) for TextFieldValorAssinatura widget.
  FocusNode? textFieldValorAssinaturaFocusNode;
  TextEditingController? textFieldValorAssinaturaTextController;
  String? Function(BuildContext, String?)?
      textFieldValorAssinaturaTextControllerValidator;
  String? _textFieldValorAssinaturaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o valor do plano (Assinatura/Recorrente)';
    }

    return null;
  }

  // State field(s) for TextFieldPrecoAnterior widget.
  FocusNode? textFieldPrecoAnteriorFocusNode;
  TextEditingController? textFieldPrecoAnteriorTextController;
  String? Function(BuildContext, String?)?
      textFieldPrecoAnteriorTextControllerValidator;
  // State field(s) for TextFieldPercComissao widget.
  FocusNode? textFieldPercComissaoFocusNode;
  TextEditingController? textFieldPercComissaoTextController;
  String? Function(BuildContext, String?)?
      textFieldPercComissaoTextControllerValidator;
  // State field(s) for TextFieldPDescricao widget.
  FocusNode? textFieldPDescricaoFocusNode;
  TextEditingController? textFieldPDescricaoTextController;
  String? Function(BuildContext, String?)?
      textFieldPDescricaoTextControllerValidator;
  // State field(s) for TextFieldPDetalhes widget.
  FocusNode? textFieldPDetalhesFocusNode;
  TextEditingController? textFieldPDetalhesTextController;
  String? Function(BuildContext, String?)?
      textFieldPDetalhesTextControllerValidator;
  String? _textFieldPDetalhesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe os detalhes';
    }

    return null;
  }

  // State field(s) for TextFieldObsPlano widget.
  FocusNode? textFieldObsPlanoFocusNode;
  TextEditingController? textFieldObsPlanoTextController;
  String? Function(BuildContext, String?)?
      textFieldObsPlanoTextControllerValidator;
  String? _textFieldObsPlanoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe a Observação do Plano';
    }

    return null;
  }

  // State field(s) for TextFieldObsDesconto widget.
  FocusNode? textFieldObsDescontoFocusNode;
  TextEditingController? textFieldObsDescontoTextController;
  String? Function(BuildContext, String?)?
      textFieldObsDescontoTextControllerValidator;
  // State field(s) for TextFieldObsCupom widget.
  FocusNode? textFieldObsCupomFocusNode;
  TextEditingController? textFieldObsCupomTextController;
  String? Function(BuildContext, String?)?
      textFieldObsCupomTextControllerValidator;
  // State field(s) for CountControllerTempoTrial widget.
  int? countControllerTempoTrialValue;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ViewTblAppPlanosRow>? queryConsNomePlano;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TblPlanosPrecosRow? resultInsertPllanoPreco;
  // Stores action output result for [Backend Call - Query Rows] action in TabAssinatura widget.
  List<TblPlanosPeriodosRow>? queryConsPeriodo2;
  // Stores action output result for [Backend Call - Query Rows] action in TabAssinatura widget.
  List<TblPlanosNomesRow>? queryConsPlanoNome2;
  Completer<List<TblPlanosContasRow>>? requestCompleter1;
  Completer<List<ViewTblPlanosAssinaturaRow>>? requestCompleter3;
  // State field(s) for DropDownBanco widget.
  int? dropDownBancoValue;
  FormFieldController<int>? dropDownBancoValueController;
  // State field(s) for DropDownContas widget.
  int? dropDownContasValue;
  FormFieldController<int>? dropDownContasValueController;
  // State field(s) for TextFieldNomeAssinatura widget.
  FocusNode? textFieldNomeAssinaturaFocusNode;
  TextEditingController? textFieldNomeAssinaturaTextController;
  String? Function(BuildContext, String?)?
      textFieldNomeAssinaturaTextControllerValidator;
  String? _textFieldNomeAssinaturaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o Nome';
    }

    return null;
  }

  // State field(s) for TextFieldIDProduto widget.
  FocusNode? textFieldIDProdutoFocusNode;
  TextEditingController? textFieldIDProdutoTextController;
  String? Function(BuildContext, String?)?
      textFieldIDProdutoTextControllerValidator;
  String? _textFieldIDProdutoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o ID do Produto (No site do banco)';
    }

    return null;
  }

  // State field(s) for TextFieldIDPreco widget.
  FocusNode? textFieldIDPrecoFocusNode;
  TextEditingController? textFieldIDPrecoTextController;
  String? Function(BuildContext, String?)?
      textFieldIDPrecoTextControllerValidator;
  String? _textFieldIDPrecoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o ID do Preço (No site do banco)';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TblPlanosProdutosRow>? queryConsProdCad;

  @override
  void initState(BuildContext context) {
    textFieldValorAssinaturaTextControllerValidator =
        _textFieldValorAssinaturaTextControllerValidator;
    textFieldPDetalhesTextControllerValidator =
        _textFieldPDetalhesTextControllerValidator;
    textFieldObsPlanoTextControllerValidator =
        _textFieldObsPlanoTextControllerValidator;
    textFieldNomeAssinaturaTextControllerValidator =
        _textFieldNomeAssinaturaTextControllerValidator;
    textFieldIDProdutoTextControllerValidator =
        _textFieldIDProdutoTextControllerValidator;
    textFieldIDPrecoTextControllerValidator =
        _textFieldIDPrecoTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarPlanoController?.dispose();
    textFieldQtAgendamentosFocusNode?.dispose();
    textFieldQtAgendamentosTextController?.dispose();

    textFieldValorFocusNode?.dispose();
    textFieldValorTextController?.dispose();

    textFieldValorAssinaturaFocusNode?.dispose();
    textFieldValorAssinaturaTextController?.dispose();

    textFieldPrecoAnteriorFocusNode?.dispose();
    textFieldPrecoAnteriorTextController?.dispose();

    textFieldPercComissaoFocusNode?.dispose();
    textFieldPercComissaoTextController?.dispose();

    textFieldPDescricaoFocusNode?.dispose();
    textFieldPDescricaoTextController?.dispose();

    textFieldPDetalhesFocusNode?.dispose();
    textFieldPDetalhesTextController?.dispose();

    textFieldObsPlanoFocusNode?.dispose();
    textFieldObsPlanoTextController?.dispose();

    textFieldObsDescontoFocusNode?.dispose();
    textFieldObsDescontoTextController?.dispose();

    textFieldObsCupomFocusNode?.dispose();
    textFieldObsCupomTextController?.dispose();

    textFieldNomeAssinaturaFocusNode?.dispose();
    textFieldNomeAssinaturaTextController?.dispose();

    textFieldIDProdutoFocusNode?.dispose();
    textFieldIDProdutoTextController?.dispose();

    textFieldIDPrecoFocusNode?.dispose();
    textFieldIDPrecoTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
