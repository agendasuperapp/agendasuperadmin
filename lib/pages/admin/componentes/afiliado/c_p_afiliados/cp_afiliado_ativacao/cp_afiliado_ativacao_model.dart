import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'cp_afiliado_ativacao_widget.dart' show CpAfiliadoAtivacaoWidget;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CpAfiliadoAtivacaoModel
    extends FlutterFlowModel<CpAfiliadoAtivacaoWidget> {
  ///  Local state fields for this component.

  bool varSituacaoCadastro = true;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future acEfetuarPagamento(BuildContext context) async {
    await TblAfiliadosTable().update(
      data: {
        'status_afiliacao': 'TREINAMENTO',
      },
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        FFAppState().varIDAfiliadoLogado,
      ),
    );
    await action_blocks.acAtualizarAfiliadoCad(context);
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Seu pagamento foi efetuado com sucesso, agora seu Treinamento está liberado'),
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

    context.pushNamed(PgAfiliadoTreinamentoWidget.routeName);
  }
}
