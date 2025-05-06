import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/page_mensagens_personalizadas/cp_dialog_snack_bar/cp_dialog_snack_bar_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'cp_cad_servicos_widget.dart' show CpCadServicosWidget;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CpCadServicosModel extends FlutterFlowModel<CpCadServicosWidget> {
  ///  Local state fields for this component.

  bool varVlrSobConsulta = false;

  bool varSituacaoCadastro = true;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in cp_cad_servicos widget.
  List<TblCadServicosRow>? queryTblCaadServicos;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  // State field(s) for TextFieldDescricao widget.
  FocusNode? textFieldDescricaoFocusNode;
  TextEditingController? textFieldDescricaoTextController;
  String? Function(BuildContext, String?)?
      textFieldDescricaoTextControllerValidator;
  // State field(s) for TextFieldValor1 widget.
  FocusNode? textFieldValor1FocusNode;
  TextEditingController? textFieldValor1TextController;
  String? Function(BuildContext, String?)?
      textFieldValor1TextControllerValidator;
  // State field(s) for TextFieldTempo widget.
  FocusNode? textFieldTempoFocusNode;
  TextEditingController? textFieldTempoTextController;
  String? Function(BuildContext, String?)?
      textFieldTempoTextControllerValidator;
  // Stores action output result for [Action Block - acSalvarCadastro] action in TextFieldTempo widget.
  bool? acSalvarCadastro2;
  // Stores action output result for [Action Block - acSalvarCadastro] action in Button widget.
  bool? acSalvarCadastro1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldDescricaoFocusNode?.dispose();
    textFieldDescricaoTextController?.dispose();

    textFieldValor1FocusNode?.dispose();
    textFieldValor1TextController?.dispose();

    textFieldTempoFocusNode?.dispose();
    textFieldTempoTextController?.dispose();
  }

  /// Action blocks.
  Future<bool> acSalvarCadastro(BuildContext context) async {
    List<ViewTblServicosRow>? queryConsNome;

    if (textFieldNomeTextController.text == '') {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Informe o nome',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return false;
    }
    queryConsNome = await ViewTblServicosTable().queryRows(
      queryFn: (q) => q
          .eqOrNull(
            'id_estabelecimento',
            FFAppState().VarIDEstabelecimentoLogado,
          )
          .eqOrNull(
            'nome_upper',
            functions
                .fcConverterStringMaiusculo(textFieldNomeTextController.text),
          ),
    );
    if ((queryConsNome.length > 0) &&
        (queryConsNome.firstOrNull?.id != widget!.paramID)) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem:
            'Já tem um serviço cadastrado com esse nome, verifique se está inativo',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return false;
    }
    if (!varVlrSobConsulta &&
        (functions.fcVerificarNumeroDecimalValido(
                functions.fcSubstituirCaractere(
                    textFieldValor1TextController.text, ',', '.')) ==
            false) &&
        (textFieldValor1TextController.text != '')) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Valor inválido',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return false;
    }
    if (!varVlrSobConsulta &&
        ((textFieldValor1TextController.text == '') ||
            (functions.fcConverterStringPDouble(functions.fcSubstituirCaractere(
                    textFieldValor1TextController.text, ',', '.')) <=
                0.0))) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Informe o valor',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return false;
    }
    if ((textFieldTempoTextController.text == '') ||
        (functions
                .fcConverterStringPInteiro(textFieldTempoTextController.text) <=
            0)) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Informe o tempo em minutos',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return false;
    }
    if ((uploadedFileUrl == '') &&
        widget!.paramCadastro) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Insira uma foto',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return false;
    }
    if (widget!.paramCadastro == true) {
      await TblCadServicosTable().insert({
        'nome': textFieldNomeTextController.text,
        'descricao': textFieldDescricaoTextController.text,
        'valor': varVlrSobConsulta
            ? 0.0
            : functions.fcConverterStringPDouble(
                functions.fcSubstituirCaractere(
                    textFieldValor1TextController.text, ',', '.')),
        'tempo_minutos': int.tryParse(textFieldTempoTextController.text),
        'situacao': varSituacaoCadastro,
        'foto': uploadedFileUrl,
        'valor_sob_consulta': varVlrSobConsulta,
        'id_estabelecimento': FFAppState().VarIDEstabelecimentoLogado,
        'user_id': currentUserUid,
      });
      await TblEstabelecimentoTable().update(
        data: {
          'data_ultima_atualizacao_servicos':
              supaSerialize<DateTime>(getCurrentTimestamp),
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          FFAppState().VarIDEstabelecimentoLogado,
        ),
      );
      if (FFAppState().VarTblEstabelecimentoLogado.assistenteCadConcluido) {
        await action_blocks.acMensagemDialog(
          context,
          paramTitulo: 'Atenção!',
          paramMensagem: 'Salvo com Sucesso!',
          paramVerCarrinho: false,
          paramTipo: 'sucesso',
          paramPadrao: false,
        );
      } else {
        Navigator.pop(context);
        showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return WebViewAware(
              child: Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: CpDialogSnackBarWidget(
                  paramMensagem: 'Serviço adicionado com sucesso!',
                  paramCorTexto: FlutterFlowTheme.of(context).info,
                  paramCorFundo: FlutterFlowTheme.of(context).success,
                  paramTempoMsFechar: 2000,
                ),
              ),
            );
          },
        );
      }

      varVlrSobConsulta = false;
      varSituacaoCadastro = true;
    } else {
      await TblCadServicosTable().update(
        data: {
          'nome': textFieldNomeTextController.text,
          'descricao': textFieldDescricaoTextController.text,
          'valor': varVlrSobConsulta
              ? 0.0
              : functions.fcConverterStringPDouble(
                  functions.fcSubstituirCaractere(
                      textFieldValor1TextController.text, ',', '.')),
          'tempo_minutos': int.tryParse(textFieldTempoTextController.text),
          'foto': uploadedFileUrl != ''
              ? uploadedFileUrl
              : queryTblCaadServicos?.firstOrNull?.foto,
          'situacao': varSituacaoCadastro,
          'valor_sob_consulta': varVlrSobConsulta,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          widget!.paramID,
        ),
      );
      if (FFAppState().VarAbrirJanelasWebAndroid) {
        context.safePop();
        Navigator.pop(context);
      } else {
        Navigator.pop(context);
      }

      await TblEstabelecimentoTable().update(
        data: {
          'data_ultima_atualizacao_servicos':
              supaSerialize<DateTime>(getCurrentTimestamp),
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          FFAppState().VarIDEstabelecimentoLogado,
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Alterações salvas com sucesso!',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).info,
            ),
          ),
          duration: Duration(milliseconds: 2000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
    }

    return true;
  }
}
