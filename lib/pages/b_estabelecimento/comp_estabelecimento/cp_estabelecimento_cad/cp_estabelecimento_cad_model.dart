import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'cp_estabelecimento_cad_widget.dart' show CpEstabelecimentoCadWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CpEstabelecimentoCadModel
    extends FlutterFlowModel<CpEstabelecimentoCadWidget> {
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

  String varTipoBanner = 'XXX';

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

  /// Para colocar visibilidade condicional e reduzier consumo de banco de dados
  String varAbaSelecionada = 'EMPRESA';

  /// Para reduzer consumo de banco de dados
  bool varCarregamentoConcluido = true;

  bool varCPFCNPJLocalizado = false;

  String? varUFTemp;

  ///  State fields for stateful widgets in this component.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in cp_estabelecimento_cad widget.
  List<ViewTblEstabelecimentosRow>? queryConsEstabelecimentoLogado;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  bool isDataUploading_uploadDataEstabelecimentoCapa = false;
  FFUploadedFile uploadedLocalFile_uploadDataEstabelecimentoCapa =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataEstabelecimentoCapa = '';

  // State field(s) for TextFieldTamanhoTela widget.
  FocusNode? textFieldTamanhoTelaFocusNode;
  TextEditingController? textFieldTamanhoTelaTextController;
  String? Function(BuildContext, String?)?
      textFieldTamanhoTelaTextControllerValidator;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  // State field(s) for RowModelosBanners widget.
  ScrollController? rowModelosBannersScrollController;
  // State field(s) for TextFieldTextoBanner widget.
  FocusNode? textFieldTextoBannerFocusNode;
  TextEditingController? textFieldTextoBannerTextController;
  String? Function(BuildContext, String?)?
      textFieldTextoBannerTextControllerValidator;
  // State field(s) for RowFotosBanners widget.
  ScrollController? rowFotosBannersScrollController;
  // Stores action output result for [Backend Call - Query Rows] action in ContainerNovoBanner widget.
  List<TblEstabelecimentoBannersRow>? queryConBannersAdd;
  bool isDataUploading_uploadDataEstabelecimentoBanners = false;
  FFUploadedFile uploadedLocalFile_uploadDataEstabelecimentoBanners =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataEstabelecimentoBanners = '';

  Completer<List<TblEstabelecimentoBannersRow>>? requestCompleter3;
  Completer<List<TblEstabelecimentoBannersRow>>? requestCompleter1;
  // Stores action output result for [Backend Call - Query Rows] action in ContainerSituacao widget.
  List<TblEstabelecimentoBannersRow>? queryConBannersInat;
  // Stores action output result for [Backend Call - Query Rows] action in Icon widget.
  List<TblEstabelecimentoBannersRow>? queryConBannersDel;
  bool isDataUploading_uploadDataEstabelecimentoBannersEdit = false;
  FFUploadedFile uploadedLocalFile_uploadDataEstabelecimentoBannersEdit =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataEstabelecimentoBannersEdit = '';

  bool isDataUploading_uploadDataEstabelecimentoPerfil1 = false;
  FFUploadedFile uploadedLocalFile_uploadDataEstabelecimentoPerfil1 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataEstabelecimentoPerfil1 = '';

  // State field(s) for TextFieldNomeEmpresa widget.
  FocusNode? textFieldNomeEmpresaFocusNode;
  TextEditingController? textFieldNomeEmpresaTextController;
  String? Function(BuildContext, String?)?
      textFieldNomeEmpresaTextControllerValidator;
  // State field(s) for TextFieldIDEmpresa widget.
  FocusNode? textFieldIDEmpresaFocusNode;
  TextEditingController? textFieldIDEmpresaTextController;
  String? Function(BuildContext, String?)?
      textFieldIDEmpresaTextControllerValidator;
  // State field(s) for TextFieldUsername widget.
  FocusNode? textFieldUsernameFocusNode;
  TextEditingController? textFieldUsernameTextController;
  String? Function(BuildContext, String?)?
      textFieldUsernameTextControllerValidator;
  // State field(s) for TextFieldNomeContato widget.
  FocusNode? textFieldNomeContatoFocusNode;
  TextEditingController? textFieldNomeContatoTextController;
  String? Function(BuildContext, String?)?
      textFieldNomeContatoTextControllerValidator;
  // State field(s) for DropDownSegmento widget.
  int? dropDownSegmentoValue;
  FormFieldController<int>? dropDownSegmentoValueController;
  // State field(s) for TextFieldTel widget.
  FocusNode? textFieldTelFocusNode;
  TextEditingController? textFieldTelTextController;
  late MaskTextInputFormatter textFieldTelMask;
  String? Function(BuildContext, String?)? textFieldTelTextControllerValidator;
  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  // State field(s) for DropDownTipoDoc widget.
  String? dropDownTipoDocValue;
  FormFieldController<String>? dropDownTipoDocValueController;
  // State field(s) for TextFieldCPF widget.
  FocusNode? textFieldCPFFocusNode;
  TextEditingController? textFieldCPFTextController;
  late MaskTextInputFormatter textFieldCPFMask;
  String? Function(BuildContext, String?)? textFieldCPFTextControllerValidator;
  String? _textFieldCPFTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'doc_cpf_cnpj is required';
    }

    if (val.length < 14) {
      return 'CPF incompleto';
    }

    if (!RegExp(
            '^(?!.*?(\\d)(?:[\\.\\-]?\\1){10})(?:\\d{11}|\\d{3}\\.\\d{3}\\.\\d{3}-\\d{2})\$')
        .hasMatch(val)) {
      return 'CPF inválido, verifique';
    }
    return null;
  }

  // Stores action output result for [Action Block - acConsultarCPF] action in TextFieldCPF widget.
  String? resultConsCpfSportBetEst;
  // State field(s) for TextFieldDtNascimento widget.
  FocusNode? textFieldDtNascimentoFocusNode;
  TextEditingController? textFieldDtNascimentoTextController;
  late MaskTextInputFormatter textFieldDtNascimentoMask;
  String? Function(BuildContext, String?)?
      textFieldDtNascimentoTextControllerValidator;
  String? _textFieldDtNascimentoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe a data de nascimento';
    }

    if (val.length < 10) {
      return 'Data imcompleta';
    }

    if (!RegExp(
            '^(?:(?:(0[1-9]|[12]\\d|3[01])/(0[13578]|1[02])/\\d{4})|(?:(0[1-9]|[12]\\d|30)/(0[469]|11)/\\d{4})|(?:(0[1-9]|1\\d|2[0-8])/02/\\d{4})|(29/02/(?:(?:\\d{2}(?:0[48]|[2468][048]|[13579][26]))|(?:(?:0[48]|[2468][048]|[13579][26])00))))\$')
        .hasMatch(val)) {
      return 'Data inválida, verifique';
    }
    return null;
  }

  // Stores action output result for [Action Block - acConsultarCPF] action in TextFieldDtNascimento widget.
  String? resultConsCpfSportBetEst2;
  // State field(s) for TextFieldCNPJ widget.
  FocusNode? textFieldCNPJFocusNode;
  TextEditingController? textFieldCNPJTextController;
  late MaskTextInputFormatter textFieldCNPJMask;
  String? Function(BuildContext, String?)? textFieldCNPJTextControllerValidator;
  // Stores action output result for [Backend Call - API (Consultar CNPJ)] action in TextFieldCNPJ widget.
  ApiCallResponse? resultConsCNPJBrasilApi;
  // Stores action output result for [Backend Call - API (ViaCep)] action in TextFieldCNPJ widget.
  ApiCallResponse? apiResultCepCNPJ;
  // State field(s) for TextFieldInscEst widget.
  FocusNode? textFieldInscEstFocusNode;
  TextEditingController? textFieldInscEstTextController;
  String? Function(BuildContext, String?)?
      textFieldInscEstTextControllerValidator;
  // State field(s) for TextFieldNomeFantasia widget.
  FocusNode? textFieldNomeFantasiaFocusNode;
  TextEditingController? textFieldNomeFantasiaTextController;
  String? Function(BuildContext, String?)?
      textFieldNomeFantasiaTextControllerValidator;
  // State field(s) for TextFieldNomePessoaFisicaRazSocial widget.
  FocusNode? textFieldNomePessoaFisicaRazSocialFocusNode;
  TextEditingController? textFieldNomePessoaFisicaRazSocialTextController;
  String? Function(BuildContext, String?)?
      textFieldNomePessoaFisicaRazSocialTextControllerValidator;
  // State field(s) for DropDownGenero widget.
  String? dropDownGeneroValue;
  FormFieldController<String>? dropDownGeneroValueController;
  // State field(s) for TextFieldCEP widget.
  FocusNode? textFieldCEPFocusNode;
  TextEditingController? textFieldCEPTextController;
  late MaskTextInputFormatter textFieldCEPMask;
  String? Function(BuildContext, String?)? textFieldCEPTextControllerValidator;
  // Stores action output result for [Backend Call - API (ViaCep)] action in TextFieldCEP widget.
  ApiCallResponse? apiResulViaCep;
  // State field(s) for TextFieldRua widget.
  FocusNode? textFieldRuaFocusNode;
  TextEditingController? textFieldRuaTextController;
  String? Function(BuildContext, String?)? textFieldRuaTextControllerValidator;
  // State field(s) for TextFieldNumero widget.
  FocusNode? textFieldNumeroFocusNode;
  TextEditingController? textFieldNumeroTextController;
  String? Function(BuildContext, String?)?
      textFieldNumeroTextControllerValidator;
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
  // State field(s) for TextFieldBairro widget.
  FocusNode? textFieldBairroFocusNode;
  TextEditingController? textFieldBairroTextController;
  String? Function(BuildContext, String?)?
      textFieldBairroTextControllerValidator;
  // State field(s) for DropDownEstado widget.
  String? dropDownEstadoValue;
  FormFieldController<String>? dropDownEstadoValueController;
  // State field(s) for TextFieldEstado widget.
  FocusNode? textFieldEstadoFocusNode;
  TextEditingController? textFieldEstadoTextController;
  String? Function(BuildContext, String?)?
      textFieldEstadoTextControllerValidator;
  // Stores action output result for [Action Block - acConsultarNomeTabs] action in Button widget.
  String? resultConsNomeEstab;
  // Stores action output result for [Action Block - acConsultarUsername] action in Button widget.
  String? resultConsUsernameEst;
  // Stores action output result for [Action Block - acConsultarTelefone] action in Button widget.
  String? resultConsTelEstab;
  // Stores action output result for [Action Block - acConsultarCPFCNPJCad] action in Button widget.
  String? resultConsCPFEstab;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TblEstabelecimentoBannersRow>? queryConBanners;
  // Stores action output result for [Action Block - acSairSistema] action in RowSairEmpresa widget.
  bool? acSairSistemaResultCadEmp;
  Completer<List<TblHorariosFuncionamentoRow>>? requestCompleter2;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for ColumnHorariosFunc widget.
  ScrollController? columnHorariosFuncScrollController;
  // State field(s) for ListViewHrFuncionamento widget.
  ScrollController? listViewHrFuncionamentoScrollController;
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
  // State field(s) for TextFieldTikTok widget.
  FocusNode? textFieldTikTokFocusNode;
  TextEditingController? textFieldTikTokTextController;
  String? Function(BuildContext, String?)?
      textFieldTikTokTextControllerValidator;
  // State field(s) for TextFieldDescricao widget.
  FocusNode? textFieldDescricaoFocusNode;
  TextEditingController? textFieldDescricaoTextController;
  String? Function(BuildContext, String?)?
      textFieldDescricaoTextControllerValidator;
  // State field(s) for ColumnWhatsApp widget.
  ScrollController? columnWhatsAppScrollController;
  // State field(s) for TextFieldTelConexWhatsApp widget.
  FocusNode? textFieldTelConexWhatsAppFocusNode;
  TextEditingController? textFieldTelConexWhatsAppTextController;
  late MaskTextInputFormatter textFieldTelConexWhatsAppMask;
  String? Function(BuildContext, String?)?
      textFieldTelConexWhatsAppTextControllerValidator;
  // Stores action output result for [Backend Call - API (Fetch Instances)] action in Button widget.
  ApiCallResponse? fetchInstancesResult;
  // Stores action output result for [Action Block - acWhatsAppDeletarConexao] action in Button widget.
  bool? acWhatsDelConexResult2;
  // Stores action output result for [Backend Call - API (Connection State)] action in Button widget.
  ApiCallResponse? apiResultStatusConexao1;
  // Stores action output result for [Backend Call - API (Instance Connect)] action in Button widget.
  ApiCallResponse? apiResultConectarInstancia;
  // Stores action output result for [Backend Call - API (CreateInstance Qr Code)] action in Button widget.
  ApiCallResponse? apiResultCriarInstanciaQrCode;
  // Stores action output result for [Backend Call - API (CreateInstance Numero Telefone)] action in Button widget.
  ApiCallResponse? apiResultCriarInstanciaNumTel;
  // Stores action output result for [Backend Call - API (Instance Connect)] action in Button widget.
  ApiCallResponse? apiResultInstanceConnectLoop;
  // Stores action output result for [Action Block - acWhatsAppVerificarConexao] action in Button widget.
  bool? acVerificarConexaoWahtsResult;
  // State field(s) for TextFieldCodConexTel widget.
  FocusNode? textFieldCodConexTelFocusNode;
  TextEditingController? textFieldCodConexTelTextController;
  String? Function(BuildContext, String?)?
      textFieldCodConexTelTextControllerValidator;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // Stores action output result for [Action Block - acWhatsAppVerificarConexao] action in Button widget.
  bool? resultacVerificarConexaoWhatsApp1;
  // Stores action output result for [Backend Call - API (Restart Instance)] action in Button widget.
  ApiCallResponse? apiResultRestartInstance;
  // Stores action output result for [Action Block - acWhatsAppVerificarConexao] action in Button widget.
  bool? resultacVerificarConexaoWhatsApp2;
  // Stores action output result for [Backend Call - API (Logout Instance)] action in Button widget.
  ApiCallResponse? apiResultLogoutInstance;
  // Stores action output result for [Action Block - acWhatsAppDeletarConexao] action in Button widget.
  bool? acWhatsAppDeleteConexResult;

  @override
  void initState(BuildContext context) {
    columnController1 = ScrollController();
    rowModelosBannersScrollController = ScrollController();
    rowFotosBannersScrollController = ScrollController();
    textFieldCPFTextControllerValidator = _textFieldCPFTextControllerValidator;
    textFieldDtNascimentoTextControllerValidator =
        _textFieldDtNascimentoTextControllerValidator;
    columnController2 = ScrollController();
    columnHorariosFuncScrollController = ScrollController();
    listViewHrFuncionamentoScrollController = ScrollController();
    columnWhatsAppScrollController = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    columnController1?.dispose();
    tabBarController?.dispose();
    textFieldTamanhoTelaFocusNode?.dispose();
    textFieldTamanhoTelaTextController?.dispose();

    rowModelosBannersScrollController?.dispose();
    textFieldTextoBannerFocusNode?.dispose();
    textFieldTextoBannerTextController?.dispose();

    rowFotosBannersScrollController?.dispose();
    textFieldNomeEmpresaFocusNode?.dispose();
    textFieldNomeEmpresaTextController?.dispose();

    textFieldIDEmpresaFocusNode?.dispose();
    textFieldIDEmpresaTextController?.dispose();

    textFieldUsernameFocusNode?.dispose();
    textFieldUsernameTextController?.dispose();

    textFieldNomeContatoFocusNode?.dispose();
    textFieldNomeContatoTextController?.dispose();

    textFieldTelFocusNode?.dispose();
    textFieldTelTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldCPFFocusNode?.dispose();
    textFieldCPFTextController?.dispose();

    textFieldDtNascimentoFocusNode?.dispose();
    textFieldDtNascimentoTextController?.dispose();

    textFieldCNPJFocusNode?.dispose();
    textFieldCNPJTextController?.dispose();

    textFieldInscEstFocusNode?.dispose();
    textFieldInscEstTextController?.dispose();

    textFieldNomeFantasiaFocusNode?.dispose();
    textFieldNomeFantasiaTextController?.dispose();

    textFieldNomePessoaFisicaRazSocialFocusNode?.dispose();
    textFieldNomePessoaFisicaRazSocialTextController?.dispose();

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

    columnController2?.dispose();
    columnHorariosFuncScrollController?.dispose();
    listViewHrFuncionamentoScrollController?.dispose();
    textFieldInstagramFocusNode?.dispose();
    textFieldInstagramTextController?.dispose();

    textFieldFacebookFocusNode?.dispose();
    textFieldFacebookTextController?.dispose();

    textFieldTikTokFocusNode?.dispose();
    textFieldTikTokTextController?.dispose();

    textFieldDescricaoFocusNode?.dispose();
    textFieldDescricaoTextController?.dispose();

    columnWhatsAppScrollController?.dispose();
    textFieldTelConexWhatsAppFocusNode?.dispose();
    textFieldTelConexWhatsAppTextController?.dispose();

    textFieldCodConexTelFocusNode?.dispose();
    textFieldCodConexTelTextController?.dispose();

    listViewController?.dispose();
  }

  /// Action blocks.
  Future acCarregarDados(BuildContext context) async {}

  /// Additional helper methods.
  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
