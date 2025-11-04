import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/admin/componentes/afiliado/estabelecimento/comp_estabelecimento/cp_cad_servicos/cp_cad_servicos_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'cp_home_assistente_cad_widget.dart' show CpHomeAssistenteCadWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CpHomeAssistenteCadModel
    extends FlutterFlowModel<CpHomeAssistenteCadWidget> {
  ///  Local state fields for this component.

  String? varUrlFotoTemp;

  int varIDSegmentoSelecionado = 0;

  bool varCamposDadosVerificados = false;

  String varFotoPerfilSelecionada = '0';

  List<int> varIDServicosLiberados = [];
  void addToVarIDServicosLiberados(int item) =>
      varIDServicosLiberados.add(item);
  void removeFromVarIDServicosLiberados(int item) =>
      varIDServicosLiberados.remove(item);
  void removeAtIndexFromVarIDServicosLiberados(int index) =>
      varIDServicosLiberados.removeAt(index);
  void insertAtIndexInVarIDServicosLiberados(int index, int item) =>
      varIDServicosLiberados.insert(index, item);
  void updateVarIDServicosLiberadosAtIndex(int index, Function(int) updateFn) =>
      varIDServicosLiberados[index] = updateFn(varIDServicosLiberados[index]);

  int varContador = 0;

  bool varInformarEndereco = false;

  bool varCEPInvalido = true;

  LatLng? varGeolocalizacao;

  List<TblCadServicosRow> varTblServicos = [];
  void addToVarTblServicos(TblCadServicosRow item) => varTblServicos.add(item);
  void removeFromVarTblServicos(TblCadServicosRow item) =>
      varTblServicos.remove(item);
  void removeAtIndexFromVarTblServicos(int index) =>
      varTblServicos.removeAt(index);
  void insertAtIndexInVarTblServicos(int index, TblCadServicosRow item) =>
      varTblServicos.insert(index, item);
  void updateVarTblServicosAtIndex(
          int index, Function(TblCadServicosRow) updateFn) =>
      varTblServicos[index] = updateFn(varTblServicos[index]);

  int varIDTemaSelecionado = 3;

  String varFotoLightModeTemaSelecionado = 'SEM FOTO';

  String varFotoDarkModeTemaSelecionado = 'SEM FOTO';

  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in cp_home_assistente_cad widget.
  List<ViewTblEstabelecimentosRow>? queryConsEstabelecimento;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Stores action output result for [Backend Call - Query Rows] action in PageView widget.
  List<TblModelosFotosRow>? queryConsModelosFotos;
  // Stores action output result for [Backend Call - Query Rows] action in PageView widget.
  List<TblAppTemasBlackgroundRow>? queryConsTemas;
  // Stores action output result for [Action Block - acConsultarModelosServicos] action in PageView widget.
  bool? acResultConsModServicos;
  // Stores action output result for [Backend Call - Query Rows] action in PageView widget.
  List<TblCadServicosRow>? queryConsServicosLib;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for StaggeredView widget.
  ScrollController? staggeredViewController1;
  // State field(s) for DropDownSegmento widget.
  int? dropDownSegmentoValue;
  FormFieldController<int>? dropDownSegmentoValueController;
  // State field(s) for ColumnFotoPerfil widget.
  ScrollController? columnFotoPerfilScrollController;
  bool isDataUploading_uploadDataEstabelecimentoPerfilAssist = false;
  FFUploadedFile uploadedLocalFile_uploadDataEstabelecimentoPerfilAssist =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataEstabelecimentoPerfilAssist = '';

  // State field(s) for StaggeredViewFotosPerfis widget.
  ScrollController? staggeredViewFotosPerfisScrollController;
  // State field(s) for Column widget.
  ScrollController? columnScrollController;
  // State field(s) for StaggeredView widget.
  ScrollController? staggeredViewController2;
  // State field(s) for ColumnFormPagComodEnd widget.
  ScrollController? columnFormPagComodEndScrollController;
  // State field(s) for TextFieldCEP widget.
  FocusNode? textFieldCEPFocusNode;
  TextEditingController? textFieldCEPTextController;
  late MaskTextInputFormatter textFieldCEPMask;
  String? Function(BuildContext, String?)? textFieldCEPTextControllerValidator;
  String? _textFieldCEPTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o CEP';
    }

    if (val.length < 9) {
      return 'CEP inválido';
    }
    if (val.length > 9) {
      return 'CEP inválido';
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
      return 'Informe o nome da Rua';
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
      return 'Informe o número';
    }

    return null;
  }

  // State field(s) for TextFieldComplemento widget.
  FocusNode? textFieldComplementoFocusNode;
  TextEditingController? textFieldComplementoTextController;
  String? Function(BuildContext, String?)?
      textFieldComplementoTextControllerValidator;
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

  // State field(s) for TextFieldCidade widget.
  FocusNode? textFieldCidadeFocusNode;
  TextEditingController? textFieldCidadeTextController;
  String? Function(BuildContext, String?)?
      textFieldCidadeTextControllerValidator;
  String? _textFieldCidadeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Cidade não localizada neste CEP';
    }

    return null;
  }

  // State field(s) for TextFieldEstado widget.
  FocusNode? textFieldEstadoFocusNode;
  TextEditingController? textFieldEstadoTextController;
  String? Function(BuildContext, String?)?
      textFieldEstadoTextControllerValidator;
  String? _textFieldEstadoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Estado não localizado neste CEP';
    }

    return null;
  }

  // State field(s) for DropDownEstado widget.
  String? dropDownEstadoValue;
  FormFieldController<String>? dropDownEstadoValueController;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for ListViewHrFuncionamento widget.
  ScrollController? listViewHrFuncionamentoScrollController;
  Completer<List<TblHorariosFuncionamentoRow>>? requestCompleter1;
  // State field(s) for Column widget.
  ScrollController? columnController3;
  // State field(s) for ListViewServicos widget.
  ScrollController? listViewServicosScrollController;
  // State field(s) for Column widget.
  ScrollController? columnController4;
  // State field(s) for TextNomeProfissional widget.
  FocusNode? textNomeProfissionalFocusNode;
  TextEditingController? textNomeProfissionalTextController;
  String? Function(BuildContext, String?)?
      textNomeProfissionalTextControllerValidator;
  String? _textNomeProfissionalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o nome do profissional';
    }

    return null;
  }

  // State field(s) for StaggeredViewServLib widget.
  ScrollController? staggeredViewServLibScrollController;
  Completer<List<ViewTblAppPlanosEstabelecimentosRow>>? requestCompleter3;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ViewTblProfissionaisRow>? queryConsNomeAss;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TblProfissionaisRow? resultInsertProfissional;
  Completer<List<TblProfissionaisRow>>? requestCompleter2;
  // State field(s) for ListViewHrProfissionais widget.
  ScrollController? listViewHrProfissionaisScrollController;
  bool isDataUploading_uploadDataProfissionaisAss = false;
  FFUploadedFile uploadedLocalFile_uploadDataProfissionaisAss =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataProfissionaisAss = '';

  // State field(s) for Column widget.
  ScrollController? columnController5;
  // State field(s) for TextNome widget.
  FocusNode? textNomeFocusNode;
  TextEditingController? textNomeTextController;
  String? Function(BuildContext, String?)? textNomeTextControllerValidator;
  String? _textNomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o nome do estabelecimento';
    }

    if (val.length < 6) {
      return 'O nome deve ter pelo menos 6 caracteres';
    }
    if (val.length > 50) {
      return 'O username deve ter no máximo 50 caracteres';
    }

    return null;
  }

  // State field(s) for TextUsername widget.
  FocusNode? textUsernameFocusNode;
  TextEditingController? textUsernameTextController;
  String? Function(BuildContext, String?)? textUsernameTextControllerValidator;
  String? _textUsernameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o username';
    }

    if (val.length < 6) {
      return 'O username deve ter pelo menos 6 caracteres';
    }
    if (val.length > 20) {
      return 'O username deve ter no máximo 20 caracteres';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Update Row(s)] action in ButtonProx widget.
  List<TblEstabelecimentoRow>? resultUpdateFotoPerfil;
  // Stores action output result for [Validate Form] action in ButtonProx widget.
  bool? resultValidarEndereco;
  // Stores action output result for [Backend Call - Update Row(s)] action in ButtonProx widget.
  List<TblEstabelecimentoRow>? resultUpdateInfos;
  // Stores action output result for [Backend Call - Query Rows] action in ButtonProx widget.
  List<TblCadServicosRow>? queryConsServ;
  // Stores action output result for [Backend Call - Query Rows] action in ButtonProx widget.
  List<ViewTblAppPlanosEstabelecimentosRow>? queryConsPlano;
  // Stores action output result for [Action Block - acContinuarTelaInfo] action in ButtonProx widget.
  bool? acResultContinuarTelaInfo1;

  @override
  void initState(BuildContext context) {
    columnController1 = ScrollController();
    staggeredViewController1 = ScrollController();
    columnFotoPerfilScrollController = ScrollController();
    staggeredViewFotosPerfisScrollController = ScrollController();
    columnScrollController = ScrollController();
    staggeredViewController2 = ScrollController();
    columnFormPagComodEndScrollController = ScrollController();
    textFieldCEPTextControllerValidator = _textFieldCEPTextControllerValidator;
    textFieldRuaTextControllerValidator = _textFieldRuaTextControllerValidator;
    textFieldNumeroTextControllerValidator =
        _textFieldNumeroTextControllerValidator;
    textFieldBairroTextControllerValidator =
        _textFieldBairroTextControllerValidator;
    textFieldCidadeTextControllerValidator =
        _textFieldCidadeTextControllerValidator;
    textFieldEstadoTextControllerValidator =
        _textFieldEstadoTextControllerValidator;
    columnController2 = ScrollController();
    listViewHrFuncionamentoScrollController = ScrollController();
    columnController3 = ScrollController();
    listViewServicosScrollController = ScrollController();
    columnController4 = ScrollController();
    textNomeProfissionalTextControllerValidator =
        _textNomeProfissionalTextControllerValidator;
    staggeredViewServLibScrollController = ScrollController();
    listViewHrProfissionaisScrollController = ScrollController();
    columnController5 = ScrollController();
    textNomeTextControllerValidator = _textNomeTextControllerValidator;
    textUsernameTextControllerValidator = _textUsernameTextControllerValidator;
  }

  @override
  void dispose() {
    columnController1?.dispose();
    staggeredViewController1?.dispose();
    columnFotoPerfilScrollController?.dispose();
    staggeredViewFotosPerfisScrollController?.dispose();
    columnScrollController?.dispose();
    staggeredViewController2?.dispose();
    columnFormPagComodEndScrollController?.dispose();
    textFieldCEPFocusNode?.dispose();
    textFieldCEPTextController?.dispose();

    textFieldRuaFocusNode?.dispose();
    textFieldRuaTextController?.dispose();

    textFieldNumeroFocusNode?.dispose();
    textFieldNumeroTextController?.dispose();

    textFieldComplementoFocusNode?.dispose();
    textFieldComplementoTextController?.dispose();

    textFieldBairroFocusNode?.dispose();
    textFieldBairroTextController?.dispose();

    textFieldCidadeFocusNode?.dispose();
    textFieldCidadeTextController?.dispose();

    textFieldEstadoFocusNode?.dispose();
    textFieldEstadoTextController?.dispose();

    columnController2?.dispose();
    listViewHrFuncionamentoScrollController?.dispose();
    columnController3?.dispose();
    listViewServicosScrollController?.dispose();
    columnController4?.dispose();
    textNomeProfissionalFocusNode?.dispose();
    textNomeProfissionalTextController?.dispose();

    staggeredViewServLibScrollController?.dispose();
    listViewHrProfissionaisScrollController?.dispose();
    columnController5?.dispose();
    textNomeFocusNode?.dispose();
    textNomeTextController?.dispose();

    textUsernameFocusNode?.dispose();
    textUsernameTextController?.dispose();
  }

  /// Action blocks.
  Future<bool> acContinuarTelaInfo(BuildContext context) async {
    String? resultConsUsername;
    List<TblEstabelecimentoRow>? resultUpdateInfos;

    resultConsUsername = await action_blocks.acConsultarUsername(
      context,
      paramUsername: textUsernameTextController.text,
      paramTabela: 'tbl_estabelecimento',
      paramID: FFAppState().VarIDEstabelecimentoLogado,
    );
    if (resultConsUsername != 'False') {
      return false;
    }
    await TblEstabelecimentoTable().update(
      data: {
        'nome': textNomeTextController.text,
        'username': functions
            .fcConverterStringMinusculo(textUsernameTextController.text),
      },
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        FFAppState().VarIDEstabelecimentoLogado,
      ),
    );
    FFAppState().updateVarTblEstabelecimentoLogadoStruct(
      (e) => e
        ..nomeEstabelecimento = textNomeTextController.text
        ..username = textUsernameTextController.text
        ..rua = resultUpdateInfos?.firstOrNull?.rua
        ..numero = resultUpdateInfos?.firstOrNull?.numero
        ..cidade = resultUpdateInfos?.firstOrNull?.cidade
        ..bairro = resultUpdateInfos?.firstOrNull?.bairro
        ..complemento = resultUpdateInfos?.firstOrNull?.complemento
        ..uf = resultUpdateInfos?.firstOrNull?.uf
        ..cep = resultUpdateInfos?.firstOrNull?.cep,
    );
    FFAppState().update(() {});
    return true;
  }

  Future acAdicionarServico(
    BuildContext context, {
    required TblModelosServicosTbc8BaB5Struct? paramVarTblModeloServico,
  }) async {
    TblCadServicosRow? resultInsertServico;

    resultInsertServico = await TblCadServicosTable().insert({
      'nome': paramVarTblModeloServico?.nome,
      'valor': 0.0,
      'foto': paramVarTblModeloServico?.foto,
      'situacao': true,
      'exige_entrada': false,
      'percentual_entrada': 0.0,
      'id_estabelecimento': FFAppState().VarIDEstabelecimentoLogado,
      'valor_sob_consulta': true,
      'user_id': currentUserUid,
      'tempo_minutos': 0,
      'id_modelo': paramVarTblModeloServico?.idModelo,
    });
    if (MediaQuery.sizeOf(context).width <
        FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Padding(
            padding: MediaQuery.viewInsetsOf(context),
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.8,
              child: CpCadServicosWidget(
                paramCadastro: false,
                paramID: resultInsertServico?.id,
              ),
            ),
          );
        },
      );
    } else {
      await showDialog(
        context: context,
        builder: (dialogContext) {
          return Dialog(
            elevation: 0,
            insetPadding: EdgeInsets.zero,
            backgroundColor: Colors.transparent,
            alignment: AlignmentDirectional(0.0, 0.0)
                .resolve(Directionality.of(context)),
            child: CpCadServicosWidget(
              paramCadastro: false,
              paramID: resultInsertServico?.id,
            ),
          );
        },
      );
    }

    await action_blocks.acConsultarModelosServicos(
      context,
      paramIDSegmento: varIDSegmentoSelecionado,
    );
  }

  Future acConcluirAssistente(BuildContext context) async {
    await TblEstabelecimentoTable().update(
      data: {
        'assistente_cad_concluido': true,
      },
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        FFAppState().VarIDEstabelecimentoLogado,
      ),
    );
    await action_blocks.acAtualizarEstabelecimentoLogado(context);
    if (FFAppState().varCarregouPrimeiraPagina) {
      Navigator.pop(context);
    } else {
      context.pushNamed(PgDashboardWidget.routeName);
    }
  }

  /// Additional helper methods.
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
