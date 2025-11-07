import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
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

  final formKey = GlobalKey<FormState>();
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
  String? _textFieldEntrarEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe seu E-mail ';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for TextFieldEntrarSenha widget.
  FocusNode? textFieldEntrarSenhaFocusNode;
  TextEditingController? textFieldEntrarSenhaTextController;
  late bool textFieldEntrarSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldEntrarSenhaTextControllerValidator;
  String? _textFieldEntrarSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe sua senha';
    }

    if (val.length < 6) {
      return 'A senha deve ter pelo menos 6 dígitos';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textFieldEntrarEmailTextControllerValidator =
        _textFieldEntrarEmailTextControllerValidator;
    textFieldEntrarSenhaVisibility = false;
    textFieldEntrarSenhaTextControllerValidator =
        _textFieldEntrarSenhaTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldEntrarTelFocusNode?.dispose();
    textFieldEntrarTelTextController?.dispose();

    textFieldEntrarEmailFocusNode?.dispose();
    textFieldEntrarEmailTextController?.dispose();

    textFieldEntrarSenhaFocusNode?.dispose();
    textFieldEntrarSenhaTextController?.dispose();
  }

  /// Action blocks.
  Future acbFazerLogin(BuildContext context) async {
    bool? resultLoginMultSession;

    resultLoginMultSession = await actions.loginMultiSession(
      textFieldEntrarEmailTextController.text,
      textFieldEntrarSenhaTextController.text,
      () {
        if (FFAppState().varIDAPPAfiliado == 1) {
          return 2;
        } else if (FFAppState().varIDAPPAfiliado == 3) {
          return 3;
        } else {
          return 0;
        }
      }(),
    );
    if (resultLoginMultSession) {
      FFAppState().varCarregouPrimeiraPagina = true;
      FFAppState().varAPPNotificacoesAtivas = true;
      FFAppState().varAPPOneSignalInicializado = false;
      await Future.delayed(
        Duration(
          milliseconds: 50,
        ),
      );

      context.goNamed(
        PgDashboardWidget.routeName,
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 0),
          ),
        },
      );
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Atenção '),
            content: Text('Falha no login, verifique seu E-mail e senha '),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
      return;
    }
  }
}
