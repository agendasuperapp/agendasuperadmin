import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/ca_aguarde/ca_aguarde_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'cp_login_widget.dart' show CpLoginWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CpLoginModel extends FlutterFlowModel<CpLoginWidget> {
  ///  Local state fields for this component.

  bool varCadastrar = true;

  bool varEsqueceuSenha = false;

  bool varEmailInvalido = false;

  bool varTelefoneInvalido = false;

  bool varAutenticarComTelefone = false;

  String? varUrlFotoExcluir;

  String? varCodValidacaoWhatsEmail;

  bool varCodRecuperarSenhaEnviado = false;

  int? varIDClienteRecuperarSenha;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldEntrarTel widget.
  FocusNode? textFieldEntrarTelFocusNode;
  TextEditingController? textFieldEntrarTelTextController;
  late MaskTextInputFormatter textFieldEntrarTelMask;
  String? Function(BuildContext, String?)?
      textFieldEntrarTelTextControllerValidator;
  // State field(s) for TextFieldEntrarEmail widget.
  FocusNode? textFieldEntrarEmailFocusNode;
  TextEditingController? textFieldEntrarEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEntrarEmailTextControllerValidator;
  // State field(s) for TextFieldEntrarSenha widget.
  FocusNode? textFieldEntrarSenhaFocusNode;
  TextEditingController? textFieldEntrarSenhaTextController;
  late bool textFieldEntrarSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldEntrarSenhaTextControllerValidator;
  // Stores action output result for [Action Block - acEntrar] action in Button widget.
  bool? acVerificarCamposEntrar2;
  bool isDataUploading_uploadDataClientesCad = false;
  FFUploadedFile uploadedLocalFile_uploadDataClientesCad =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataClientesCad = '';

  // State field(s) for TextFieldCadNomeEstabelecimento widget.
  FocusNode? textFieldCadNomeEstabelecimentoFocusNode;
  TextEditingController? textFieldCadNomeEstabelecimentoTextController;
  String? Function(BuildContext, String?)?
      textFieldCadNomeEstabelecimentoTextControllerValidator;
  // State field(s) for TextFieldCadNomeContato widget.
  FocusNode? textFieldCadNomeContatoFocusNode;
  TextEditingController? textFieldCadNomeContatoTextController;
  String? Function(BuildContext, String?)?
      textFieldCadNomeContatoTextControllerValidator;
  // State field(s) for TextFieldCadTelefone widget.
  FocusNode? textFieldCadTelefoneFocusNode;
  TextEditingController? textFieldCadTelefoneTextController;
  late MaskTextInputFormatter textFieldCadTelefoneMask;
  String? Function(BuildContext, String?)?
      textFieldCadTelefoneTextControllerValidator;
  // State field(s) for TextFieldCadEmail widget.
  FocusNode? textFieldCadEmailFocusNode;
  TextEditingController? textFieldCadEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldCadEmailTextControllerValidator;
  // State field(s) for TextFieldCadSenha widget.
  FocusNode? textFieldCadSenhaFocusNode;
  TextEditingController? textFieldCadSenhaTextController;
  late bool textFieldCadSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldCadSenhaTextControllerValidator;
  // State field(s) for TextFieldCadSenhaConf widget.
  FocusNode? textFieldCadSenhaConfFocusNode;
  TextEditingController? textFieldCadSenhaConfTextController;
  late bool textFieldCadSenhaConfVisibility;
  String? Function(BuildContext, String?)?
      textFieldCadSenhaConfTextControllerValidator;
  // State field(s) for TextFieldRecTelefone widget.
  FocusNode? textFieldRecTelefoneFocusNode;
  TextEditingController? textFieldRecTelefoneTextController;
  late MaskTextInputFormatter textFieldRecTelefoneMask;
  String? Function(BuildContext, String?)?
      textFieldRecTelefoneTextControllerValidator;
  // State field(s) for TextFieldRecEmail widget.
  FocusNode? textFieldRecEmailFocusNode;
  TextEditingController? textFieldRecEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldRecEmailTextControllerValidator;
  // State field(s) for TextFieldRecCodVerif widget.
  FocusNode? textFieldRecCodVerifFocusNode;
  TextEditingController? textFieldRecCodVerifTextController;
  String? Function(BuildContext, String?)?
      textFieldRecCodVerifTextControllerValidator;
  // State field(s) for TextFieldRecSenha widget.
  FocusNode? textFieldRecSenhaFocusNode;
  TextEditingController? textFieldRecSenhaTextController;
  late bool textFieldRecSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldRecSenhaTextControllerValidator;
  // State field(s) for TextFieldRecSenhaConf widget.
  FocusNode? textFieldRecSenhaConfFocusNode;
  TextEditingController? textFieldRecSenhaConfTextController;
  late bool textFieldRecSenhaConfVisibility;
  String? Function(BuildContext, String?)?
      textFieldRecSenhaConfTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TblClientesRow>? queryConsTelCliRec;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TblClientesRow>? queryConsEmailCliRec;
  // Stores action output result for [Backend Call - API (EnivarEmail)] action in Button widget.
  ApiCallResponse? apiResulEmailRecuperacao;

  @override
  void initState(BuildContext context) {
    textFieldEntrarSenhaVisibility = false;
    textFieldCadSenhaVisibility = false;
    textFieldCadSenhaConfVisibility = false;
    textFieldRecSenhaVisibility = false;
    textFieldRecSenhaConfVisibility = false;
  }

  @override
  void dispose() {
    textFieldEntrarTelFocusNode?.dispose();
    textFieldEntrarTelTextController?.dispose();

    textFieldEntrarEmailFocusNode?.dispose();
    textFieldEntrarEmailTextController?.dispose();

    textFieldEntrarSenhaFocusNode?.dispose();
    textFieldEntrarSenhaTextController?.dispose();

    textFieldCadNomeEstabelecimentoFocusNode?.dispose();
    textFieldCadNomeEstabelecimentoTextController?.dispose();

    textFieldCadNomeContatoFocusNode?.dispose();
    textFieldCadNomeContatoTextController?.dispose();

    textFieldCadTelefoneFocusNode?.dispose();
    textFieldCadTelefoneTextController?.dispose();

    textFieldCadEmailFocusNode?.dispose();
    textFieldCadEmailTextController?.dispose();

    textFieldCadSenhaFocusNode?.dispose();
    textFieldCadSenhaTextController?.dispose();

    textFieldCadSenhaConfFocusNode?.dispose();
    textFieldCadSenhaConfTextController?.dispose();

    textFieldRecTelefoneFocusNode?.dispose();
    textFieldRecTelefoneTextController?.dispose();

    textFieldRecEmailFocusNode?.dispose();
    textFieldRecEmailTextController?.dispose();

    textFieldRecCodVerifFocusNode?.dispose();
    textFieldRecCodVerifTextController?.dispose();

    textFieldRecSenhaFocusNode?.dispose();
    textFieldRecSenhaTextController?.dispose();

    textFieldRecSenhaConfFocusNode?.dispose();
    textFieldRecSenhaConfTextController?.dispose();
  }

  /// Action blocks.
  Future<bool> acEntrar(BuildContext context) async {
    List<TblClientesRow>? queryConsTelEntrarBlock;

    if (varAutenticarComTelefone == true) {
      if (textFieldEntrarTelTextController.text == '') {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text('Informe o telefone'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      if (functions.fcCountCaracteres(textFieldEntrarTelTextController.text) <
          15) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text('Número de telefone inválido'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      if (textFieldEntrarSenhaTextController.text == '') {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atençção!'),
              content: Text('Informe a senha'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      queryConsTelEntrarBlock = await TblClientesTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'whatsapp',
          textFieldEntrarTelTextController.text,
        ),
      );
      if (queryConsTelEntrarBlock.length == 0) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text('Número de telefone não cadastrado.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
    } else {
      if (textFieldEntrarEmailTextController.text == '') {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atençção!'),
              content: Text('Informe o E-mail'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      if (functions.fcVerificarEmailValido(
              textFieldEntrarEmailTextController.text) ==
          false) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text('E-mail inválido'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      if (textFieldEntrarSenhaTextController.text == '') {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atençção!'),
              content: Text('Informe a senha'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
    }

    return true;
  }

  Future<bool?> acCadastrar(BuildContext context) async {
    List<TblEstabelecimentoRow>? queryConsTelefoneBlock;
    List<TblEstabelecimentoRow>? queryConsEmailBlock;
    TblEstabelecimentoRow? supaCadEstabelecimentoBlock;
    ApiCallResponse? apiResulEmailCadastro;

    if (varCadastrar == true) {
      if (textFieldCadNomeEstabelecimentoTextController.text == '') {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text('Informe o nome do seu Estabelecimento'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      if (textFieldCadNomeContatoTextController.text == '') {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text('Informe o nome do Contato'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      if (textFieldCadTelefoneTextController.text == '') {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text('Informe número de telefone WhatsApp para contato'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      if (functions.fcCountCaracteres(textFieldCadTelefoneTextController.text) <
          15) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text('Número de telefone WhatsApp inválido'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      queryConsTelefoneBlock = await TblEstabelecimentoTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'telefone',
          textFieldCadTelefoneTextController.text,
        ),
      );
      if (queryConsTelefoneBlock.length > 0) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text(
                  'O número de telefone WhatsApp ${textFieldCadTelefoneTextController.text} já está cadastrado, volte na tela anterior para fazer login'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      if (textFieldCadEmailTextController.text == '') {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text('Informe o E-mail'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      if (functions
              .fcVerificarEmailValido(textFieldCadEmailTextController.text) ==
          false) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text('E-mail inválido'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      queryConsEmailBlock = await TblEstabelecimentoTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'email',
          functions
              .fcConverterStringMinusculo(textFieldCadEmailTextController.text),
        ),
      );
      if (queryConsEmailBlock.length > 0) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text(
                  'O E-mail ${textFieldCadEmailTextController.text} já está cadastrado, volte na tela anterior para fazer login'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      if (textFieldCadSenhaTextController.text == '') {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text('Informe a senha'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      if (functions.fcCountCaracteres(textFieldCadSenhaTextController.text) <
          6) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text('A senha deve ter pelo menos 6 dígitos'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      if (textFieldCadSenhaConfTextController.text == '') {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text('Informe a senha de confirmação'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      if (textFieldCadSenhaTextController.text !=
          textFieldCadSenhaConfTextController.text) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Atenção!'),
              content: Text(
                  'A senha e a senha de confirmação estão diferentes, verifique'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return false;
      }
      showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        context: context,
        builder: (context) {
          return Padding(
            padding: MediaQuery.viewInsetsOf(context),
            child: CaAguardeWidget(
              paramMostrarAnimacao: true,
              paramFecharAoClicar: false,
            ),
          );
        },
      );

      varCodValidacaoWhatsEmail =
          random_data.randomInteger(111111, 999999).toString();
      supaCadEstabelecimentoBlock = await TblEstabelecimentoTable().insert({
        'nome': textFieldCadNomeEstabelecimentoTextController.text,
        'email': functions
            .fcConverterStringMinusculo(textFieldCadEmailTextController.text),
        'situacao': true,
        'data_senha': supaSerialize<DateTime>(
            FFAppState().varTblVerificarSenha.dataSenha),
        'senha': FFAppState().varTblVerificarSenha.senha,
        'id_temp': FFAppState().varTblVerificarSenha.idTemp,
        'telefone': textFieldCadTelefoneTextController.text,
        'email_verificado': false,
        'telefone_verificado': false,
        'nome_contato': textFieldCadNomeContatoTextController.text,
        'cf_perc_entrada_agend': 0.0,
        'user_id': currentUserUid,
        'id_afiliado_indicador': 0,
        'user_id_afiliado_indicador': '0',
      });
      FFAppState().varTblVerificarSenha = TblVerificarSenhaStruct();
      FFAppState().VarIDEstabelecimentoLogado = supaCadEstabelecimentoBlock.id;
      FFAppState().update(() {});
      await action_blocks.acAtualizarEstabelecimentoLogado(context);
      await action_blocks.acCadastrarHrFuncionamento(context);
      apiResulEmailCadastro = await BrevoGroup.enivarEmailCall.call(
        emailSender: FFAppState().VarEmailContatoAgendaSuper,
        assunto: 'Bem vindo ao Aplicativo',
        textoConteudo:
            '<h2>Ol&aacute;, ${textFieldCadNomeEstabelecimentoTextController.text}</h2><p>&nbsp;</p><p>Obrigado por utilizar o aplicativo Agenda Super.&nbsp;</p><p>Agora voc&ecirc; pode fazer agendamentos com rapidez e comodidade</p><p>Depois acesse o aplicativo no menu&nbsp; <u><strong>Dados pessoais</strong></u> e ative seu e-mail</p><p>&nbsp;</p><blockquote><p><span style=\'font-family:arial,helvetica,sans-serif\'>Atencisamente Agenda Super.</span></p><p><span style=\'font-family:arial,helvetica,sans-serif\'>Site: www.agendasuper.com</span></p><p><span style=\'font-family:arial,helvetica,sans-serif\'>E-mail: contato@agendasuper.com</span></p></blockquote>',
        nomeSender: 'Agenda Super',
        nomeTo: 'to',
        emailTo: textFieldCadEmailTextController.text,
      );

      Navigator.pop(context);
      Navigator.pop(context);
    }

    return null;
  }
}
