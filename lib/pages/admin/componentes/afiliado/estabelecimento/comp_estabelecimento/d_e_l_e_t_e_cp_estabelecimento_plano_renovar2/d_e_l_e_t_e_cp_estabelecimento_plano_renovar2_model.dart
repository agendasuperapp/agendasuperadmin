import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'd_e_l_e_t_e_cp_estabelecimento_plano_renovar2_widget.dart'
    show DELETECpEstabelecimentoPlanoRenovar2Widget;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class DELETECpEstabelecimentoPlanoRenovar2Model
    extends FlutterFlowModel<DELETECpEstabelecimentoPlanoRenovar2Widget> {
  ///  Local state fields for this component.

  bool varCupomDescontoAplicado = false;

  bool varTermoAceito = false;

  int varIDPlanoPeriodoSelecionado = 1;

  bool varURLGerada = false;

  int varContadorTentativasUrl = 0;

  bool varAssinatura = true;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in DELETE-cp_estabelecimento_plano_renovar2 widget.
  List<ViewTblConfiguracoesRow>? queryConsTipoPlaRen;
  // State field(s) for TextFieldCupomDesc widget.
  FocusNode? textFieldCupomDescFocusNode;
  TextEditingController? textFieldCupomDescTextController;
  String? Function(BuildContext, String?)?
      textFieldCupomDescTextControllerValidator;
  String? _textFieldCupomDescTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o cupom';
    }

    return null;
  }

  // Stores action output result for [Action Block - caAplicarCupomDesconto] action in Button widget.
  bool? acResultAplicarCupom;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ViewQuantTblProfissionaisRow>? queryQtProfissionais;
  // Stores action output result for [Action Block - acCriarPagamentoPlanoEstab] action in Button widget.
  String? acResultCriarPgPlanoEstabRenov;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TblPagamentosStripeAppsRow>? resultQueryPlanoRenov;
  // State field(s) for SwitchAssinatura widget.
  bool? switchAssinaturaValue;

  @override
  void initState(BuildContext context) {
    textFieldCupomDescTextControllerValidator =
        _textFieldCupomDescTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldCupomDescFocusNode?.dispose();
    textFieldCupomDescTextController?.dispose();
  }

  /// Action blocks.
  Future<bool> caAplicarCupomDesconto(
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
    if (functions.fcConverterStringMaiusculo(
            textFieldCupomDescTextController.text) ==
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
      paramCupom: textFieldCupomDescTextController.text,
      paramTipoConsulta: 'CAD',
      paramid: 0,
    );
    if (resultConsCupom != 'True') {
      varCupomDescontoAplicado = false;
      return false;
    }
    if (FFAppState().varTblAfiliadoCupom.aceitoNaRenovacao == false) {
      varCupomDescontoAplicado = false;
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Cupom não aceito para renovação, digite outro'),
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
}
