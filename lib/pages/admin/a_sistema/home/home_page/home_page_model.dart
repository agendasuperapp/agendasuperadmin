import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_home_cadastro/cp_home_cadastro_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  int varContadorAtivarDesenvolv = 0;

  bool varCupomDescontoAplicado = false;

  int varIDPlanoPeriodoSelecionado = 1;

  int varIndexFotoSelecionada = 0;

  String varUrlVideo = 'https://youtu.be/EUfzHKBvkeY?si=QoWQpWl7BnlpHe6Y';

  List<String> varBlackListCupons = ['Hello World'];
  void addToVarBlackListCupons(String item) => varBlackListCupons.add(item);
  void removeFromVarBlackListCupons(String item) =>
      varBlackListCupons.remove(item);
  void removeAtIndexFromVarBlackListCupons(int index) =>
      varBlackListCupons.removeAt(index);
  void insertAtIndexInVarBlackListCupons(int index, String item) =>
      varBlackListCupons.insert(index, item);
  void updateVarBlackListCuponsAtIndex(int index, Function(String) updateFn) =>
      varBlackListCupons[index] = updateFn(varBlackListCupons[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Action Block - acVerificarUserLogado] action in HomePage widget.
  bool? acResultVerificarUserLogadoHome;
  // Stores action output result for [Action Block - acAplicarCupom] action in HomePage widget.
  bool? acAplicarCupomInic;
  // State field(s) for ColumnConteudo widget.
  ScrollController? columnConteudo;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 3;

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for CarouselFuncionalidades widget.
  CarouselSliderController? carouselFuncionalidadesController;
  int carouselFuncionalidadesCurrentIndex = 0;

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 1;

  // State field(s) for StaggeredView widget.
  ScrollController? staggeredViewController1;
  // State field(s) for TextFieldCupom widget.
  FocusNode? textFieldCupomFocusNode;
  TextEditingController? textFieldCupomTextController;
  String? Function(BuildContext, String?)?
      textFieldCupomTextControllerValidator;
  String? _textFieldCupomTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o cupom';
    }

    return null;
  }

  // State field(s) for StaggeredView widget.
  ScrollController? staggeredViewController2;
  // State field(s) for StaggeredView widget.
  ScrollController? staggeredViewController3;
  // Stores action output result for [Action Block - acVerificarUserLogado] action in Button widget.
  bool? acResultVerificarUserLogado;
  // Stores action output result for [Action Block - acAplicarCupom] action in Button widget.
  bool? acResultAplicarCupom;
  // Stores action output result for [Action Block - acVerificarUserLogado] action in Container widget.
  bool? acResultVerificarUserLogado2;

  @override
  void initState(BuildContext context) {
    columnConteudo = ScrollController();
    staggeredViewController1 = ScrollController();
    textFieldCupomTextControllerValidator =
        _textFieldCupomTextControllerValidator;
    staggeredViewController2 = ScrollController();
    staggeredViewController3 = ScrollController();
  }

  @override
  void dispose() {
    columnConteudo?.dispose();
    staggeredViewController1?.dispose();
    textFieldCupomFocusNode?.dispose();
    textFieldCupomTextController?.dispose();

    staggeredViewController2?.dispose();
    staggeredViewController3?.dispose();
  }

  /// Action blocks.
  Future<bool> acAplicarCupom(
    BuildContext context, {
    required bool? paramMostrarMensagemSucesso,
  }) async {
    String? resultConsCupom;

    if (varIDPlanoPeriodoSelecionado <= 0) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Primeiro selecione um período'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            ),
          );
        },
      );
      return false;
    }
    if (functions
            .fcConverterStringMaiusculo(textFieldCupomTextController.text) ==
        'AGENDASUPER') {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Cupom inválido!'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            ),
          );
        },
      );
      return false;
    }
    resultConsCupom = await action_blocks.acConsultarCupom(
      context,
      paramCupom: textFieldCupomTextController.text,
      paramTipoConsulta: 'CAD',
      paramid: 0,
    );
    if (resultConsCupom != 'True') {
      varCupomDescontoAplicado = false;
      return false;
    }
    if (FFAppState().varTblAfiliadoCupom.vencido == true) {
      varCupomDescontoAplicado = false;
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Cupom vencido, digite outro'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            ),
          );
        },
      );
      return false;
    }
    if ((FFAppState().varTblAfiliadoCupom.idPlanosPeriodosLiberados.length >
            0) &&
        (FFAppState()
                .varTblAfiliadoCupom
                .idPlanosPeriodosLiberados
                .contains(varIDPlanoPeriodoSelecionado) ==
            false)) {
      varCupomDescontoAplicado = false;
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text(
                  'Cupom não permitido para o  período ${FFAppState().varTblPlanosPeriodos.where((e) => e.id == varIDPlanoPeriodoSelecionado).toList().firstOrNull?.nome} selecione outro período ou informe outro CUPOM'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            ),
          );
        },
      );
      return false;
    }
    varCupomDescontoAplicado = true;
    if (paramMostrarMensagemSucesso!) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Cupom aplicado com sucesso...',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
    }
    return true;
  }

  Future acCadEstabelecimento(
    BuildContext context, {
    required int? paramIDPlano,
    TblPlanosDXve3yNStruct? paramTblPlano,
  }) async {
    if (MediaQuery.sizeOf(context).width < 900.0) {
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return WebViewAware(
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: CpHomeCadastroWidget(
                  paramTipoCadastro: 'ESTABELECIMENTO',
                  paramIDPlanoPeriodo: varIDPlanoPeriodoSelecionado,
                  paramIDPlano: paramIDPlano!,
                  paramTblPlanoPeriodosRow: FFAppState()
                      .varTblPlanosPeriodos
                      .where((e) => e.id == varIDPlanoPeriodoSelecionado)
                      .toList()
                      .firstOrNull!,
                  paramCupomAplicado: varCupomDescontoAplicado,
                  paramNomeCupom: functions.fcConverterStringMaiusculo(
                      textFieldCupomTextController.text),
                  paramTblPlanos: paramTblPlano!,
                ),
              ),
            ),
          );
        },
      );
    } else {
      await showDialog(
        barrierColor: Color(0xCB0D0D0D),
        context: context,
        builder: (dialogContext) {
          return Dialog(
            elevation: 0,
            insetPadding: EdgeInsets.zero,
            backgroundColor: Colors.transparent,
            alignment: AlignmentDirectional(0.0, 0.0)
                .resolve(Directionality.of(context)),
            child: WebViewAware(
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(dialogContext).unfocus();
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: CpHomeCadastroWidget(
                  paramTipoCadastro: 'ESTABELECIMENTO',
                  paramIDPlanoPeriodo: varIDPlanoPeriodoSelecionado,
                  paramIDPlano: paramIDPlano!,
                  paramTblPlanoPeriodosRow: FFAppState()
                      .varTblPlanosPeriodos
                      .where((e) => e.id == varIDPlanoPeriodoSelecionado)
                      .toList()
                      .firstOrNull!,
                  paramCupomAplicado: varCupomDescontoAplicado,
                  paramNomeCupom: textFieldCupomTextController.text,
                  paramTblPlanos: paramTblPlano!,
                ),
              ),
            ),
          );
        },
      );
    }
  }
}
