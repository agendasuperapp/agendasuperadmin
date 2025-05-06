import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'cp_afiliados_cad_widget.dart' show CpAfiliadosCadWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CpAfiliadosCadModel extends FlutterFlowModel<CpAfiliadosCadWidget> {
  ///  Local state fields for this component.

  bool varDataNascInvalida = false;

  bool varCEPInvalido = false;

  String? varUrlFotoTemp;

  String? varUrlFotoExcluir;

  int testeTamanho = 232;

  bool varQrCodeGerado = false;

  FFUploadedFile? varQrCode;

  int varContador = 0;

  String? varFotoBannerModeloSelecionada;

  int varIDFotoBannerModeloSelecionada = 0;

  bool varFotoBannerModeloEscuro = false;

  String varTipoBanner = 'MODELO';

  List<String> varListaFormasPagamento = [];
  void addToVarListaFormasPagamento(String item) =>
      varListaFormasPagamento.add(item);
  void removeFromVarListaFormasPagamento(String item) =>
      varListaFormasPagamento.remove(item);
  void removeAtIndexFromVarListaFormasPagamento(int index) =>
      varListaFormasPagamento.removeAt(index);
  void insertAtIndexInVarListaFormasPagamento(int index, String item) =>
      varListaFormasPagamento.insert(index, item);
  void updateVarListaFormasPagamentoAtIndex(
          int index, Function(String) updateFn) =>
      varListaFormasPagamento[index] = updateFn(varListaFormasPagamento[index]);

  List<String> varListaComodidades = [];
  void addToVarListaComodidades(String item) => varListaComodidades.add(item);
  void removeFromVarListaComodidades(String item) =>
      varListaComodidades.remove(item);
  void removeAtIndexFromVarListaComodidades(int index) =>
      varListaComodidades.removeAt(index);
  void insertAtIndexInVarListaComodidades(int index, String item) =>
      varListaComodidades.insert(index, item);
  void updateVarListaComodidadesAtIndex(int index, Function(String) updateFn) =>
      varListaComodidades[index] = updateFn(varListaComodidades[index]);

  String varTipoWhatsApp = 'pessoal';

  String varTipoConexao = 'qrcode';

  int varContadorTentativasWhatsApp = 0;

  List<String> varTesteConexoesWhats = [];
  void addToVarTesteConexoesWhats(String item) =>
      varTesteConexoesWhats.add(item);
  void removeFromVarTesteConexoesWhats(String item) =>
      varTesteConexoesWhats.remove(item);
  void removeAtIndexFromVarTesteConexoesWhats(int index) =>
      varTesteConexoesWhats.removeAt(index);
  void insertAtIndexInVarTesteConexoesWhats(int index, String item) =>
      varTesteConexoesWhats.insert(index, item);
  void updateVarTesteConexoesWhatsAtIndex(
          int index, Function(String) updateFn) =>
      varTesteConexoesWhats[index] = updateFn(varTesteConexoesWhats[index]);

  String? varUltimoCodigoWhatsGerado;

  List<String> varTesteListaPagamentos = [];
  void addToVarTesteListaPagamentos(String item) =>
      varTesteListaPagamentos.add(item);
  void removeFromVarTesteListaPagamentos(String item) =>
      varTesteListaPagamentos.remove(item);
  void removeAtIndexFromVarTesteListaPagamentos(int index) =>
      varTesteListaPagamentos.removeAt(index);
  void insertAtIndexInVarTesteListaPagamentos(int index, String item) =>
      varTesteListaPagamentos.insert(index, item);
  void updateVarTesteListaPagamentosAtIndex(
          int index, Function(String) updateFn) =>
      varTesteListaPagamentos[index] = updateFn(varTesteListaPagamentos[index]);

  bool varEditarUsername = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ColumnAfiliado widget.
  ScrollController? columnAfiliado;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextFieldNomeAfiliado widget.
  FocusNode? textFieldNomeAfiliadoFocusNode;
  TextEditingController? textFieldNomeAfiliadoTextController;
  String? Function(BuildContext, String?)?
      textFieldNomeAfiliadoTextControllerValidator;
  String? _textFieldNomeAfiliadoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe seu nome';
    }

    if (val.length < 10) {
      return 'Digite o nome completo';
    }

    return null;
  }

  // State field(s) for TextFieldIDAfiliado widget.
  FocusNode? textFieldIDAfiliadoFocusNode;
  TextEditingController? textFieldIDAfiliadoTextController;
  String? Function(BuildContext, String?)?
      textFieldIDAfiliadoTextControllerValidator;
  // State field(s) for TextFieldUsername widget.
  FocusNode? textFieldUsernameFocusNode;
  TextEditingController? textFieldUsernameTextController;
  String? Function(BuildContext, String?)?
      textFieldUsernameTextControllerValidator;
  String? _textFieldUsernameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o Username';
    }

    if (val.length < 5) {
      return 'O username deve ter pelo menos 5 caracteres';
    }
    if (val.length > 20) {
      return 'O username deve ter no máximo 20 caracteres';
    }

    return null;
  }

  // State field(s) for TextFieldTel widget.
  FocusNode? textFieldTelFocusNode;
  TextEditingController? textFieldTelTextController;
  final textFieldTelMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? textFieldTelTextControllerValidator;
  String? _textFieldTelTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o Telefone';
    }

    return null;
  }

  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  // State field(s) for TextFieldDtNascimento widget.
  FocusNode? textFieldDtNascimentoFocusNode;
  TextEditingController? textFieldDtNascimentoTextController;
  final textFieldDtNascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      textFieldDtNascimentoTextControllerValidator;
  String? _textFieldDtNascimentoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe a data de nascimento';
    }

    return null;
  }

  // State field(s) for DropDownTipoDoc widget.
  String? dropDownTipoDocValue;
  FormFieldController<String>? dropDownTipoDocValueController;
  // State field(s) for TextFieldCPF widget.
  FocusNode? textFieldCPFFocusNode;
  TextEditingController? textFieldCPFTextController;
  final textFieldCPFMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? textFieldCPFTextControllerValidator;
  // State field(s) for TextFieldCNPJ widget.
  FocusNode? textFieldCNPJFocusNode;
  TextEditingController? textFieldCNPJTextController;
  final textFieldCNPJMask = MaskTextInputFormatter(mask: '##.###.###.####-##');
  String? Function(BuildContext, String?)? textFieldCNPJTextControllerValidator;
  // State field(s) for DropDownGenero widget.
  String? dropDownGeneroValue;
  FormFieldController<String>? dropDownGeneroValueController;
  // State field(s) for TextFieldCEP widget.
  FocusNode? textFieldCEPFocusNode;
  TextEditingController? textFieldCEPTextController;
  final textFieldCEPMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? textFieldCEPTextControllerValidator;
  String? _textFieldCEPTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe seu CEP';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (ViaCep)] action in TextFieldCEP widget.
  ApiCallResponse? apiResulViaCep;
  // State field(s) for TextFieldRua widget.
  FocusNode? textFieldRuaFocusNode;
  TextEditingController? textFieldRuaTextController;
  String? Function(BuildContext, String?)? textFieldRuaTextControllerValidator;
  String? _textFieldRuaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o nome da sua Rua';
    }

    return null;
  }

  // State field(s) for TextFieldNumero widget.
  FocusNode? textFieldNumeroFocusNode;
  TextEditingController? textFieldNumeroTextController;
  String? Function(BuildContext, String?)?
      textFieldNumeroTextControllerValidator;
  String? _textFieldNumeroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o número da residência';
    }

    return null;
  }

  // State field(s) for TextFieldComplemento widget.
  FocusNode? textFieldComplementoFocusNode;
  TextEditingController? textFieldComplementoTextController;
  String? Function(BuildContext, String?)?
      textFieldComplementoTextControllerValidator;
  // State field(s) for TextFieldCidade widget.
  FocusNode? textFieldCidadeFocusNode;
  TextEditingController? textFieldCidadeTextController;
  String? Function(BuildContext, String?)?
      textFieldCidadeTextControllerValidator;
  String? _textFieldCidadeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o nome da Cidade';
    }

    return null;
  }

  // State field(s) for TextFieldBairro widget.
  FocusNode? textFieldBairroFocusNode;
  TextEditingController? textFieldBairroTextController;
  String? Function(BuildContext, String?)?
      textFieldBairroTextControllerValidator;
  String? _textFieldBairroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o nome do Bairro';
    }

    return null;
  }

  // State field(s) for DropDownEstado widget.
  String? dropDownEstadoValue;
  FormFieldController<String>? dropDownEstadoValueController;
  // State field(s) for TextFieldEstado widget.
  FocusNode? textFieldEstadoFocusNode;
  TextEditingController? textFieldEstadoTextController;
  String? Function(BuildContext, String?)?
      textFieldEstadoTextControllerValidator;
  // State field(s) for TextFieldInstagram widget.
  FocusNode? textFieldInstagramFocusNode;
  TextEditingController? textFieldInstagramTextController;
  String? Function(BuildContext, String?)?
      textFieldInstagramTextControllerValidator;
  // State field(s) for TextFieldFacebook widget.
  FocusNode? textFieldFacebookFocusNode;
  TextEditingController? textFieldFacebookTextController;
  String? Function(BuildContext, String?)?
      textFieldFacebookTextControllerValidator;
  // State field(s) for TextFielTikTok widget.
  FocusNode? textFielTikTokFocusNode;
  TextEditingController? textFielTikTokTextController;
  String? Function(BuildContext, String?)?
      textFielTikTokTextControllerValidator;
  // Stores action output result for [Action Block - acConsultarUsername] action in Button widget.
  String? acResultConsUsername;
  // Stores action output result for [Action Block - acConsultarCupom] action in Button widget.
  String? acResultConsCupom;
  // Stores action output result for [Action Block - acConsultarTelefone] action in Button widget.
  String? resultConsTelefone;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TblAfiliadosRow>? queryConsAfiliado;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TblAfiliadosCuponsLibRow>? queryConsCupom;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TblAfiliadosRow? resultInsertAfiliado;

  @override
  void initState(BuildContext context) {
    columnAfiliado = ScrollController();
    textFieldNomeAfiliadoTextControllerValidator =
        _textFieldNomeAfiliadoTextControllerValidator;
    textFieldUsernameTextControllerValidator =
        _textFieldUsernameTextControllerValidator;
    textFieldTelTextControllerValidator = _textFieldTelTextControllerValidator;
    textFieldDtNascimentoTextControllerValidator =
        _textFieldDtNascimentoTextControllerValidator;
    textFieldCEPTextControllerValidator = _textFieldCEPTextControllerValidator;
    textFieldRuaTextControllerValidator = _textFieldRuaTextControllerValidator;
    textFieldNumeroTextControllerValidator =
        _textFieldNumeroTextControllerValidator;
    textFieldCidadeTextControllerValidator =
        _textFieldCidadeTextControllerValidator;
    textFieldBairroTextControllerValidator =
        _textFieldBairroTextControllerValidator;
  }

  @override
  void dispose() {
    columnAfiliado?.dispose();
    textFieldNomeAfiliadoFocusNode?.dispose();
    textFieldNomeAfiliadoTextController?.dispose();

    textFieldIDAfiliadoFocusNode?.dispose();
    textFieldIDAfiliadoTextController?.dispose();

    textFieldUsernameFocusNode?.dispose();
    textFieldUsernameTextController?.dispose();

    textFieldTelFocusNode?.dispose();
    textFieldTelTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldDtNascimentoFocusNode?.dispose();
    textFieldDtNascimentoTextController?.dispose();

    textFieldCPFFocusNode?.dispose();
    textFieldCPFTextController?.dispose();

    textFieldCNPJFocusNode?.dispose();
    textFieldCNPJTextController?.dispose();

    textFieldCEPFocusNode?.dispose();
    textFieldCEPTextController?.dispose();

    textFieldRuaFocusNode?.dispose();
    textFieldRuaTextController?.dispose();

    textFieldNumeroFocusNode?.dispose();
    textFieldNumeroTextController?.dispose();

    textFieldComplementoFocusNode?.dispose();
    textFieldComplementoTextController?.dispose();

    textFieldCidadeFocusNode?.dispose();
    textFieldCidadeTextController?.dispose();

    textFieldBairroFocusNode?.dispose();
    textFieldBairroTextController?.dispose();

    textFieldEstadoFocusNode?.dispose();
    textFieldEstadoTextController?.dispose();

    textFieldInstagramFocusNode?.dispose();
    textFieldInstagramTextController?.dispose();

    textFieldFacebookFocusNode?.dispose();
    textFieldFacebookTextController?.dispose();

    textFielTikTokFocusNode?.dispose();
    textFielTikTokTextController?.dispose();
  }

  /// Action blocks.
  Future acCarregarDados(BuildContext context) async {}

  Future acSalvarUsernameEdit(BuildContext context) async {
    String? acResultConsUsernameEdit;
    String? acResultConsCupom2;

    if (textFieldUsernameTextController.text == '') {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text(
                  'Informe o username (Será usado compartilhar seu link de afiliado)'),
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
      return;
    }
    if (functions.fcCountCaracteres(textFieldUsernameTextController.text) < 5) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('O username deve ter pelo menos 5 caracteres'),
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
      return;
    }
    if (functions.fcCountCaracteres(textFieldUsernameTextController.text) >
        12) {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('O username deve ter no máximo 12 caracteres'),
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
      return;
    }
    acResultConsUsernameEdit = await action_blocks.acConsultarUsername(
      context,
      paramUsername: textFieldUsernameTextController.text,
      paramTabela: 'tbl_afiliados',
      paramID: FFAppState().varIDAfiliadoLogado,
    );
    if (acResultConsUsernameEdit != 'False') {
      return;
    }
    acResultConsCupom2 = await action_blocks.acConsultarCupom(
      context,
      paramCupom: textFieldUsernameTextController.text,
      paramTipoConsulta: 'NAOCAD',
      paramid: 0,
    );
    if (acResultConsCupom2 != 'False') {
      return;
    }
    var confirmDialogResponse = await showDialog<bool>(
          context: context,
          builder: (alertDialogContext) {
            return WebViewAware(
              child: AlertDialog(
                title: Text('Atenção!'),
                content: Text(
                    'Deseja  salvar o novo username ${textFieldUsernameTextController.text}?'),
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
    if (!confirmDialogResponse) {
      return;
    }
    await TblAfiliadosTable().update(
      data: {
        'username': functions
            .fcConverterStringMinusculo(textFieldUsernameTextController.text),
      },
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        FFAppState().varIDAfiliadoLogado,
      ),
    );
    await action_blocks.acDeletarCupons(context);
    await action_blocks.acAtualizarAfiliadoCad(context);
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Novo  Username salvo com sucesso, você será direcionado para página de cupons para liberar novos cupons.'),
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

    context.pushNamed(PgAfiliadoCuponsWidget.routeName);
  }
}
