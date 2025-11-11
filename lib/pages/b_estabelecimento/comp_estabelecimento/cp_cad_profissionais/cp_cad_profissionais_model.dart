import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/e_sistema/calendario/cp_calendario_personalizado/cp_calendario_personalizado_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'cp_cad_profissionais_widget.dart' show CpCadProfissionaisWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CpCadProfissionaisModel
    extends FlutterFlowModel<CpCadProfissionaisWidget> {
  ///  Local state fields for this component.

  String varHoraSelecionadaPadrao = '0';

  String varDiaSelecionadoPadrao = '0';

  String varHoraSelecionadaDisponivel = '0';

  String varDiaSelecionadoDisponivel = '0';

  int varContadorCdProfissionais = 0;

  List<TblProfissionalServLibStruct> varTblProfissionalServLib = [];
  void addToVarTblProfissionalServLib(TblProfissionalServLibStruct item) =>
      varTblProfissionalServLib.add(item);
  void removeFromVarTblProfissionalServLib(TblProfissionalServLibStruct item) =>
      varTblProfissionalServLib.remove(item);
  void removeAtIndexFromVarTblProfissionalServLib(int index) =>
      varTblProfissionalServLib.removeAt(index);
  void insertAtIndexInVarTblProfissionalServLib(
          int index, TblProfissionalServLibStruct item) =>
      varTblProfissionalServLib.insert(index, item);
  void updateVarTblProfissionalServLibAtIndex(
          int index, Function(TblProfissionalServLibStruct) updateFn) =>
      varTblProfissionalServLib[index] =
          updateFn(varTblProfissionalServLib[index]);

  bool varCadastroConcluido = false;

  int varIDProfissional = 0;

  bool varSituacaoCadastro = true;

  bool varAdicionandoHr = false;

  List<String> varDiasSemSelecionados = [];
  void addToVarDiasSemSelecionados(String item) =>
      varDiasSemSelecionados.add(item);
  void removeFromVarDiasSemSelecionados(String item) =>
      varDiasSemSelecionados.remove(item);
  void removeAtIndexFromVarDiasSemSelecionados(int index) =>
      varDiasSemSelecionados.removeAt(index);
  void insertAtIndexInVarDiasSemSelecionados(int index, String item) =>
      varDiasSemSelecionados.insert(index, item);
  void updateVarDiasSemSelecionadosAtIndex(
          int index, Function(String) updateFn) =>
      varDiasSemSelecionados[index] = updateFn(varDiasSemSelecionados[index]);

  int varContadorCadProf = 0;

  bool varMostrarHrFuncionamento = false;

  int varContadorAddDias = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in cp_cad_profissionais widget.
  List<TblProfissionaisServLibRow>? queryConsServLib;
  // Stores action output result for [Backend Call - Query Rows] action in cp_cad_profissionais widget.
  List<TblProfissionaisRow>? queryTbProfissionais;
  // State field(s) for ColumnPagina widget.
  ScrollController? columnPaginaScrollController;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  bool isDataUploading_uploadDataProfissionais = false;
  FFUploadedFile uploadedLocalFile_uploadDataProfissionais =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataProfissionais = '';

  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  // State field(s) for TextFieldID widget.
  FocusNode? textFieldIDFocusNode;
  TextEditingController? textFieldIDTextController;
  String? Function(BuildContext, String?)? textFieldIDTextControllerValidator;
  // State field(s) for TextFieldDescricao widget.
  FocusNode? textFieldDescricaoFocusNode;
  TextEditingController? textFieldDescricaoTextController;
  String? Function(BuildContext, String?)?
      textFieldDescricaoTextControllerValidator;
  // State field(s) for TextFieldWhatsapp widget.
  FocusNode? textFieldWhatsappFocusNode;
  TextEditingController? textFieldWhatsappTextController;
  late MaskTextInputFormatter textFieldWhatsappMask;
  String? Function(BuildContext, String?)?
      textFieldWhatsappTextControllerValidator;
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
  // State field(s) for StaggeredViewServLib widget.
  ScrollController? staggeredViewServLibScrollController;
  // State field(s) for ListView widget.
  ScrollController? listViewController1;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ViewTblProfissionaisRow>? queryConsNome;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ViewQuantTblProfissionaisRow>? queryQtProfissionaisCad2;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TblProfissionaisRow? supainsertProfissional;
  Completer<List<ViewTblHorariosFuncionamentoRow>>? requestCompleter1;
  Completer<List<ViewTblHorariosPadraoRow>>? requestCompleter2;
  // State field(s) for ColumnHorariosPadroes widget.
  ScrollController? columnHorariosPadroesScrollController;
  // State field(s) for DropDownDiaSemana widget.
  String? dropDownDiaSemanaValue;
  FormFieldController<String>? dropDownDiaSemanaValueController;
  // State field(s) for TextFieldHoraPadraoOp1 widget.
  FocusNode? textFieldHoraPadraoOp1FocusNode;
  TextEditingController? textFieldHoraPadraoOp1TextController;
  late MaskTextInputFormatter textFieldHoraPadraoOp1Mask;
  String? Function(BuildContext, String?)?
      textFieldHoraPadraoOp1TextControllerValidator;
  // State field(s) for TextFieldHoraPadraoOp2 widget.
  FocusNode? textFieldHoraPadraoOp2FocusNode;
  TextEditingController? textFieldHoraPadraoOp2TextController;
  late MaskTextInputFormatter textFieldHoraPadraoOp2Mask;
  String? Function(BuildContext, String?)?
      textFieldHoraPadraoOp2TextControllerValidator;
  // Stores action output result for [Action Block - AcBlockAddHrPadraoOp2] action in TextFieldHoraPadraoOp2 widget.
  bool? acAddHorPadraoResult2;
  // Stores action output result for [Action Block - AcBlockAddHrPadraoOp2] action in Button widget.
  bool? acAddHorPadraoResult;
  // State field(s) for StaggeredViewHrPadrao widget.
  ScrollController? staggeredViewHrPadraoScrollController;
  // State field(s) for ListView widget.
  ScrollController? listViewController2;
  // State field(s) for ColumnHorariosFunc widget.
  ScrollController? columnHorariosFuncScrollController;
  // State field(s) for ListViewHrFuncionamento widget.
  ScrollController? listViewHrFuncionamentoScrollController;
  Completer<List<TblCadServicosRow>>? requestCompleter3;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // Model for cpCalendarioPersonalizado component.
  late CpCalendarioPersonalizadoModel cpCalendarioPersonalizadoModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for DropDownTipoAtzHrPadrao widget.
  String? dropDownTipoAtzHrPadraoValue;
  FormFieldController<String>? dropDownTipoAtzHrPadraoValueController;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<ViewTblHorariosPadrao2Row>? queryHrsPadroes;
  // State field(s) for TextFieldHoraDisp widget.
  FocusNode? textFieldHoraDispFocusNode;
  TextEditingController? textFieldHoraDispTextController;
  late MaskTextInputFormatter textFieldHoraDispMask;
  String? Function(BuildContext, String?)?
      textFieldHoraDispTextControllerValidator;
  // State field(s) for StaggeredViewHrLib widget.
  ScrollController? staggeredViewHrLibScrollController;

  @override
  void initState(BuildContext context) {
    columnPaginaScrollController = ScrollController();
    staggeredViewServLibScrollController = ScrollController();
    listViewController1 = ScrollController();
    columnHorariosPadroesScrollController = ScrollController();
    staggeredViewHrPadraoScrollController = ScrollController();
    listViewController2 = ScrollController();
    columnHorariosFuncScrollController = ScrollController();
    listViewHrFuncionamentoScrollController = ScrollController();
    columnController = ScrollController();
    cpCalendarioPersonalizadoModel =
        createModel(context, () => CpCalendarioPersonalizadoModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    staggeredViewHrLibScrollController = ScrollController();
  }

  @override
  void dispose() {
    columnPaginaScrollController?.dispose();
    tabBarController?.dispose();
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldIDFocusNode?.dispose();
    textFieldIDTextController?.dispose();

    textFieldDescricaoFocusNode?.dispose();
    textFieldDescricaoTextController?.dispose();

    textFieldWhatsappFocusNode?.dispose();
    textFieldWhatsappTextController?.dispose();

    textFieldInstagramFocusNode?.dispose();
    textFieldInstagramTextController?.dispose();

    textFieldFacebookFocusNode?.dispose();
    textFieldFacebookTextController?.dispose();

    textFieldTikTokFocusNode?.dispose();
    textFieldTikTokTextController?.dispose();

    staggeredViewServLibScrollController?.dispose();
    listViewController1?.dispose();
    columnHorariosPadroesScrollController?.dispose();
    textFieldHoraPadraoOp1FocusNode?.dispose();
    textFieldHoraPadraoOp1TextController?.dispose();

    textFieldHoraPadraoOp2FocusNode?.dispose();
    textFieldHoraPadraoOp2TextController?.dispose();

    staggeredViewHrPadraoScrollController?.dispose();
    listViewController2?.dispose();
    columnHorariosFuncScrollController?.dispose();
    listViewHrFuncionamentoScrollController?.dispose();
    columnController?.dispose();
    cpCalendarioPersonalizadoModel.dispose();
    textFieldHoraDispFocusNode?.dispose();
    textFieldHoraDispTextController?.dispose();

    staggeredViewHrLibScrollController?.dispose();
  }

  /// Action blocks.
  Future acBlockAddHrPadraoOp1(BuildContext context) async {
    List<TblHorariosPadraoRow>? queryConsHora;

    if (textFieldHoraPadraoOp1TextController.text == '') {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Informe o horário',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return;
    }
    if (textFieldHoraPadraoOp1TextController.text == '') {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Informe a hora',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return;
    }
    if (functions.fcCountCaracteres(textFieldHoraPadraoOp1TextController.text) <
        5) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Horário inválido, digite os 4 números',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return;
    }
    if (functions.fcConverterStringPInteiro(
            functions.fcRemoverCaracteresELetrasString(
                textFieldHoraPadraoOp1TextController.text)) >
        2359) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Horário inválido',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return;
    }
    queryConsHora = await TblHorariosPadraoTable().queryRows(
      queryFn: (q) => q
          .eqOrNull(
            'id_estabelecimento',
            FFAppState().VarIDEstabelecimentoLogado,
          )
          .eqOrNull(
            'id_profissional',
            varIDProfissional,
          )
          .eqOrNull(
            'dia_semana',
            dropDownDiaSemanaValue,
          )
          .eqOrNull(
            'hora',
            textFieldHoraPadraoOp1TextController.text,
          ),
    );
    if (queryConsHora.length > 0) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Esse horário já está cadastrado ',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return;
    }
    varHoraSelecionadaPadrao = '0';
    varDiaSelecionadoPadrao = '0';
    await TblHorariosPadraoTable().insert({
      'id_estabelecimento': FFAppState().VarIDEstabelecimentoLogado,
      'id_profissional': varIDProfissional,
      'dia_semana': dropDownDiaSemanaValue,
      'hora': textFieldHoraPadraoOp1TextController.text,
      'situacao': true,
      'ordem': () {
        if (dropDownDiaSemanaValue == 'DOM') {
          return 1;
        } else if (dropDownDiaSemanaValue == 'SEG') {
          return 2;
        } else if (dropDownDiaSemanaValue == 'TER') {
          return 3;
        } else if (dropDownDiaSemanaValue == 'QUA') {
          return 4;
        } else if (dropDownDiaSemanaValue == 'QUI') {
          return 5;
        } else if (dropDownDiaSemanaValue == 'SEX') {
          return 6;
        } else if (dropDownDiaSemanaValue == 'SÁB') {
          return 7;
        } else {
          return 0;
        }
      }(),
      'user_id': currentUserUid,
    });
  }

  Future acAddHorarioLiberar(BuildContext context) async {
    List<TblHorariosDisponiveisRow>? queryConsHoraDisp;

    varHoraSelecionadaPadrao = '0';
    varDiaSelecionadoPadrao = '0';
    varHoraSelecionadaDisponivel = '0';
    varDiaSelecionadoDisponivel = '0';
    if (textFieldHoraDispTextController.text == '') {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Informe a hora',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return;
    }
    if (functions.fcCountCaracteres(textFieldHoraDispTextController.text) < 5) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Horário inválido, digite os 4 números',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return;
    }
    if (functions.fcConverterStringPInteiro(
            functions.fcRemoverCaracteresELetrasString(
                textFieldHoraDispTextController.text)) >
        2359) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Horário inválido',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return;
    }
    queryConsHoraDisp = await TblHorariosDisponiveisTable().queryRows(
      queryFn: (q) => q
          .eqOrNull(
            'id_estabelecimento',
            FFAppState().VarIDEstabelecimentoLogado,
          )
          .eqOrNull(
            'id_profissional',
            varIDProfissional,
          )
          .eqOrNull(
            'dia_mes_data',
            supaSerialize<DateTime>(FFAppState().varCalendarioDataSelecionada),
          )
          .eqOrNull(
            'hora',
            textFieldHoraDispTextController.text,
          ),
    );
    if (queryConsHoraDisp.length > 0) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Esse horário já está cadastrado',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return;
    }
    varAdicionandoHr = true;
    await TblHorariosDisponiveisTable().insert({
      'id_estabelecimento': FFAppState().VarIDEstabelecimentoLogado,
      'id_profissional': varIDProfissional,
      'dia_semana': () {
        if (dateTimeFormat(
              "E",
              FFAppState().varCalendarioDataSelecionada,
              locale: FFLocalizations.of(context).languageCode,
            ) ==
            'dom.') {
          return 'DOM';
        } else if (dateTimeFormat(
              "E",
              FFAppState().varCalendarioDataSelecionada,
              locale: FFLocalizations.of(context).languageCode,
            ) ==
            'seg.') {
          return 'SEG';
        } else if (dateTimeFormat(
              "E",
              FFAppState().varCalendarioDataSelecionada,
              locale: FFLocalizations.of(context).languageCode,
            ) ==
            'ter.') {
          return 'TER';
        } else if (dateTimeFormat(
              "E",
              FFAppState().varCalendarioDataSelecionada,
              locale: FFLocalizations.of(context).languageCode,
            ) ==
            'qua.') {
          return 'QUA';
        } else if (dateTimeFormat(
              "E",
              FFAppState().varCalendarioDataSelecionada,
              locale: FFLocalizations.of(context).languageCode,
            ) ==
            'qui.') {
          return 'QUI';
        } else if (dateTimeFormat(
              "E",
              FFAppState().varCalendarioDataSelecionada,
              locale: FFLocalizations.of(context).languageCode,
            ) ==
            'sex.') {
          return 'SEX';
        } else if (dateTimeFormat(
              "E",
              FFAppState().varCalendarioDataSelecionada,
              locale: FFLocalizations.of(context).languageCode,
            ) ==
            'sáb.') {
          return 'SÁB';
        } else {
          return '...';
        }
      }(),
      'hora': textFieldHoraDispTextController.text,
      'situacao': true,
      'ordem': () {
        if (dateTimeFormat(
              "E",
              FFAppState().varCalendarioDataSelecionada,
              locale: FFLocalizations.of(context).languageCode,
            ) ==
            'dom.') {
          return 1;
        } else if (dateTimeFormat(
              "E",
              FFAppState().varCalendarioDataSelecionada,
              locale: FFLocalizations.of(context).languageCode,
            ) ==
            'seg.') {
          return 2;
        } else if (dateTimeFormat(
              "E",
              FFAppState().varCalendarioDataSelecionada,
              locale: FFLocalizations.of(context).languageCode,
            ) ==
            'ter.') {
          return 3;
        } else if (dateTimeFormat(
              "E",
              FFAppState().varCalendarioDataSelecionada,
              locale: FFLocalizations.of(context).languageCode,
            ) ==
            'qua.') {
          return 4;
        } else if (dateTimeFormat(
              "E",
              FFAppState().varCalendarioDataSelecionada,
              locale: FFLocalizations.of(context).languageCode,
            ) ==
            'qui.') {
          return 5;
        } else if (dateTimeFormat(
              "E",
              FFAppState().varCalendarioDataSelecionada,
              locale: FFLocalizations.of(context).languageCode,
            ) ==
            'sex.') {
          return 6;
        } else if (dateTimeFormat(
              "E",
              FFAppState().varCalendarioDataSelecionada,
              locale: FFLocalizations.of(context).languageCode,
            ) ==
            'sáb.') {
          return 7;
        } else {
          return 0;
        }
      }(),
      'dia_mes_data':
          supaSerialize<DateTime>(FFAppState().varCalendarioDataSelecionada),
      'user_id': FFAppState().VarTblEstabelecimentoLogado.userId,
    });
    await action_blocks.acBlockAtualizarHorasDispProfissional(
      context,
      paramIDProfissionalAtzHrDipspProf: varIDProfissional,
    );
    await action_blocks.acBlockAtualizarDiasDispProfissional(
      context,
      paramIDProfissionalAtzDiasDipspProf: varIDProfissional,
      paramIDServico: 0,
    );
  }

  Future<bool> acBlockAddHrPadraoOp2(BuildContext context) async {
    List<ViewTblHorariosPadraoCountRow>? queryQuantHrPadroes;

    if (varDiasSemSelecionados.length == 0) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Selecione pelo menos um dia da semana',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return false;
    }
    if (textFieldHoraPadraoOp2TextController.text == '') {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Informe o horário',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return false;
    }
    if (textFieldHoraPadraoOp2TextController.text == '') {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Informe a hora',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return false;
    }
    if (functions.fcCountCaracteres(textFieldHoraPadraoOp2TextController.text) <
        5) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Horário inválido, digite os 4 números',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return false;
    }
    if (functions.fcConverterStringPInteiro(
            functions.fcRemoverCaracteresELetrasString(
                textFieldHoraPadraoOp2TextController.text)) >
        2359) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem: 'Horário inválido',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return false;
    }
    queryQuantHrPadroes = await ViewTblHorariosPadraoCountTable().queryRows(
      queryFn: (q) => q
          .eqOrNull(
            'id_estabelecimento',
            FFAppState().VarIDEstabelecimentoLogado,
          )
          .eqOrNull(
            'id_profissional',
            varIDProfissional,
          ),
    );
    if (queryQuantHrPadroes.firstOrNull!.quant! > 200) {
      await action_blocks.acMensagemDialog(
        context,
        paramTitulo: 'Atenção!',
        paramMensagem:
            'Limite atingido, clique em Excluir todos os horário e adicione novamente',
        paramVerCarrinho: false,
        paramTipo: 'erro',
        paramPadrao: false,
      );
      return false;
    }
    varHoraSelecionadaPadrao = '0';
    varDiaSelecionadoPadrao = '0';
    if (varDiasSemSelecionados.contains('DOM') == true) {
      unawaited(
        () async {
          await TblHorariosPadraoTable().insert({
            'id_estabelecimento': FFAppState().VarIDEstabelecimentoLogado,
            'id_profissional': varIDProfissional,
            'dia_semana': 'DOM',
            'hora': textFieldHoraPadraoOp2TextController.text,
            'situacao': true,
            'ordem': 1,
            'user_id': FFAppState().VarTblEstabelecimentoLogado.userId,
          });
        }(),
      );
    }
    if (varDiasSemSelecionados.contains('SEG') == true) {
      unawaited(
        () async {
          await TblHorariosPadraoTable().insert({
            'id_estabelecimento': FFAppState().VarIDEstabelecimentoLogado,
            'id_profissional': varIDProfissional,
            'dia_semana': 'SEG',
            'hora': textFieldHoraPadraoOp2TextController.text,
            'situacao': true,
            'ordem': 2,
            'user_id': FFAppState().VarTblEstabelecimentoLogado.userId,
          });
        }(),
      );
    }
    if (varDiasSemSelecionados.contains('TER') == true) {
      unawaited(
        () async {
          await TblHorariosPadraoTable().insert({
            'id_estabelecimento': FFAppState().VarIDEstabelecimentoLogado,
            'id_profissional': varIDProfissional,
            'dia_semana': 'TER',
            'hora': textFieldHoraPadraoOp2TextController.text,
            'situacao': true,
            'ordem': 3,
            'user_id': FFAppState().VarTblEstabelecimentoLogado.userId,
          });
        }(),
      );
    }
    if (varDiasSemSelecionados.contains('QUA') == true) {
      unawaited(
        () async {
          await TblHorariosPadraoTable().insert({
            'id_estabelecimento': FFAppState().VarIDEstabelecimentoLogado,
            'id_profissional': varIDProfissional,
            'dia_semana': 'QUA',
            'hora': textFieldHoraPadraoOp2TextController.text,
            'situacao': true,
            'ordem': 4,
            'user_id': FFAppState().VarTblEstabelecimentoLogado.userId,
          });
        }(),
      );
    }
    if (varDiasSemSelecionados.contains('QUI') == true) {
      unawaited(
        () async {
          await TblHorariosPadraoTable().insert({
            'id_estabelecimento': FFAppState().VarIDEstabelecimentoLogado,
            'id_profissional': varIDProfissional,
            'dia_semana': 'QUI',
            'hora': textFieldHoraPadraoOp2TextController.text,
            'situacao': true,
            'ordem': 5,
            'user_id': FFAppState().VarTblEstabelecimentoLogado.userId,
          });
        }(),
      );
    }
    if (varDiasSemSelecionados.contains('SEX') == true) {
      unawaited(
        () async {
          await TblHorariosPadraoTable().insert({
            'id_estabelecimento': FFAppState().VarIDEstabelecimentoLogado,
            'id_profissional': varIDProfissional,
            'dia_semana': 'SEX',
            'hora': textFieldHoraPadraoOp2TextController.text,
            'situacao': true,
            'ordem': 6,
            'user_id': FFAppState().VarTblEstabelecimentoLogado.userId,
          });
        }(),
      );
    }
    if (varDiasSemSelecionados.contains('SÁB') == true) {
      unawaited(
        () async {
          await TblHorariosPadraoTable().insert({
            'id_estabelecimento': FFAppState().VarIDEstabelecimentoLogado,
            'id_profissional': varIDProfissional,
            'dia_semana': 'SÁB',
            'hora': textFieldHoraPadraoOp2TextController.text,
            'situacao': true,
            'ordem': 7,
            'user_id': FFAppState().VarTblEstabelecimentoLogado.userId,
          });
        }(),
      );
    }
    await Future.delayed(
      Duration(
        milliseconds: 250,
      ),
    );
    return true;
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
}
