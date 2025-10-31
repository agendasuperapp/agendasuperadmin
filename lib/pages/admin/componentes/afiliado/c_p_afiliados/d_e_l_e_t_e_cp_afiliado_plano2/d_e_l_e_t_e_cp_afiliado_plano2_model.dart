import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import 'd_e_l_e_t_e_cp_afiliado_plano2_widget.dart'
    show DELETECpAfiliadoPlano2Widget;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class DELETECpAfiliadoPlano2Model
    extends FlutterFlowModel<DELETECpAfiliadoPlano2Widget> {
  ///  Local state fields for this component.

  bool varSituacaoCadastro = true;

  List<ViewTblPagamentosStripeLogRow> varTblPagamentosStripeLogs = [];
  void addToVarTblPagamentosStripeLogs(ViewTblPagamentosStripeLogRow item) =>
      varTblPagamentosStripeLogs.add(item);
  void removeFromVarTblPagamentosStripeLogs(
          ViewTblPagamentosStripeLogRow item) =>
      varTblPagamentosStripeLogs.remove(item);
  void removeAtIndexFromVarTblPagamentosStripeLogs(int index) =>
      varTblPagamentosStripeLogs.removeAt(index);
  void insertAtIndexInVarTblPagamentosStripeLogs(
          int index, ViewTblPagamentosStripeLogRow item) =>
      varTblPagamentosStripeLogs.insert(index, item);
  void updateVarTblPagamentosStripeLogsAtIndex(
          int index, Function(ViewTblPagamentosStripeLogRow) updateFn) =>
      varTblPagamentosStripeLogs[index] =
          updateFn(varTblPagamentosStripeLogs[index]);

  bool varMostrarPlanosAnteriores = false;

  ///  State fields for stateful widgets in this component.

  Completer<List<ViewTblAppPlanosAfiliadosRow>>? requestCompleter;
  // Stores action output result for [Action Block - acStripePortalURL] action in ButtonAlterarPlano2 widget.
  String? resultStripePortalUrl2;
  // Stores action output result for [Action Block - acStripePortalURL] action in ButtonGerenciar widget.
  String? resultStripePortalUrsl;
  // Stores action output result for [Action Block - acDesfazerCancelamento] action in ButtonRenovar widget.
  bool? resultDesfazerCanc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future acAtualizarTblLogs(BuildContext context) async {}

  Future<bool> acDesfazerCancelamento(
    BuildContext context, {
    required String? paramSubscriptionID,
  }) async {
    bool? resultDesfazCancAssin;

    var confirmDialogResponse = await showDialog<bool>(
          context: context,
          builder: (alertDialogContext) {
            return WebViewAware(
              child: AlertDialog(
                title: Text('Atenção!'),
                content: Text(
                    'Deseja desfazer o cancelamento e continuar com a assinatura?'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext, false),
                    child: Text('Não'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext, true),
                    child: Text('Sim'),
                  ),
                ],
              ),
            );
          },
        ) ??
        false;
    if (confirmDialogResponse) {
      unawaited(
        () async {}(),
      );
      resultDesfazCancAssin =
          await action_blocks.acEdgeFuncDesfazCancAssinatura(
        context,
        paramSubscriptionID: paramSubscriptionID,
      );
      if (resultDesfazCancAssin) {
        await Future.delayed(
          Duration(
            milliseconds: 3000,
          ),
        );
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
