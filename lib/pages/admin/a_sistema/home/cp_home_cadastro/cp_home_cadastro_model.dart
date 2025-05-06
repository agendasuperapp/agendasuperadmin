import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'cp_home_cadastro_widget.dart' show CpHomeCadastroWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CpHomeCadastroModel extends FlutterFlowModel<CpHomeCadastroWidget> {
  ///  Local state fields for this component.

  bool varEmailInvalido = false;

  bool varTelefoneInvalido = false;

  bool varTermoAceito = true;

  String? varNOmeAleatorioTeste;

  bool varCamposVerificados = true;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldCadNomeEstabelecimento widget.
  FocusNode? textFieldCadNomeEstabelecimentoFocusNode;
  TextEditingController? textFieldCadNomeEstabelecimentoTextController;
  String? Function(BuildContext, String?)?
      textFieldCadNomeEstabelecimentoTextControllerValidator;
  String? _textFieldCadNomeEstabelecimentoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o Nome do Estabelecimento';
    }

    if (val.length < 6) {
      return 'Informe o nome completo do Estabelecimento';
    }

    return null;
  }

  // State field(s) for TextFieldCadNomeContato widget.
  FocusNode? textFieldCadNomeContatoFocusNode;
  TextEditingController? textFieldCadNomeContatoTextController;
  String? Function(BuildContext, String?)?
      textFieldCadNomeContatoTextControllerValidator;
  String? _textFieldCadNomeContatoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o Nome do Contato (seu nome)';
    }

    if (val.length < 6) {
      return 'Informe seu nome completo';
    }

    return null;
  }

  // State field(s) for TextFieldCadTelefone widget.
  FocusNode? textFieldCadTelefoneFocusNode;
  TextEditingController? textFieldCadTelefoneTextController;
  final textFieldCadTelefoneMask =
      MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)?
      textFieldCadTelefoneTextControllerValidator;
  String? _textFieldCadTelefoneTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o Telefone WhatsApp';
    }

    if (val.length < 15) {
      return 'Telefone imcompleto';
    }

    return null;
  }

  // State field(s) for TextFieldCadEmail widget.
  FocusNode? textFieldCadEmailFocusNode;
  TextEditingController? textFieldCadEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldCadEmailTextControllerValidator;
  String? _textFieldCadEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o E-mail';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'E-mail inválido';
    }
    return null;
  }

  // State field(s) for TextFieldCadSenha widget.
  FocusNode? textFieldCadSenhaFocusNode;
  TextEditingController? textFieldCadSenhaTextController;
  late bool textFieldCadSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldCadSenhaTextControllerValidator;
  String? _textFieldCadSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe a Senha';
    }

    if (val.length < 6) {
      return 'A senha deve ter no mínimo 6 dígitos';
    }
    if (val.length > 10) {
      return 'A senha deve ter no máximo 10 dígitos';
    }

    return null;
  }

  // State field(s) for TextFieldCadSenhaConf widget.
  FocusNode? textFieldCadSenhaConfFocusNode;
  TextEditingController? textFieldCadSenhaConfTextController;
  late bool textFieldCadSenhaConfVisibility;
  String? Function(BuildContext, String?)?
      textFieldCadSenhaConfTextControllerValidator;
  String? _textFieldCadSenhaConfTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe a Senha de Confirmação';
    }

    if (val.length < 6) {
      return 'A senha deve ter no mínimo 6 dígitos';
    }
    if (val.length > 10) {
      return 'A senha de confirmação deve ter no máximo 10 dígitos';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in TextFieldCadSenhaConf widget.
  bool? varValidateForm2;
  // Stores action output result for [Validate Form] action in ButtonCadastrar widget.
  bool? varValidateForm;
  // Stores action output result for [Action Block - acVerificarCampos] action in ButtonCadastrar widget.
  String? resultacVerificarCamposCadastro;

  @override
  void initState(BuildContext context) {
    textFieldCadNomeEstabelecimentoTextControllerValidator =
        _textFieldCadNomeEstabelecimentoTextControllerValidator;
    textFieldCadNomeContatoTextControllerValidator =
        _textFieldCadNomeContatoTextControllerValidator;
    textFieldCadTelefoneTextControllerValidator =
        _textFieldCadTelefoneTextControllerValidator;
    textFieldCadEmailTextControllerValidator =
        _textFieldCadEmailTextControllerValidator;
    textFieldCadSenhaVisibility = false;
    textFieldCadSenhaTextControllerValidator =
        _textFieldCadSenhaTextControllerValidator;
    textFieldCadSenhaConfVisibility = false;
    textFieldCadSenhaConfTextControllerValidator =
        _textFieldCadSenhaConfTextControllerValidator;
  }

  @override
  void dispose() {
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
  }

  /// Action blocks.
  Future<String> acVerificarCampos(
    BuildContext context, {
    required String? paramTipoCadastro,
    required int? paramIDPlanoPeriodo,
    required int? paramIDPlanoPreco,
    required bool? paramTermoAceito,
  }) async {
    String? resultConsultarNomeEstab;
    String? acResultConsTelx;
    String? resultConsEmailx;

    if (widget!.paramTipoCadastro == 'ESTABELECIMENTO') {
      if (textFieldCadNomeEstabelecimentoTextController.text == '') {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return WebViewAware(
              child: AlertDialog(
                title: Text('Atenção!'),
                content: Text('Informe o nome do seu Estabelecimento'),
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
        return 'nome_estabelecimento';
      }
      if (functions.fcCountPalavras(
              textFieldCadNomeEstabelecimentoTextController.text) <
          2) {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return WebViewAware(
              child: AlertDialog(
                title: Text('Atenção!'),
                content: Text('Informe o nome completo do estabelecimento'),
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
        return 'nome_estabelecimento';
      }
      resultConsultarNomeEstab = await action_blocks.acConsultarNomeTabs(
        context,
        paramNome: textFieldCadNomeEstabelecimentoTextController.text,
        paramTabela: 'tbl_estabelecimento',
        paramID: 0,
      );
      if (resultConsultarNomeEstab != 'False') {
        return 'nome_estabelecimento';
      }
    }
    if (textFieldCadNomeContatoTextController.text == '') {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Informe o nome do Contato'),
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
      return 'nome_contato';
    }
    if (functions.fcCountPalavras(textFieldCadNomeContatoTextController.text) <
        2) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Informe o nome completo do contato'),
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
      return 'nome_contato';
    }
    if (textFieldCadTelefoneTextController.text == '') {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Informe número de telefone WhatsApp para contato'),
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
      return 'telefone';
    }
    if (functions.fcCountCaracteres(textFieldCadTelefoneTextController.text) <
        15) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Número de telefone WhatsApp inválido'),
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
      return 'telefone';
    }
    acResultConsTelx = await action_blocks.acConsultarTelefone(
      context,
      paramTelefone: textFieldCadTelefoneTextController.text,
      paramTabela: 'tbl_estabelecimento',
      paramID: 0,
    );
    if (acResultConsTelx != 'False') {
      return 'telefone';
    }
    if (textFieldCadEmailTextController.text == '') {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Informe o E-mail'),
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
      return 'email';
    }
    if (functions
            .fcVerificarEmailValido(textFieldCadEmailTextController.text) ==
        false) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('E-mail inválido'),
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
      return 'email';
    }
    resultConsEmailx = await action_blocks.acConsultarEmail(
      context,
      paramEmail: functions
          .fcConverterStringMinusculo(textFieldCadEmailTextController.text),
    );
    if (resultConsEmailx != 'False') {
      return 'email';
    }
    if (textFieldCadSenhaTextController.text == '') {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Informe a senha'),
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
      return 'senha';
    }
    if (functions.fcCountCaracteres(textFieldCadSenhaTextController.text) < 6) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('A senha deve ter pelo menos 6 dígitos'),
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
      return 'senha';
    }
    if (textFieldCadSenhaConfTextController.text == '') {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Informe a senha de confirmação'),
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
      return 'confirmar_senha';
    }
    if (textFieldCadSenhaTextController.text !=
        textFieldCadSenhaConfTextController.text) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text(
                  'A senha e a senha de confirmação estão diferentes, verifique'),
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
      return 'confirmar_senha';
    }
    if (paramIDPlanoPeriodo! <= 0) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Selecione o período do plano'),
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
      return 'false';
    }
    if (paramIDPlanoPreco! <= 0) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Selecione um plano'),
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
      return 'false';
    }
    if (paramTermoAceito != true) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção'),
              content: Text(
                  'Para continuar é priciso aceitar os termos de uso do aplicativo, leia antes de aceitar.'),
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
      return 'false';
    }
    return 'true';
  }
}
