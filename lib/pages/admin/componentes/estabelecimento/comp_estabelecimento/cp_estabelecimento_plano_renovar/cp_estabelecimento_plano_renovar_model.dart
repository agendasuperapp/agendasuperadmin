import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'cp_estabelecimento_plano_renovar_widget.dart'
    show CpEstabelecimentoPlanoRenovarWidget;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CpEstabelecimentoPlanoRenovarModel
    extends FlutterFlowModel<CpEstabelecimentoPlanoRenovarWidget> {
  ///  Local state fields for this component.

  bool varSituacao = true;

  ViewTblAfiliadosCuponsRow? varTblCupom;

  ViewTblAppPlanosRow? varViewTblAppPlanos;

  bool varCupomDescontoAplicado = false;

  bool varTermoAceito = false;

  int varIDPlanoPrecoSelecionado = 0;

  int varIDPlanoPeriodoSelecionado = 0;

  TblPlanosPeriodosRow? varTblPlanoPeriodo;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in cp_estabelecimento_plano_renovar widget.
  List<TblPlanosPeriodosRow>? queryConsPlanosPeriodosIni;
  // Stores action output result for [Backend Call - Query Rows] action in cp_estabelecimento_plano_renovar widget.
  List<ViewTblAppPlanosRow>? queryConsViewTblAppPlanos;
  // State field(s) for DropDownPlanoPeriodo widget.
  int? dropDownPlanoPeriodoValue;
  FormFieldController<int>? dropDownPlanoPeriodoValueController;
  // State field(s) for TextFieldCupom widget.
  FocusNode? textFieldCupomFocusNode;
  TextEditingController? textFieldCupomTextController;
  String? Function(BuildContext, String?)?
      textFieldCupomTextControllerValidator;
  String? _textFieldCupomTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '*Informe o Cupom';
    }

    return null;
  }

  // Stores action output result for [Action Block - caAplicarCupomDesconto] action in Button widget.
  bool? resultAplicarCupom;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TblEstabelecimentoPlanoRow? resultInserttblEstabPlano;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ViewTblAppPlanosEstabelecimentosRow>? queryConsViewtblAppPlanosEstabel;

  @override
  void initState(BuildContext context) {
    textFieldCupomTextControllerValidator =
        _textFieldCupomTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldCupomFocusNode?.dispose();
    textFieldCupomTextController?.dispose();
  }

  /// Action blocks.
  Future<bool> caAplicarCupomDesconto(
    BuildContext context, {
    required bool? paramMostrarMensagemSucesso,
  }) async {
    String? resultConsCupom2;

    if ((varIDPlanoPeriodoSelecionado == null) ||
        (varIDPlanoPeriodoSelecionado <= 0)) {
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
    varCupomDescontoAplicado = false;
    resultConsCupom2 = await action_blocks.acConsultarCupom(
      context,
      paramCupom: functions
          .fcConverterStringMaiusculo(textFieldCupomTextController.text),
      paramTipoConsulta: 'CAD',
      paramid: 0,
    );
    if (resultConsCupom2 != 'True') {
      return false;
    }
    if (FFAppState().varTblAfiliadoCupom.vencido == true) {
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
    if (FFAppState().varTblAfiliadoCupom.aceitoNaRenovacao == false) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text(
                  'Esse cupom não é válido para renovação, apenas para cadastros novos'),
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
    if (FFAppState()
            .varTblAfiliadoCupom
            .idPlanosPeriodosLiberados
            .contains(dropDownPlanoPeriodoValue) ==
        false) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text(
                  'Cupom não permitido para o  período ${varTblPlanoPeriodo?.nome} selecione outro período ou informe outro CUPOM'),
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

    FFAppState().update(() {});
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
}
