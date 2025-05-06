import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/admin/a_sistema/home/cp_foto/cp_foto_widget.dart';
import '/pages/admin/a_sistema/home/cp_sem_cadastro/cp_sem_cadastro_widget.dart';
import '/pages/admin/componentes/estabelecimento/comp_estabelecimento/cp_cad_profissionais/cp_cad_profissionais_widget.dart';
import '/pages/admin/componentes/estabelecimento/comp_estabelecimento/cp_cad_servicos/cp_cad_servicos_widget.dart';
import '/pages/admin/componentes/estabelecimento/comp_estabelecimento/cp_estabelec_cad_hr_atendimentos/cp_estabelec_cad_hr_atendimentos_widget.dart';
import '/pages/page_mensagens_personalizadas/cp_dialog_snack_bar/cp_dialog_snack_bar_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cp_home_assistente_cad_model.dart';
export 'cp_home_assistente_cad_model.dart';

class CpHomeAssistenteCadWidget extends StatefulWidget {
  const CpHomeAssistenteCadWidget({super.key});

  @override
  State<CpHomeAssistenteCadWidget> createState() =>
      _CpHomeAssistenteCadWidgetState();
}

class _CpHomeAssistenteCadWidgetState extends State<CpHomeAssistenteCadWidget>
    with TickerProviderStateMixin {
  late CpHomeAssistenteCadModel _model;

  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpHomeAssistenteCadModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().varCarregouPrimeiraPagina) {
        await Future.delayed(const Duration(milliseconds: 1000));
        if (FFAppState().VarTblEstabelecimentoLogado.assistenteCadConcluido ==
            true) {
          context.pushNamed(PgDashboardWidget.routeName);

          FFAppState().varCarregouPrimeiraPagina = false;
          safeSetState(() {});
          return;
        }
      }
      _model.queryConsEstabelecimento =
          await ViewTblEstabelecimentosTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'id',
          FFAppState().VarIDEstabelecimentoLogado,
        ),
      );
      _model.varIDSegmentoSelecionado =
          _model.queryConsEstabelecimento!.firstOrNull!.idSegmento!;
      _model.varFotoPerfilSelecionada =
          _model.queryConsEstabelecimento!.firstOrNull!.fotoPerfil!;
      _model.varInformarEndereco =
          _model.queryConsEstabelecimento?.firstOrNull?.cep != null &&
              _model.queryConsEstabelecimento?.firstOrNull?.cep != '';
      _model.varCEPInvalido =
          _model.queryConsEstabelecimento?.firstOrNull?.cep == null ||
              _model.queryConsEstabelecimento?.firstOrNull?.cep == '';
      _model.varIDTemaSelecionado =
          _model.queryConsEstabelecimento!.firstOrNull!.idTema!;
      _model.varFotoLightModeTemaSelecionado =
          _model.queryConsEstabelecimento!.firstOrNull!.fotoLightMode!;
      _model.varFotoDarkModeTemaSelecionado =
          _model.queryConsEstabelecimento!.firstOrNull!.fotoDarkMod!;
      safeSetState(() {});
      FFAppState().updateVarTblEstabelecimentoLogadoStruct(
        (e) => e
          ..formasPagamento = _model
              .queryConsEstabelecimento!.firstOrNull!.formasPagamento
              .toList()
          ..comodidades = _model
              .queryConsEstabelecimento!.firstOrNull!.comodidades
              .toList(),
      );
      safeSetState(() {});
      safeSetState(() {
        _model.textFieldEstadoTextController?.text =
            _model.queryConsEstabelecimento!.firstOrNull!.nomeEstado!;
      });
      if (FFAppState().varTblSegmentos.length == 0) {
        await action_blocks.acAtualizarSegmentos(context);
      }
    });

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.textFieldCEPTextController ??= TextEditingController(
        text: FFAppState().VarTblEstabelecimentoLogado.cep);
    _model.textFieldCEPFocusNode ??= FocusNode();

    _model.textFieldRuaTextController ??= TextEditingController(
        text: FFAppState().VarTblEstabelecimentoLogado.rua);
    _model.textFieldRuaFocusNode ??= FocusNode();

    _model.textFieldNumeroTextController ??= TextEditingController(
        text: FFAppState().VarTblEstabelecimentoLogado.numero);
    _model.textFieldNumeroFocusNode ??= FocusNode();

    _model.textFieldComplementoTextController ??= TextEditingController(
        text: FFAppState().VarTblEstabelecimentoLogado.complemento);
    _model.textFieldComplementoFocusNode ??= FocusNode();

    _model.textFieldCidadeTextController ??= TextEditingController(
        text: FFAppState().VarTblEstabelecimentoLogado.cidade);
    _model.textFieldCidadeFocusNode ??= FocusNode();

    _model.textFieldBairroTextController ??= TextEditingController(
        text: FFAppState().VarTblEstabelecimentoLogado.bairro);
    _model.textFieldBairroFocusNode ??= FocusNode();

    _model.textFieldEstadoTextController ??= TextEditingController();
    _model.textFieldEstadoFocusNode ??= FocusNode();

    _model.textNomeProfissionalTextController ??= TextEditingController();
    _model.textNomeProfissionalFocusNode ??= FocusNode();

    _model.textNomeTextController ??= TextEditingController(
        text: FFAppState().VarTblEstabelecimentoLogado.nomeEstabelecimento);
    _model.textNomeFocusNode ??= FocusNode();

    _model.textUsernameTextController ??= TextEditingController(
        text: FFAppState().VarTblEstabelecimentoLogado.username != ''
            ? FFAppState().VarTblEstabelecimentoLogado.username
            : functions.fcRemoverCaracteresEEspacosString(
                functions.fcConverterStringMinusculo(FFAppState()
                    .VarTblEstabelecimentoLogado
                    .nomeEstabelecimento)));
    _model.textUsernameFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(115.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation4': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.95, 0.95),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-0.1, -0.1),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation11': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation12': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(
          0.0,
          valueOrDefault<double>(
            () {
              if ((isWeb == true) &&
                  (FFAppState().VarTblDispositivoInformacoes.osName ==
                      'Android')) {
                return -1.0;
              } else if ((MediaQuery.sizeOf(context).width <
                      kBreakpointSmall) ||
                  (MediaQuery.sizeOf(context).width <
                      FFAppState()
                          .varTamanhoMinimoTelaMenuLateral
                          .toDouble())) {
                return 1.0;
              } else {
                return 0.0;
              }
            }(),
            0.0,
          )),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        constraints: BoxConstraints(
          minHeight: 50.0,
          maxWidth: () {
            if (FFAppState()
                .VarTblEstabelecimentoLogado
                .assistenteCadConcluido) {
              return MediaQuery.sizeOf(context).width;
            } else if (MediaQuery.sizeOf(context).width <
                FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
              return MediaQuery.sizeOf(context).width;
            } else {
              return 900.0;
            }
          }(),
          maxHeight: () {
            if (FFAppState()
                .VarTblEstabelecimentoLogado
                .assistenteCadConcluido) {
              return MediaQuery.sizeOf(context).height;
            } else if (MediaQuery.sizeOf(context).width <
                FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
              return (MediaQuery.sizeOf(context).height * 1.0);
            } else {
              return 800.0;
            }
          }(),
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              Theme.of(context).brightness == Brightness.dark
                  ? 'assets/images/appbackground-22-homedecor-plant.png'
                  : 'assets/images/appbackground-22-homedecor-plant.jpg',
            ).image,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(valueOrDefault<double>(
              (MediaQuery.sizeOf(context).width < kBreakpointSmall) ||
                      (MediaQuery.sizeOf(context).width <
                          FFAppState()
                              .varTamanhoMinimoTelaMenuLateral
                              .toDouble()) ||
                      FFAppState()
                          .VarTblEstabelecimentoLogado
                          .assistenteCadConcluido
                  ? 0.0
                  : 15.0,
              0.0,
            )),
            bottomRight: Radius.circular(valueOrDefault<double>(
              (MediaQuery.sizeOf(context).width < kBreakpointSmall) ||
                      (MediaQuery.sizeOf(context).width <
                          FFAppState()
                              .varTamanhoMinimoTelaMenuLateral
                              .toDouble()) ||
                      FFAppState()
                          .VarTblEstabelecimentoLogado
                          .assistenteCadConcluido
                  ? 0.0
                  : 15.0,
              0.0,
            )),
            topLeft: Radius.circular(valueOrDefault<double>(
              (MediaQuery.sizeOf(context).width < kBreakpointSmall) ||
                      (MediaQuery.sizeOf(context).width <
                          FFAppState()
                              .varTamanhoMinimoTelaMenuLateral
                              .toDouble()) ||
                      FFAppState()
                          .VarTblEstabelecimentoLogado
                          .assistenteCadConcluido
                  ? 0.0
                  : 15.0,
              0.0,
            )),
            topRight: Radius.circular(valueOrDefault<double>(
              (MediaQuery.sizeOf(context).width < kBreakpointSmall) ||
                      (MediaQuery.sizeOf(context).width <
                          FFAppState()
                              .varTamanhoMinimoTelaMenuLateral
                              .toDouble()) ||
                      FFAppState()
                          .VarTblEstabelecimentoLogado
                          .assistenteCadConcluido
                  ? 0.0
                  : 15.0,
              0.0,
            )),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (isAndroid)
              Container(
                width: 100.0,
                height: 60.0,
                decoration: BoxDecoration(),
              ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.sizeOf(context).width <
                            FFAppState()
                                .varTamanhoMinimoTelaMenuLateral
                                .toDouble()
                        ? MediaQuery.sizeOf(context).width
                        : 900.0,
                    maxHeight: MediaQuery.sizeOf(context).width <
                            FFAppState()
                                .varTamanhoMinimoTelaMenuLateral
                                .toDouble()
                        ? (MediaQuery.sizeOf(context).height * 1.0)
                        : 800.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: MediaQuery.sizeOf(context).width >
                              FFAppState()
                                  .varTamanhoMinimoTelaMenuLateral
                                  .toDouble()
                          ? Color(0x41E0E3E7)
                          : Colors.transparent,
                    ),
                  ),
                  child:
                      FutureBuilder<List<ViewTblAppPlanosEstabelecimentosRow>>(
                    future: (_model.requestCompleter3 ??= Completer<
                            List<ViewTblAppPlanosEstabelecimentosRow>>()
                          ..complete(ViewTblAppPlanosEstabelecimentosTable()
                              .querySingleRow(
                            queryFn: (q) => q
                                .eqOrNull(
                                  'id_estabelecimento',
                                  FFAppState().VarIDEstabelecimentoLogado,
                                )
                                .eqOrNull(
                                  'plano_ativo',
                                  true,
                                ),
                          )))
                        .future,
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<ViewTblAppPlanosEstabelecimentosRow>
                          stackViewTblAppPlanosEstabelecimentosRowList =
                          snapshot.data!;

                      final stackViewTblAppPlanosEstabelecimentosRow =
                          stackViewTblAppPlanosEstabelecimentosRowList
                                  .isNotEmpty
                              ? stackViewTblAppPlanosEstabelecimentosRowList
                                  .first
                              : null;

                      return Stack(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0,
                                0.0,
                                0.0,
                                valueOrDefault<double>(
                                  MediaQuery.sizeOf(context).width >=
                                          FFAppState()
                                              .varTamanhoMinimoTelaMenuLateral
                                              .toDouble()
                                      ? 22.0
                                      : 12.0,
                                  0.0,
                                )),
                            child: Container(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 1.0,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 40.0),
                                    child: PageView(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      controller: _model.pageViewController ??=
                                          PageController(initialPage: 0),
                                      onPageChanged: (_) async {
                                        if (_model.pageViewCurrentIndex == 0) {
                                        } else if (_model
                                                .pageViewCurrentIndex ==
                                            1) {
                                          _model.queryConsModelosFotos =
                                              await TblModelosFotosTable()
                                                  .queryRows(
                                            queryFn: (q) => q
                                                .containsOrNull(
                                                  'id_segmento',
                                                  '{${_model.varIDSegmentoSelecionado}}',
                                                )
                                                .eqOrNull(
                                                  'situacao',
                                                  true,
                                                )
                                                .order('id'),
                                          );
                                          await _model.columnFotoPerfil
                                              ?.animateTo(
                                            _model.columnFotoPerfil!.position
                                                .maxScrollExtent,
                                            duration: Duration(milliseconds: 1),
                                            curve: Curves.ease,
                                          );
                                          await _model.columnFotoPerfil
                                              ?.animateTo(
                                            0,
                                            duration:
                                                Duration(milliseconds: 2000),
                                            curve: Curves.ease,
                                          );
                                        } else if (_model
                                                .pageViewCurrentIndex ==
                                            2) {
                                          _model.queryConsTemas =
                                              await TblAppTemasBlackgroundTable()
                                                  .queryRows(
                                            queryFn: (q) => q
                                                .eqOrNull(
                                                  'situacao',
                                                  true,
                                                )
                                                .containsOrNull(
                                                  'id_segmentos',
                                                  '{${_model.varIDSegmentoSelecionado}}',
                                                )
                                                .order('nome', ascending: true),
                                          );
                                          _model.varFotoLightModeTemaSelecionado =
                                              _model.queryConsTemas!
                                                  .where((e) =>
                                                      e.id ==
                                                      _model
                                                          .varIDTemaSelecionado)
                                                  .toList()
                                                  .firstOrNull!
                                                  .fotoLightMode!;
                                          _model.varFotoDarkModeTemaSelecionado =
                                              _model.queryConsTemas!
                                                  .where((e) =>
                                                      e.id ==
                                                      _model
                                                          .varIDTemaSelecionado)
                                                  .toList()
                                                  .firstOrNull!
                                                  .fotoDarkMod!;
                                          safeSetState(() {});
                                        } else if (_model
                                                .pageViewCurrentIndex ==
                                            5) {
                                          _model.acResultConsModServicos =
                                              await action_blocks
                                                  .acConsultarModelosServicos(
                                            context,
                                            paramIDSegmento:
                                                _model.varIDSegmentoSelecionado,
                                          );

                                          safeSetState(() {});
                                        } else if (_model
                                                .pageViewCurrentIndex ==
                                            6) {
                                          _model.queryConsServicosLib =
                                              await TblCadServicosTable()
                                                  .queryRows(
                                            queryFn: (q) => q
                                                .eqOrNull(
                                                  'id_estabelecimento',
                                                  FFAppState()
                                                      .VarIDEstabelecimentoLogado,
                                                )
                                                .eqOrNull(
                                                  'situacao',
                                                  true,
                                                )
                                                .order('nome', ascending: true),
                                          );
                                        } else {
                                          await _model.columnFotoPerfil
                                              ?.animateTo(
                                            _model.columnFotoPerfil!.position
                                                .maxScrollExtent,
                                            duration: Duration(milliseconds: 1),
                                            curve: Curves.ease,
                                          );
                                        }

                                        safeSetState(() {});
                                      },
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: SingleChildScrollView(
                                              controller:
                                                  _model.columnController1,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (kDebugMode ==
                                                            true) {
                                                          Navigator.pop(
                                                              context);
                                                        }
                                                      },
                                                      child: Text(
                                                        'Selecione seu segmento de atividade',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 18.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 20.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 24.0;
                                                                    } else {
                                                                      return 24.0;
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Builder(
                                                      builder: (context) {
                                                        final varSegmentos2 =
                                                            FFAppState()
                                                                .varTblSegmentos
                                                                .toList();

                                                        return MasonryGridView
                                                            .builder(
                                                          physics:
                                                              const NeverScrollableScrollPhysics(),
                                                          gridDelegate:
                                                              SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                            crossAxisCount: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 1
                                                                : 3,
                                                          ),
                                                          crossAxisSpacing:
                                                              10.0,
                                                          mainAxisSpacing: 10.0,
                                                          itemCount:
                                                              varSegmentos2
                                                                  .length,
                                                          shrinkWrap: true,
                                                          itemBuilder: (context,
                                                              varSegmentos2Index) {
                                                            final varSegmentos2Item =
                                                                varSegmentos2[
                                                                    varSegmentos2Index];
                                                            return InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                _model.varIDSegmentoSelecionado =
                                                                    varSegmentos2Item
                                                                        .id;
                                                                _model.varFotoPerfilSelecionada =
                                                                    '0';
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Container(
                                                                constraints:
                                                                    BoxConstraints(
                                                                  minHeight: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          FFAppState()
                                                                              .varTamanhoMinimoTelaMenuLateral
                                                                              .toDouble()
                                                                      ? 10.0
                                                                      : 250.0,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Flex(
                                                                        direction: (MediaQuery.sizeOf(context).width < FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()
                                                                                ? true
                                                                                : false)
                                                                            ? Axis.horizontal
                                                                            : Axis.vertical,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Visibility(
                                                                            visible:
                                                                                (_model.varIDSegmentoSelecionado == varSegmentos2Item.id) && (MediaQuery.sizeOf(context).width < FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.check_circle,
                                                                                color: FlutterFlowTheme.of(context).secondary,
                                                                                size: MediaQuery.sizeOf(context).width < 390.0 ? 18.0 : 24.0,
                                                                              ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation1']!),
                                                                            ),
                                                                          ),
                                                                          Visibility(
                                                                            visible:
                                                                                (_model.varIDSegmentoSelecionado != varSegmentos2Item.id) && (MediaQuery.sizeOf(context).width < FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.circle_outlined,
                                                                                color: FlutterFlowTheme.of(context).info,
                                                                                size: MediaQuery.sizeOf(context).width < 390.0 ? 18.0 : 24.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            constraints:
                                                                                BoxConstraints(
                                                                              maxWidth: 100.0,
                                                                            ),
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Container(
                                                                              width: () {
                                                                                if (MediaQuery.sizeOf(context).width < 390.0) {
                                                                                  return 30.0;
                                                                                } else if (MediaQuery.sizeOf(context).width < FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
                                                                                  return 50.0;
                                                                                } else {
                                                                                  return 100.0;
                                                                                }
                                                                              }(),
                                                                              height: () {
                                                                                if (MediaQuery.sizeOf(context).width < 390.0) {
                                                                                  return 30.0;
                                                                                } else if (MediaQuery.sizeOf(context).width < FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
                                                                                  return 50.0;
                                                                                } else {
                                                                                  return 100.0;
                                                                                }
                                                                              }(),
                                                                              clipBehavior: Clip.antiAlias,
                                                                              decoration: BoxDecoration(
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Image.network(
                                                                                valueOrDefault<String>(
                                                                                  varSegmentos2Item.foto,
                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                                                                ),
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Visibility(
                                                                            visible:
                                                                                MediaQuery.sizeOf(context).width < FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble(),
                                                                            child:
                                                                                Flexible(
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Flexible(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        varSegmentos2Item.nome,
                                                                                        textAlign: TextAlign.center,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.readexPro(
                                                                                                fontWeight: FontWeight.bold,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).info,
                                                                                              fontSize: () {
                                                                                                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                  return 12.0;
                                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                  return 14.0;
                                                                                                } else {
                                                                                                  return 16.0;
                                                                                                }
                                                                                              }(),
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Visibility(
                                                                            visible: (MediaQuery.sizeOf(context).width > FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) &&
                                                                                responsiveVisibility(
                                                                                  context: context,
                                                                                  phone: false,
                                                                                ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                children: [
                                                                                  Flexible(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          varSegmentos2Item.nome,
                                                                                          '...',
                                                                                        ),
                                                                                        textAlign: TextAlign.center,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.readexPro(
                                                                                                fontWeight: FontWeight.w600,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).info,
                                                                                              fontSize: () {
                                                                                                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                  return 12.0;
                                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                  return 14.0;
                                                                                                } else {
                                                                                                  return 14.0;
                                                                                                }
                                                                                              }(),
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      if (((_model.varIDSegmentoSelecionado == varSegmentos2Item.id) &&
                                                                              (MediaQuery.sizeOf(context).width > FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble())) &&
                                                                          responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                          ))
                                                                        Icon(
                                                                          Icons
                                                                              .check_circle,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          size:
                                                                              36.0,
                                                                        ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation2']!),
                                                                      if (((_model.varIDSegmentoSelecionado != varSegmentos2Item.id) &&
                                                                              (MediaQuery.sizeOf(context).width > FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble())) &&
                                                                          responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                          ))
                                                                        Icon(
                                                                          Icons
                                                                              .circle_outlined,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          size:
                                                                              36.0,
                                                                        ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            8.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          controller: _model
                                                              .staggeredViewController1,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Expanded(
                                                      child: Builder(
                                                        builder: (context) {
                                                          final varSegmentos3 =
                                                              FFAppState()
                                                                  .varTblSegmentos
                                                                  .toList();

                                                          return GridView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            gridDelegate:
                                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                              crossAxisCount:
                                                                  () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 1;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 3;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 5;
                                                                } else {
                                                                  return 5;
                                                                }
                                                              }(),
                                                              crossAxisSpacing:
                                                                  10.0,
                                                              mainAxisSpacing:
                                                                  10.0,
                                                              childAspectRatio:
                                                                  1.0,
                                                            ),
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                varSegmentos3
                                                                    .length,
                                                            itemBuilder: (context,
                                                                varSegmentos3Index) {
                                                              final varSegmentos3Item =
                                                                  varSegmentos3[
                                                                      varSegmentos3Index];
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  _model.varIDSegmentoSelecionado =
                                                                      varSegmentos3Item
                                                                          .id;
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child:
                                                                    Container(
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    minHeight: MediaQuery.sizeOf(context).width <
                                                                            FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()
                                                                        ? 50.0
                                                                        : 250.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            16.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children:
                                                                          [
                                                                        Container(
                                                                          width:
                                                                              100.0,
                                                                          height:
                                                                              100.0,
                                                                          clipBehavior:
                                                                              Clip.antiAlias,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              Image.network(
                                                                            valueOrDefault<String>(
                                                                              varSegmentos3Item.foto,
                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                                                            ),
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Text(
                                                                                varSegmentos3Item.nome,
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FontWeight.bold,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: FlutterFlowTheme.of(context).info,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        if (_model.varIDSegmentoSelecionado !=
                                                                            varSegmentos3Item
                                                                                .id)
                                                                          Icon(
                                                                            Icons.circle_outlined,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            size:
                                                                                36.0,
                                                                          ).animateOnPageLoad(
                                                                              animationsMap['iconOnPageLoadAnimation3']!),
                                                                        if (_model.varIDSegmentoSelecionado ==
                                                                            varSegmentos3Item
                                                                                .id)
                                                                          Icon(
                                                                            Icons.check_circle,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            size:
                                                                                36.0,
                                                                          ).animateOnPageLoad(
                                                                              animationsMap['iconOnPageLoadAnimation4']!),
                                                                      ].divide(SizedBox(
                                                                              height: 8.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            controller: _model
                                                                .gridViewController,
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Builder(
                                                      builder: (context) {
                                                        final varSegmentos =
                                                            FFAppState()
                                                                .varTblSegmentos
                                                                .toList();

                                                        return Flex(
                                                          direction: (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      1050.0
                                                                  ? false
                                                                  : true)
                                                              ? Axis.horizontal
                                                              : Axis.vertical,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: List.generate(
                                                              varSegmentos
                                                                  .length,
                                                              (varSegmentosIndex) {
                                                            final varSegmentosItem =
                                                                varSegmentos[
                                                                    varSegmentosIndex];
                                                            return Expanded(
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  _model.varIDSegmentoSelecionado =
                                                                      varSegmentosItem
                                                                          .id;
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child:
                                                                    Container(
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    minHeight: MediaQuery.sizeOf(context).width <
                                                                            FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()
                                                                        ? 50.0
                                                                        : 250.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            16.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children:
                                                                          [
                                                                        Container(
                                                                          width:
                                                                              100.0,
                                                                          height:
                                                                              100.0,
                                                                          clipBehavior:
                                                                              Clip.antiAlias,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              Image.network(
                                                                            valueOrDefault<String>(
                                                                              varSegmentosItem.foto,
                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                                                            ),
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Text(
                                                                                varSegmentosItem.nome,
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FontWeight.bold,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: FlutterFlowTheme.of(context).info,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        if (_model.varIDSegmentoSelecionado !=
                                                                            varSegmentosItem
                                                                                .id)
                                                                          Icon(
                                                                            Icons.circle_outlined,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            size:
                                                                                36.0,
                                                                          ).animateOnPageLoad(
                                                                              animationsMap['iconOnPageLoadAnimation5']!),
                                                                        if (_model.varIDSegmentoSelecionado ==
                                                                            varSegmentosItem
                                                                                .id)
                                                                          Icon(
                                                                            Icons.check_circle,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            size:
                                                                                36.0,
                                                                          ).animateOnPageLoad(
                                                                              animationsMap['iconOnPageLoadAnimation6']!),
                                                                      ].divide(SizedBox(
                                                                              height: 8.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }).divide((MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      1050.0
                                                                  ? false
                                                                  : true)
                                                              ? SizedBox(
                                                                  width: 8.0)
                                                              : SizedBox(
                                                                  height: 8.0)),
                                                        );
                                                      },
                                                    ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(16.0),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              int>(
                                                        controller: _model
                                                                .dropDownSegmentoValueController ??=
                                                            FormFieldController<
                                                                int>(
                                                          _model.dropDownSegmentoValue ??=
                                                              _model
                                                                  .queryConsEstabelecimento
                                                                  ?.firstOrNull
                                                                  ?.idSegmento,
                                                        ),
                                                        options: List<int>.from(
                                                            FFAppState()
                                                                .varTblSegmentos
                                                                .map(
                                                                    (e) => e.id)
                                                                .toList()),
                                                        optionLabels:
                                                            FFAppState()
                                                                .varTblSegmentos
                                                                .map((e) =>
                                                                    e.nome)
                                                                .toList(),
                                                        onChanged: (val) =>
                                                            safeSetState(() =>
                                                                _model.dropDownSegmentoValue =
                                                                    val),
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            'Selecione o segmento...',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        fillColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        isOverButton: true,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                        labelText: 'Segmento',
                                                        labelTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                ].divide(
                                                    SizedBox(height: 16.0)),
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation1']!),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: SingleChildScrollView(
                                            controller: _model.columnFotoPerfil,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Builder(
                                                      builder: (context) =>
                                                          Padding(
                                                        padding:
                                                            EdgeInsets.all(2.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            if ((_model.uploadedFileUrl1 !=
                                                                        '') ||
                                                                (_model.varFotoPerfilSelecionada !=
                                                                    '0')) {
                                                              await showDialog(
                                                                barrierColor: Color(
                                                                    0xD714181B),
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (dialogContext) {
                                                                  return Dialog(
                                                                    elevation:
                                                                        0,
                                                                    insetPadding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                    child:
                                                                        WebViewAware(
                                                                      child:
                                                                          CpFotoWidget(
                                                                        paramFoto: _model.uploadedFileUrl1 != ''
                                                                            ? _model.uploadedFileUrl1
                                                                            : _model.varFotoPerfilSelecionada,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        AlertDialog(
                                                                      title: Text(
                                                                          'Atenção!'),
                                                                      content: Text(
                                                                          'Adicione uma foto...'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          },
                                                          child: Container(
                                                            width: 200.0,
                                                            height: 200.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                () {
                                                                  if (_model.uploadedFileUrl1 !=
                                                                          '') {
                                                                    return _model
                                                                        .uploadedFileUrl1;
                                                                  } else if (_model
                                                                          .varFotoPerfilSelecionada !=
                                                                      '0') {
                                                                    return _model
                                                                        .varFotoPerfilSelecionada;
                                                                  } else if (FFAppState()
                                                                              .VarTblEstabelecimentoLogado
                                                                              .fotoPerfil !=
                                                                          '') {
                                                                    return FFAppState()
                                                                        .VarTblEstabelecimentoLogado
                                                                        .fotoPerfil;
                                                                  } else {
                                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg';
                                                                  }
                                                                }(),
                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                                              ),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.varUrlFotoTemp =
                                                          FFAppState()
                                                              .VarTblEstabelecimentoLogado
                                                              .fotoPerfil;
                                                      safeSetState(() {});
                                                      final selectedMedia =
                                                          await selectMedia(
                                                        storageFolderPath:
                                                            'estabelecimentos/perfis',
                                                        maxWidth: 500.00,
                                                        maxHeight: 500.00,
                                                        imageQuality: 90,
                                                        mediaSource: MediaSource
                                                            .photoGallery,
                                                        multiImage: false,
                                                      );
                                                      if (selectedMedia !=
                                                              null &&
                                                          selectedMedia.every((m) =>
                                                              validateFileFormat(
                                                                  m.storagePath,
                                                                  context))) {
                                                        safeSetState(() => _model
                                                                .isDataUploading1 =
                                                            true);
                                                        var selectedUploadedFiles =
                                                            <FFUploadedFile>[];

                                                        var downloadUrls =
                                                            <String>[];
                                                        try {
                                                          selectedUploadedFiles =
                                                              selectedMedia
                                                                  .map((m) =>
                                                                      FFUploadedFile(
                                                                        name: m
                                                                            .storagePath
                                                                            .split('/')
                                                                            .last,
                                                                        bytes: m
                                                                            .bytes,
                                                                        height: m
                                                                            .dimensions
                                                                            ?.height,
                                                                        width: m
                                                                            .dimensions
                                                                            ?.width,
                                                                        blurHash:
                                                                            m.blurHash,
                                                                      ))
                                                                  .toList();

                                                          downloadUrls =
                                                              await uploadSupabaseStorageFiles(
                                                            bucketName: 'fotos',
                                                            selectedFiles:
                                                                selectedMedia,
                                                          );
                                                        } finally {
                                                          _model.isDataUploading1 =
                                                              false;
                                                        }
                                                        if (selectedUploadedFiles
                                                                    .length ==
                                                                selectedMedia
                                                                    .length &&
                                                            downloadUrls
                                                                    .length ==
                                                                selectedMedia
                                                                    .length) {
                                                          safeSetState(() {
                                                            _model.uploadedLocalFile1 =
                                                                selectedUploadedFiles
                                                                    .first;
                                                            _model.uploadedFileUrl1 =
                                                                downloadUrls
                                                                    .first;
                                                          });
                                                        } else {
                                                          safeSetState(() {});
                                                          return;
                                                        }
                                                      }

                                                      if (_model.uploadedFileUrl1 !=
                                                              '') {
                                                        _model.varFotoPerfilSelecionada =
                                                            '0';
                                                        safeSetState(() {});
                                                      }
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(4.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Icon(
                                                              Icons.edit,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 20.0,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Adicionar foto de perfil',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final varModelosFotos =
                                                          _model.queryConsModelosFotos
                                                                  ?.map((e) =>
                                                                      e.foto)
                                                                  .withoutNulls
                                                                  .toList()
                                                                  .toList() ??
                                                              [];

                                                      return MasonryGridView
                                                          .builder(
                                                        physics:
                                                            const NeverScrollableScrollPhysics(),
                                                        gridDelegate:
                                                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 4;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 6;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 8;
                                                            } else {
                                                              return 8;
                                                            }
                                                          }(),
                                                        ),
                                                        crossAxisSpacing: 10.0,
                                                        mainAxisSpacing: 10.0,
                                                        itemCount:
                                                            varModelosFotos
                                                                .length,
                                                        shrinkWrap: true,
                                                        itemBuilder: (context,
                                                            varModelosFotosIndex) {
                                                          final varModelosFotosItem =
                                                              varModelosFotos[
                                                                  varModelosFotosIndex];
                                                          return Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: _model
                                                                          .varFotoPerfilSelecionada ==
                                                                      varModelosFotosItem
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary
                                                                  : Colors
                                                                      .transparent,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(4.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  safeSetState(
                                                                      () {
                                                                    _model.isDataUploading1 =
                                                                        false;
                                                                    _model.uploadedLocalFile1 =
                                                                        FFUploadedFile(
                                                                            bytes:
                                                                                Uint8List.fromList([]));
                                                                    _model.uploadedFileUrl1 =
                                                                        '';
                                                                  });

                                                                  _model.varFotoPerfilSelecionada =
                                                                      varModelosFotosItem;
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    fadeInDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                500),
                                                                    fadeOutDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                500),
                                                                    imageUrl:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      varModelosFotosItem,
                                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                                                    ),
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        controller: _model
                                                            .staggeredViewFotosPerfis,
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Container(
                                                  width: 100.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(),
                                                ),
                                              ].divide(SizedBox(height: 16.0)),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation2']!),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: SingleChildScrollView(
                                            controller: _model.column,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: Text(
                                                    'Escolha um tema',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .readexPro(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              fontSize: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 18.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 20.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 24.0;
                                                                } else {
                                                                  return 24.0;
                                                                }
                                                              }(),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 200.0,
                                                  height: 200.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        valueOrDefault<String>(
                                                          _model.queryConsTemas
                                                              ?.where((e) =>
                                                                  e.id ==
                                                                  _model
                                                                      .varIDTemaSelecionado)
                                                              .toList()
                                                              .firstOrNull
                                                              ?.fotoLightMode,
                                                          'SEM FOTO',
                                                        ),
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  4.0),
                                                      child: Text(
                                                        'Tema Selecionado',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final varTblTemas = _model
                                                              .queryConsTemas
                                                              ?.toList() ??
                                                          [];

                                                      return MasonryGridView
                                                          .builder(
                                                        physics:
                                                            const NeverScrollableScrollPhysics(),
                                                        gridDelegate:
                                                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 2;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                1100.0) {
                                                              return 4;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                1300.0) {
                                                              return 6;
                                                            } else {
                                                              return 6;
                                                            }
                                                          }(),
                                                        ),
                                                        crossAxisSpacing: 8.0,
                                                        mainAxisSpacing: 8.0,
                                                        itemCount:
                                                            varTblTemas.length,
                                                        shrinkWrap: true,
                                                        itemBuilder: (context,
                                                            varTblTemasIndex) {
                                                          final varTblTemasItem =
                                                              varTblTemas[
                                                                  varTblTemasIndex];
                                                          return Container(
                                                            height: 150.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image: Image
                                                                    .network(
                                                                  varTblTemasItem
                                                                      .fotoLightMode!,
                                                                ).image,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: _model
                                                                            .varIDTemaSelecionado ==
                                                                        varTblTemasItem
                                                                            .id
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                width: _model
                                                                            .varIDTemaSelecionado ==
                                                                        varTblTemasItem
                                                                            .id
                                                                    ? 4.0
                                                                    : 1.0,
                                                              ),
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                _model.varIDTemaSelecionado =
                                                                    varTblTemasItem
                                                                        .id;
                                                                _model.varFotoLightModeTemaSelecionado =
                                                                    varTblTemasItem
                                                                        .fotoLightMode!;
                                                                _model.varFotoDarkModeTemaSelecionado =
                                                                    varTblTemasItem
                                                                        .fotoDarkMod!;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        if (_model.varIDTemaSelecionado ==
                                                                            varTblTemasItem.id)
                                                                          Icon(
                                                                            Icons.check_circle_outline,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).success,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        if (_model.varIDTemaSelecionado !=
                                                                            varTblTemasItem.id)
                                                                          Icon(
                                                                            Icons.radio_button_off,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        Flexible(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                4.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                varTblTemasItem.nome,
                                                                                '...',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: _model.varIDTemaSelecionado == varTblTemasItem.id ? FlutterFlowTheme.of(context).success : FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 12.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        controller: _model
                                                            .staggeredViewController2,
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Container(
                                                  width: 100.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(),
                                                ),
                                              ].divide(SizedBox(height: 16.0)),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation3']!),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: SingleChildScrollView(
                                              controller:
                                                  _model.columnFormPagComodEnd,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Flexible(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            if (kDebugMode ==
                                                                true) {
                                                              Navigator.pop(
                                                                  context);
                                                            }
                                                          },
                                                          child: Text(
                                                            'Informações adicionais',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 18.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 20.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 24.0;
                                                                    } else {
                                                                      return 24.0;
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            if (kDebugMode ==
                                                                true) {
                                                              Navigator.pop(
                                                                  context);
                                                            }
                                                          },
                                                          child: Text(
                                                            'Formas de Pagamento, Comodidades e Endereço',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? 12.0
                                                                      : 14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0x96E0E3E7),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(4.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                            tablet: false,
                                                            tabletLandscape:
                                                                false,
                                                            desktop: false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .payments_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    size: 28.0,
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Forma de pagamento',
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 24.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          8.0,
                                                                          2.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if (FFAppState()
                                                                          .VarTblEstabelecimentoLogado
                                                                          .formasPagamento
                                                                          .where((e) =>
                                                                              e ==
                                                                              'PIX')
                                                                          .toList()
                                                                          .length ==
                                                                      0) {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateFormasPagamento(
                                                                          (e) =>
                                                                              e.add('PIX'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateFormasPagamento(
                                                                          (e) =>
                                                                              e.remove('PIX'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .formasPagamento
                                                                            .where((e) =>
                                                                                e ==
                                                                                'PIX')
                                                                            .toList()
                                                                            .length >
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .formasPagamento
                                                                            .where((e) =>
                                                                                e ==
                                                                                'PIX')
                                                                            .toList()
                                                                            .length ==
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outline_blank,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .pix,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'PIX',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          8.0,
                                                                          2.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if (FFAppState()
                                                                          .VarTblEstabelecimentoLogado
                                                                          .formasPagamento
                                                                          .where((e) =>
                                                                              e ==
                                                                              'DINHEIRO')
                                                                          .toList()
                                                                          .length ==
                                                                      0) {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateFormasPagamento(
                                                                          (e) =>
                                                                              e.add('DINHEIRO'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateFormasPagamento(
                                                                          (e) =>
                                                                              e.remove('DINHEIRO'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .formasPagamento
                                                                            .where((e) =>
                                                                                e ==
                                                                                'DINHEIRO')
                                                                            .toList()
                                                                            .length >
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .formasPagamento
                                                                            .where((e) =>
                                                                                e ==
                                                                                'DINHEIRO')
                                                                            .toList()
                                                                            .length ==
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outline_blank,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .payments_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Dinheiro',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          8.0,
                                                                          2.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if (FFAppState()
                                                                          .VarTblEstabelecimentoLogado
                                                                          .formasPagamento
                                                                          .where((e) =>
                                                                              e ==
                                                                              'CARTÃO DÉBITO')
                                                                          .toList()
                                                                          .length ==
                                                                      0) {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateFormasPagamento(
                                                                          (e) =>
                                                                              e.add('CARTÃO DÉBITO'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateFormasPagamento(
                                                                          (e) =>
                                                                              e.remove('CARTÃO DÉBITO'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .formasPagamento
                                                                            .where((e) =>
                                                                                e ==
                                                                                'CARTÃO DÉBITO')
                                                                            .toList()
                                                                            .length >
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .formasPagamento
                                                                            .where((e) =>
                                                                                e ==
                                                                                'CARTÃO DÉBITO')
                                                                            .toList()
                                                                            .length ==
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outline_blank,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .payment_sharp,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Cartão de Débito',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          8.0,
                                                                          2.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if (FFAppState()
                                                                          .VarTblEstabelecimentoLogado
                                                                          .formasPagamento
                                                                          .where((e) =>
                                                                              e ==
                                                                              'CARTÃO CRÉDITO')
                                                                          .toList()
                                                                          .length ==
                                                                      0) {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateFormasPagamento(
                                                                          (e) =>
                                                                              e.add('CARTÃO CRÉDITO'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateFormasPagamento(
                                                                          (e) =>
                                                                              e.remove('CARTÃO CRÉDITO'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .formasPagamento
                                                                            .where((e) =>
                                                                                e ==
                                                                                'CARTÃO CRÉDITO')
                                                                            .toList()
                                                                            .length >
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .formasPagamento
                                                                            .where((e) =>
                                                                                e ==
                                                                                'CARTÃO CRÉDITO')
                                                                            .toList()
                                                                            .length ==
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outline_blank,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .payment_sharp,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Cartão de Crédito',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'columnOnPageLoadAnimation1']!),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0x96E0E3E7),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(4.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                            tablet: false,
                                                            tabletLandscape:
                                                                false,
                                                            desktop: false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .auto_awesome_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    size: 28.0,
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Comodidades',
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 24.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          8.0,
                                                                          2.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if (FFAppState()
                                                                          .VarTblEstabelecimentoLogado
                                                                          .comodidades
                                                                          .where((e) =>
                                                                              e ==
                                                                              'WIFI')
                                                                          .toList()
                                                                          .length ==
                                                                      0) {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateComodidades(
                                                                          (e) =>
                                                                              e.add('WIFI'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateComodidades(
                                                                          (e) =>
                                                                              e.remove('WIFI'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .comodidades
                                                                            .where((e) =>
                                                                                e ==
                                                                                'WIFI')
                                                                            .toList()
                                                                            .length >
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .comodidades
                                                                            .where((e) =>
                                                                                e ==
                                                                                'WIFI')
                                                                            .toList()
                                                                            .length ==
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outline_blank,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .wifi,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'WIFI',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          8.0,
                                                                          2.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if (FFAppState()
                                                                          .VarTblEstabelecimentoLogado
                                                                          .comodidades
                                                                          .where((e) =>
                                                                              e ==
                                                                              'TV')
                                                                          .toList()
                                                                          .length ==
                                                                      0) {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateComodidades(
                                                                          (e) =>
                                                                              e.add('TV'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateComodidades(
                                                                          (e) =>
                                                                              e.remove('TV'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .comodidades
                                                                            .where((e) =>
                                                                                e ==
                                                                                'TV')
                                                                            .toList()
                                                                            .length >
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .comodidades
                                                                            .where((e) =>
                                                                                e ==
                                                                                'TV')
                                                                            .toList()
                                                                            .length ==
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outline_blank,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .tv,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'TV',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          8.0,
                                                                          2.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if (FFAppState()
                                                                          .VarTblEstabelecimentoLogado
                                                                          .comodidades
                                                                          .where((e) =>
                                                                              e ==
                                                                              'AMBIENTE CLIMATIZADO')
                                                                          .toList()
                                                                          .length ==
                                                                      0) {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateComodidades(
                                                                          (e) =>
                                                                              e.add('AMBIENTE CLIMATIZADO'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateComodidades(
                                                                          (e) =>
                                                                              e.remove('AMBIENTE CLIMATIZADO'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .comodidades
                                                                            .where((e) =>
                                                                                e ==
                                                                                'AMBIENTE CLIMATIZADO')
                                                                            .toList()
                                                                            .length >
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .comodidades
                                                                            .where((e) =>
                                                                                e ==
                                                                                'AMBIENTE CLIMATIZADO')
                                                                            .toList()
                                                                            .length ==
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outline_blank,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .severe_cold,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Ambiente Climatizado',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          8.0,
                                                                          2.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if (FFAppState()
                                                                          .VarTblEstabelecimentoLogado
                                                                          .comodidades
                                                                          .where((e) =>
                                                                              e ==
                                                                              'JOGOS')
                                                                          .toList()
                                                                          .length ==
                                                                      0) {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateComodidades(
                                                                          (e) =>
                                                                              e.add('JOGOS'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateComodidades(
                                                                          (e) =>
                                                                              e.remove('JOGOS'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .comodidades
                                                                            .where((e) =>
                                                                                e ==
                                                                                'JOGOS')
                                                                            .toList()
                                                                            .length >
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .comodidades
                                                                            .where((e) =>
                                                                                e ==
                                                                                'JOGOS')
                                                                            .toList()
                                                                            .length ==
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outline_blank,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .videogame_asset,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Espaço para Jogos',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          8.0,
                                                                          2.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if (FFAppState()
                                                                          .VarTblEstabelecimentoLogado
                                                                          .comodidades
                                                                          .where((e) =>
                                                                              e ==
                                                                              'ALIMENTAÇÃO')
                                                                          .toList()
                                                                          .length ==
                                                                      0) {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateComodidades(
                                                                          (e) =>
                                                                              e.add('ALIMENTAÇÃO'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateComodidades(
                                                                          (e) =>
                                                                              e.remove('ALIMENTAÇÃO'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .comodidades
                                                                            .where((e) =>
                                                                                e ==
                                                                                'ALIMENTAÇÃO')
                                                                            .toList()
                                                                            .length >
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .comodidades
                                                                            .where((e) =>
                                                                                e ==
                                                                                'ALIMENTAÇÃO')
                                                                            .toList()
                                                                            .length ==
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outline_blank,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .fastfood_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Espaço para Alimentação',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          8.0,
                                                                          2.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if (FFAppState()
                                                                          .VarTblEstabelecimentoLogado
                                                                          .comodidades
                                                                          .where((e) =>
                                                                              e ==
                                                                              'ESTACIONAMENTO')
                                                                          .toList()
                                                                          .length ==
                                                                      0) {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateComodidades(
                                                                          (e) =>
                                                                              e.add('ESTACIONAMENTO'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    FFAppState()
                                                                        .updateVarTblEstabelecimentoLogadoStruct(
                                                                      (e) => e
                                                                        ..updateComodidades(
                                                                          (e) =>
                                                                              e.remove('ESTACIONAMENTO'),
                                                                        ),
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .comodidades
                                                                            .where((e) =>
                                                                                e ==
                                                                                'ESTACIONAMENTO')
                                                                            .toList()
                                                                            .length >
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    if (FFAppState()
                                                                            .VarTblEstabelecimentoLogado
                                                                            .comodidades
                                                                            .where((e) =>
                                                                                e ==
                                                                                'ESTACIONAMENTO')
                                                                            .toList()
                                                                            .length ==
                                                                        0)
                                                                      Icon(
                                                                        Icons
                                                                            .check_box_outline_blank,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .directions_car,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Estacionamento',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'columnOnPageLoadAnimation2']!),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                        tabletLandscape: false,
                                                        desktop: false,
                                                      ))
                                                        Text(
                                                          'Endereço',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                fontSize: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 18.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 20.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 24.0;
                                                                  } else {
                                                                    return 24.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      Container(
                                                        height: 35.0,
                                                        constraints:
                                                            BoxConstraints(
                                                          maxWidth: 500.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Theme.of(context)
                                                                      .brightness ==
                                                                  Brightness
                                                                      .dark
                                                              ? Colors
                                                                  .transparent
                                                              : Color(
                                                                  0x2714181B),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE0E3E7),
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  4.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.varInformarEndereco =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: _model
                                                                              .varInformarEndereco
                                                                          ? Color(
                                                                              0xA7695AF2)
                                                                          : Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: _model.varInformarEndereco
                                                                            ? Color(0x80E0E3E7)
                                                                            : Colors.transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.location_pin,
                                                                            color: _model.varInformarEndereco
                                                                                ? FlutterFlowTheme.of(context).info
                                                                                : Color(0xD8FFFFFF),
                                                                            size: MediaQuery.sizeOf(context).width < 430.0
                                                                                ? 16.0
                                                                                : 18.0,
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                MediaQuery.sizeOf(context).width < kBreakpointSmall ? 'Informar endereço' : 'Informar endereço agora',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.outfit(
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: _model.varInformarEndereco ? FlutterFlowTheme.of(context).info : Color(0xD8FFFFFF),
                                                                                      fontSize: MediaQuery.sizeOf(context).width < 430.0 ? 12.0 : 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.varInformarEndereco =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        115.0,
                                                                    height:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: !_model
                                                                              .varInformarEndereco
                                                                          ? Color(
                                                                              0xA7695AF2)
                                                                          : Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: !_model.varInformarEndereco
                                                                            ? Color(0x80E0E3E7)
                                                                            : Colors.transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.location_off,
                                                                            color: !_model.varInformarEndereco
                                                                                ? FlutterFlowTheme.of(context).info
                                                                                : Color(0xD8FFFFFF),
                                                                            size: MediaQuery.sizeOf(context).width < 430.0
                                                                                ? 16.0
                                                                                : 18.0,
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                MediaQuery.sizeOf(context).width < kBreakpointSmall ? 'Informar depois' : 'Informar endereço depois',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.outfit(
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: !_model.varInformarEndereco ? FlutterFlowTheme.of(context).info : Color(0xD8FFFFFF),
                                                                                      fontSize: MediaQuery.sizeOf(context).width < 430.0 ? 12.0 : 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnActionTrigger(
                                                                  animationsMap[
                                                                      'containerOnActionTriggerAnimation']!,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      if (_model
                                                          .varInformarEndereco)
                                                        Padding(
                                                          padding: EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context).width <
                                                                            FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()
                                                                        ? 0.0
                                                                        : 16.0,
                                                                    0.0,
                                                                  ),
                                                                  0.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context).width <
                                                                            FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()
                                                                        ? 0.0
                                                                        : 16.0,
                                                                    0.0,
                                                                  ),
                                                                  0.0),
                                                          child: Container(
                                                            constraints:
                                                                BoxConstraints(
                                                              maxHeight: 1000.0,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Form(
                                                              key: _model
                                                                  .formKey1,
                                                              autovalidateMode:
                                                                  AutovalidateMode
                                                                      .disabled,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Flexible(
                                                                      child:
                                                                          Flex(
                                                                        direction: (MediaQuery.sizeOf(context).width < kBreakpointSmall
                                                                                ? false
                                                                                : true)
                                                                            ? Axis.horizontal
                                                                            : Axis.vertical,
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Flexible(
                                                                            flex:
                                                                                1,
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Flexible(
                                                                                  flex: 1,
                                                                                  child: Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.textFieldCEPTextController,
                                                                                      focusNode: _model.textFieldCEPFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.textFieldCEPTextController',
                                                                                        Duration(milliseconds: 100),
                                                                                        () async {
                                                                                          var _shouldSetState = false;
                                                                                          if (_model.textFieldCEPTextController.text == '') {
                                                                                            _model.varCEPInvalido = true;
                                                                                            safeSetState(() {});
                                                                                            safeSetState(() {
                                                                                              _model.textFieldRuaTextController?.text = FFAppState().VarTblEstabelecimentoLogado.rua;

                                                                                              _model.textFieldNumeroTextController?.text = FFAppState().VarTblEstabelecimentoLogado.numero;

                                                                                              _model.textFieldComplementoTextController?.text = FFAppState().VarTblEstabelecimentoLogado.complemento;

                                                                                              _model.textFieldCidadeTextController?.text = FFAppState().VarTblEstabelecimentoLogado.cidade;

                                                                                              _model.textFieldBairroTextController?.text = FFAppState().VarTblEstabelecimentoLogado.bairro;

                                                                                              _model.textFieldEstadoTextController?.clear();
                                                                                            });
                                                                                            safeSetState(() {
                                                                                              _model.dropDownEstadoValueController?.value = '0';
                                                                                            });
                                                                                            if (_shouldSetState) safeSetState(() {});
                                                                                            return;
                                                                                          } else {
                                                                                            _model.varCEPInvalido = true;
                                                                                            safeSetState(() {});
                                                                                          }

                                                                                          if (functions.fcCountCaracteres(_model.textFieldCEPTextController.text).toString() != '9') {
                                                                                            _model.varCEPInvalido = true;
                                                                                            safeSetState(() {});
                                                                                            if (_shouldSetState) safeSetState(() {});
                                                                                            return;
                                                                                          }
                                                                                          _model.apiResulViaCep = await ViaCepCall.call(
                                                                                            cep: _model.textFieldCEPTextController.text,
                                                                                          );

                                                                                          _shouldSetState = true;
                                                                                          if ((_model.apiResulViaCep?.succeeded ?? true)) {
                                                                                            if (ViaCepCall.erro(
                                                                                                  (_model.apiResulViaCep?.jsonBody ?? ''),
                                                                                                ) ==
                                                                                                'true') {
                                                                                              _model.varCEPInvalido = true;
                                                                                              safeSetState(() {});
                                                                                              safeSetState(() {
                                                                                                _model.textFieldCidadeTextController?.text = FFAppState().VarTblEstabelecimentoLogado.cidade;

                                                                                                _model.textFieldBairroTextController?.text = FFAppState().VarTblEstabelecimentoLogado.bairro;

                                                                                                _model.textFieldComplementoTextController?.text = FFAppState().VarTblEstabelecimentoLogado.complemento;

                                                                                                _model.textFieldNumeroTextController?.text = FFAppState().VarTblEstabelecimentoLogado.numero;

                                                                                                _model.textFieldRuaTextController?.text = FFAppState().VarTblEstabelecimentoLogado.rua;

                                                                                                _model.textFieldEstadoTextController?.clear();
                                                                                              });
                                                                                              safeSetState(() {
                                                                                                _model.dropDownEstadoValueController?.value = '0';
                                                                                              });
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return WebViewAware(
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: CpDialogSnackBarWidget(
                                                                                                        paramMensagem: 'CEP inválido',
                                                                                                        paramCorTexto: FlutterFlowTheme.of(context).info,
                                                                                                        paramCorFundo: FlutterFlowTheme.of(context).error,
                                                                                                        paramTempoMsFechar: 1000,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));

                                                                                              if (_shouldSetState) safeSetState(() {});
                                                                                              return;
                                                                                            } else {
                                                                                              _model.varCEPInvalido = false;
                                                                                              safeSetState(() {});
                                                                                            }

                                                                                            if (ViaCepCall.logradouro(
                                                                                                      (_model.apiResulViaCep?.jsonBody ?? ''),
                                                                                                    ) !=
                                                                                                    null &&
                                                                                                ViaCepCall.logradouro(
                                                                                                      (_model.apiResulViaCep?.jsonBody ?? ''),
                                                                                                    ) !=
                                                                                                    '') {
                                                                                              safeSetState(() {
                                                                                                _model.textFieldRuaTextController?.text = ViaCepCall.logradouro(
                                                                                                  (_model.apiResulViaCep?.jsonBody ?? ''),
                                                                                                )!;
                                                                                              });
                                                                                            }
                                                                                            if (ViaCepCall.bairro(
                                                                                                      (_model.apiResulViaCep?.jsonBody ?? ''),
                                                                                                    ) !=
                                                                                                    null &&
                                                                                                ViaCepCall.bairro(
                                                                                                      (_model.apiResulViaCep?.jsonBody ?? ''),
                                                                                                    ) !=
                                                                                                    '') {
                                                                                              safeSetState(() {
                                                                                                _model.textFieldBairroTextController?.text = ViaCepCall.bairro(
                                                                                                  (_model.apiResulViaCep?.jsonBody ?? ''),
                                                                                                )!;
                                                                                              });
                                                                                            }
                                                                                            safeSetState(() {
                                                                                              _model.textFieldCidadeTextController?.text = ViaCepCall.localidade(
                                                                                                (_model.apiResulViaCep?.jsonBody ?? ''),
                                                                                              )!;
                                                                                            });
                                                                                            safeSetState(() {
                                                                                              _model.dropDownEstadoValueController?.value = ViaCepCall.uf(
                                                                                                (_model.apiResulViaCep?.jsonBody ?? ''),
                                                                                              )!;
                                                                                            });
                                                                                            safeSetState(() {
                                                                                              _model.textFieldEstadoTextController?.text = ViaCepCall.estado(
                                                                                                (_model.apiResulViaCep?.jsonBody ?? ''),
                                                                                              )!;
                                                                                            });
                                                                                            _model.varCEPInvalido = false;
                                                                                            safeSetState(() {});
                                                                                          } else {
                                                                                            safeSetState(() {
                                                                                              _model.textFieldCidadeTextController?.text = FFAppState().VarTblEstabelecimentoLogado.cidade;

                                                                                              _model.textFieldBairroTextController?.text = FFAppState().VarTblEstabelecimentoLogado.bairro;

                                                                                              _model.textFieldComplementoTextController?.text = FFAppState().VarTblEstabelecimentoLogado.complemento;

                                                                                              _model.textFieldNumeroTextController?.text = FFAppState().VarTblEstabelecimentoLogado.numero;

                                                                                              _model.textFieldRuaTextController?.text = FFAppState().VarTblEstabelecimentoLogado.rua;

                                                                                              _model.textFieldEstadoTextController?.clear();
                                                                                            });
                                                                                            safeSetState(() {
                                                                                              _model.dropDownEstadoValueController?.value = '0';
                                                                                            });
                                                                                          }

                                                                                          if (_shouldSetState) safeSetState(() {});
                                                                                        },
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      autofillHints: [
                                                                                        AutofillHints.postalCode
                                                                                      ],
                                                                                      textInputAction: TextInputAction.next,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        isDense: true,
                                                                                        labelText: 'CEP',
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              font: GoogleFonts.readexPro(
                                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                            ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              font: GoogleFonts.readexPro(
                                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                            ),
                                                                                        errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.readexPro(
                                                                                                fontWeight: FontWeight.bold,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).warning,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                        enabledBorder: UnderlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: Color(0x00000000),
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedBorder: UnderlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: Color(0xFF0882F1),
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        errorBorder: UnderlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).warning,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedErrorBorder: UnderlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).warning,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        filled: true,
                                                                                        fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        hoverColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        prefixIcon: Icon(
                                                                                          Icons.store_outlined,
                                                                                        ),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            font: GoogleFonts.readexPro(
                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                      keyboardType: TextInputType.number,
                                                                                      cursorColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                      validator: _model.textFieldCEPTextControllerValidator.asValidator(context),
                                                                                      inputFormatters: [
                                                                                        _model.textFieldCEPMask
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            flex:
                                                                                1,
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Flexible(
                                                                                  flex: 2,
                                                                                  child: Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.textFieldRuaTextController,
                                                                                      focusNode: _model.textFieldRuaFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.textFieldRuaTextController',
                                                                                        Duration(milliseconds: 100),
                                                                                        () async {
                                                                                          if (!_model.resultValidarEndereco!) {
                                                                                            if (_model.formKey1.currentState != null) {
                                                                                              _model.formKey1.currentState!.validate();
                                                                                            }
                                                                                          }
                                                                                        },
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      autofillHints: [
                                                                                        AutofillHints.streetAddressLine1
                                                                                      ],
                                                                                      textCapitalization: TextCapitalization.words,
                                                                                      textInputAction: TextInputAction.next,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        isDense: true,
                                                                                        labelText: 'Rua',
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              font: GoogleFonts.readexPro(
                                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                            ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              font: GoogleFonts.readexPro(
                                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                            ),
                                                                                        errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.readexPro(
                                                                                                fontWeight: FontWeight.bold,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).warning,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                        enabledBorder: UnderlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: Color(0x00000000),
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedBorder: UnderlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: Color(0xFF0882F1),
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        errorBorder: UnderlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).warning,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedErrorBorder: UnderlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).warning,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        filled: true,
                                                                                        fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        hoverColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        prefixIcon: Icon(
                                                                                          Icons.store_outlined,
                                                                                        ),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            font: GoogleFonts.readexPro(
                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                      maxLength: 100,
                                                                                      buildCounter: (context, {required currentLength, required isFocused, maxLength}) => null,
                                                                                      keyboardType: TextInputType.streetAddress,
                                                                                      cursorColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                      validator: _model.textFieldRuaTextControllerValidator.asValidator(context),
                                                                                      inputFormatters: [
                                                                                        if (!isAndroid && !isiOS)
                                                                                          TextInputFormatter.withFunction((oldValue, newValue) {
                                                                                            return TextEditingValue(
                                                                                              selection: newValue.selection,
                                                                                              text: newValue.text.toCapitalization(TextCapitalization.words),
                                                                                            );
                                                                                          }),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ].divide((MediaQuery.sizeOf(context).width < kBreakpointSmall ? false : true)
                                                                                ? SizedBox(width: 8.0)
                                                                                : SizedBox(height: 8.0)),
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Flexible(
                                                                          flex:
                                                                              1,
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                _model.textFieldNumeroTextController,
                                                                            focusNode:
                                                                                _model.textFieldNumeroFocusNode,
                                                                            onChanged: (_) =>
                                                                                EasyDebounce.debounce(
                                                                              '_model.textFieldNumeroTextController',
                                                                              Duration(milliseconds: 100),
                                                                              () async {
                                                                                if (!_model.resultValidarEndereco!) {
                                                                                  if (_model.formKey1.currentState != null) {
                                                                                    _model.formKey1.currentState!.validate();
                                                                                  }
                                                                                }
                                                                              },
                                                                            ),
                                                                            autofocus:
                                                                                false,
                                                                            autofillHints: [
                                                                              AutofillHints.streetAddressLine2
                                                                            ],
                                                                            textInputAction:
                                                                                TextInputAction.next,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              isDense: true,
                                                                              labelText: 'Número',
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                  ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                  ),
                                                                              errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FontWeight.bold,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).warning,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                              enabledBorder: UnderlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: Color(0x00000000),
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              focusedBorder: UnderlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: Color(0xFF0882F1),
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              errorBorder: UnderlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).warning,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              focusedErrorBorder: UnderlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).warning,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              filled: true,
                                                                              fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                              hoverColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              prefixIcon: Icon(
                                                                                Icons.store_outlined,
                                                                              ),
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                            maxLength:
                                                                                15,
                                                                            buildCounter: (context, {required currentLength, required isFocused, maxLength}) =>
                                                                                null,
                                                                            keyboardType:
                                                                                TextInputType.number,
                                                                            cursorColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            validator:
                                                                                _model.textFieldNumeroTextControllerValidator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              1,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                120.0,
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.textFieldComplementoTextController,
                                                                              focusNode: _model.textFieldComplementoFocusNode,
                                                                              autofocus: false,
                                                                              autofillHints: [
                                                                                AutofillHints.streetAddressLine2
                                                                              ],
                                                                              textCapitalization: TextCapitalization.words,
                                                                              textInputAction: TextInputAction.next,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                isDense: true,
                                                                                labelText: 'Complemento',
                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                      ),
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                    ),
                                                                                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                      ),
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                    ),
                                                                                errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FontWeight.bold,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: FlutterFlowTheme.of(context).warning,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                enabledBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0x00000000),
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0xFF0882F1),
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).warning,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).warning,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                filled: true,
                                                                                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                hoverColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                prefixIcon: Icon(
                                                                                  Icons.store_outlined,
                                                                                ),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                              maxLength: 20,
                                                                              buildCounter: (context, {required currentLength, required isFocused, maxLength}) => null,
                                                                              keyboardType: TextInputType.name,
                                                                              cursorColor: FlutterFlowTheme.of(context).secondaryText,
                                                                              validator: _model.textFieldComplementoTextControllerValidator.asValidator(context),
                                                                              inputFormatters: [
                                                                                if (!isAndroid && !isiOS)
                                                                                  TextInputFormatter.withFunction((oldValue, newValue) {
                                                                                    return TextEditingValue(
                                                                                      selection: newValue.selection,
                                                                                      text: newValue.text.toCapitalization(TextCapitalization.words),
                                                                                    );
                                                                                  }),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 8.0)),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Flex(
                                                                        direction: (MediaQuery.sizeOf(context).width < kBreakpointSmall
                                                                                ? false
                                                                                : true)
                                                                            ? Axis.horizontal
                                                                            : Axis.vertical,
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Flexible(
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              child: TextFormField(
                                                                                controller: _model.textFieldCidadeTextController,
                                                                                focusNode: _model.textFieldCidadeFocusNode,
                                                                                autofocus: false,
                                                                                textCapitalization: TextCapitalization.words,
                                                                                textInputAction: TextInputAction.next,
                                                                                readOnly: true,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  isDense: true,
                                                                                  labelText: 'Cidade',
                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                        ),
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                      ),
                                                                                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                        ),
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                      ),
                                                                                  errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FontWeight.bold,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: FlutterFlowTheme.of(context).warning,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                  enabledBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFF0882F1),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  errorBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).warning,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedErrorBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).warning,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  filled: true,
                                                                                  fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  hoverColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  prefixIcon: Icon(
                                                                                    Icons.store_outlined,
                                                                                  ),
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                keyboardType: TextInputType.streetAddress,
                                                                                cursorColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                validator: _model.textFieldCidadeTextControllerValidator.asValidator(context),
                                                                                inputFormatters: [
                                                                                  if (!isAndroid && !isiOS)
                                                                                    TextInputFormatter.withFunction((oldValue, newValue) {
                                                                                      return TextEditingValue(
                                                                                        selection: newValue.selection,
                                                                                        text: newValue.text.toCapitalization(TextCapitalization.words),
                                                                                      );
                                                                                    }),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              child: TextFormField(
                                                                                controller: _model.textFieldBairroTextController,
                                                                                focusNode: _model.textFieldBairroFocusNode,
                                                                                onChanged: (_) => EasyDebounce.debounce(
                                                                                  '_model.textFieldBairroTextController',
                                                                                  Duration(milliseconds: 100),
                                                                                  () async {
                                                                                    if (!_model.resultValidarEndereco!) {
                                                                                      if (_model.formKey1.currentState != null) {
                                                                                        _model.formKey1.currentState!.validate();
                                                                                      }
                                                                                    }
                                                                                  },
                                                                                ),
                                                                                autofocus: false,
                                                                                textCapitalization: TextCapitalization.words,
                                                                                textInputAction: TextInputAction.next,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  isDense: true,
                                                                                  labelText: 'Bairro',
                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                        ),
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                      ),
                                                                                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                        ),
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                      ),
                                                                                  errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FontWeight.bold,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: FlutterFlowTheme.of(context).warning,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                  enabledBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFF0882F1),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  errorBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).warning,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedErrorBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).warning,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  filled: true,
                                                                                  fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  hoverColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  prefixIcon: Icon(
                                                                                    Icons.store_outlined,
                                                                                  ),
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                maxLength: 30,
                                                                                buildCounter: (context, {required currentLength, required isFocused, maxLength}) => null,
                                                                                keyboardType: TextInputType.streetAddress,
                                                                                cursorColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                validator: _model.textFieldBairroTextControllerValidator.asValidator(context),
                                                                                inputFormatters: [
                                                                                  if (!isAndroid && !isiOS)
                                                                                    TextInputFormatter.withFunction((oldValue, newValue) {
                                                                                      return TextEditingValue(
                                                                                        selection: newValue.selection,
                                                                                        text: newValue.text.toCapitalization(TextCapitalization.words),
                                                                                      );
                                                                                    }),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ].divide((MediaQuery.sizeOf(context).width < kBreakpointSmall ? false : true)
                                                                                ? SizedBox(width: 8.0)
                                                                                : SizedBox(height: 8.0)),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            1.0,
                                                                        child:
                                                                            TextFormField(
                                                                          controller:
                                                                              _model.textFieldEstadoTextController,
                                                                          focusNode:
                                                                              _model.textFieldEstadoFocusNode,
                                                                          autofocus:
                                                                              false,
                                                                          textInputAction:
                                                                              TextInputAction.go,
                                                                          readOnly:
                                                                              true,
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            isDense:
                                                                                true,
                                                                            labelText:
                                                                                'Estado',
                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                ),
                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                ),
                                                                            errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FontWeight.bold,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).warning,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                            enabledBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0xFF0882F1),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            errorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).warning,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).warning,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            filled:
                                                                                true,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            hoverColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            prefixIcon:
                                                                                Icon(
                                                                              Icons.store_outlined,
                                                                            ),
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.readexPro(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                          keyboardType:
                                                                              TextInputType.streetAddress,
                                                                          cursorColor:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          validator: _model
                                                                              .textFieldEstadoTextControllerValidator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                      tabletLandscape:
                                                                          false,
                                                                      desktop:
                                                                          false,
                                                                    ))
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                FutureBuilder<List<ViewTblEstadosRow>>(
                                                                              future: ViewTblEstadosTable().queryRows(
                                                                                queryFn: (q) => q.order('nome', ascending: true),
                                                                              ),
                                                                              builder: (context, snapshot) {
                                                                                // Customize what your widget looks like when it's loading.
                                                                                if (!snapshot.hasData) {
                                                                                  return Center(
                                                                                    child: SizedBox(
                                                                                      width: 50.0,
                                                                                      height: 50.0,
                                                                                      child: CircularProgressIndicator(
                                                                                        valueColor: AlwaysStoppedAnimation<Color>(
                                                                                          FlutterFlowTheme.of(context).primary,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                }
                                                                                List<ViewTblEstadosRow> dropDownEstadoViewTblEstadosRowList = snapshot.data!;

                                                                                return FlutterFlowDropDown<String>(
                                                                                  controller: _model.dropDownEstadoValueController ??= FormFieldController<String>(
                                                                                    _model.dropDownEstadoValue ??= '0',
                                                                                  ),
                                                                                  options: List<String>.from(dropDownEstadoViewTblEstadosRowList.map((e) => e.sigla).withoutNulls.toList()),
                                                                                  optionLabels: dropDownEstadoViewTblEstadosRowList.map((e) => e.nome).withoutNulls.toList(),
                                                                                  onChanged: (val) => safeSetState(() => _model.dropDownEstadoValue = val),
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                  hintText: 'Selecione o Estado...',
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_arrow_down_rounded,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  elevation: 2.0,
                                                                                  borderColor: Colors.transparent,
                                                                                  borderWidth: 0.0,
                                                                                  borderRadius: 8.0,
                                                                                  margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                  isOverButton: true,
                                                                                  isSearchable: false,
                                                                                  isMultiSelect: false,
                                                                                  labelText: 'Estado',
                                                                                  labelTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                        ),
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                      ),
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    Container(
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          50.0,
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          8.0)),
                                                                ),
                                                              ),
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'containerOnPageLoadAnimation5']!),
                                                        ),
                                                    ].divide(
                                                        SizedBox(height: 4.0)),
                                                  ),
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation4']!),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: SingleChildScrollView(
                                              controller:
                                                  _model.columnController2,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (kDebugMode ==
                                                            true) {
                                                          Navigator.pop(
                                                              context);
                                                        }
                                                      },
                                                      child: Text(
                                                        'Horários de atendimento',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 18.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 20.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 24.0;
                                                                    } else {
                                                                      return 24.0;
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: FutureBuilder<
                                                        List<
                                                            TblHorariosFuncionamentoRow>>(
                                                      future: (_model
                                                                  .requestCompleter1 ??=
                                                              Completer<
                                                                  List<
                                                                      TblHorariosFuncionamentoRow>>()
                                                                ..complete(
                                                                    TblHorariosFuncionamentoTable()
                                                                        .queryRows(
                                                                  queryFn: (q) => q
                                                                      .eqOrNull(
                                                                        'id_estabelecimento',
                                                                        FFAppState()
                                                                            .VarIDEstabelecimentoLogado,
                                                                      )
                                                                      .order('ordem', ascending: true),
                                                                )))
                                                          .future,
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<TblHorariosFuncionamentoRow>
                                                            listViewHrFuncionamentoTblHorariosFuncionamentoRowList =
                                                            snapshot.data!;

                                                        return ListView
                                                            .separated(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listViewHrFuncionamentoTblHorariosFuncionamentoRowList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              SizedBox(
                                                                  height: 8.0),
                                                          itemBuilder: (context,
                                                              listViewHrFuncionamentoIndex) {
                                                            final listViewHrFuncionamentoTblHorariosFuncionamentoRow =
                                                                listViewHrFuncionamentoTblHorariosFuncionamentoRowList[
                                                                    listViewHrFuncionamentoIndex];
                                                            return Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            2.0,
                                                                            4.0,
                                                                            2.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                CpEstabelecCadHrAtendimentosWidget(
                                                                              paramDiaSemana: listViewHrFuncionamentoTblHorariosFuncionamentoRow,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));

                                                                    safeSetState(() =>
                                                                        _model.requestCompleter1 =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted1();
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              valueOrDefault<String>(
                                                                                listViewHrFuncionamentoTblHorariosFuncionamentoRow.dia,
                                                                                '...',
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).info,
                                                                                    fontSize: 16.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              () {
                                                                                if (listViewHrFuncionamentoTblHorariosFuncionamentoRow.fechado!) {
                                                                                  return 'FECHADO';
                                                                                } else if (listViewHrFuncionamentoTblHorariosFuncionamentoRow.horario1Fim != null && listViewHrFuncionamentoTblHorariosFuncionamentoRow.horario1Fim != '') {
                                                                                  return '${listViewHrFuncionamentoTblHorariosFuncionamentoRow.horario1Inicio} às ${listViewHrFuncionamentoTblHorariosFuncionamentoRow.horario1Fim} - ${listViewHrFuncionamentoTblHorariosFuncionamentoRow.horario2Inicio} às ${listViewHrFuncionamentoTblHorariosFuncionamentoRow.horario2Fim}';
                                                                                } else {
                                                                                  return '${listViewHrFuncionamentoTblHorariosFuncionamentoRow.horario1Inicio} às ${listViewHrFuncionamentoTblHorariosFuncionamentoRow.horario2Fim}';
                                                                                }
                                                                              }(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: valueOrDefault<Color>(
                                                                                      listViewHrFuncionamentoTblHorariosFuncionamentoRow.fechado! ? FlutterFlowTheme.of(context).warning : FlutterFlowTheme.of(context).info,
                                                                                      FlutterFlowTheme.of(context).info,
                                                                                    ),
                                                                                    fontSize: 16.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .edit,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'rowOnPageLoadAnimation1']!),
                                                              ),
                                                            );
                                                          },
                                                          controller: _model
                                                              .listViewHrFuncionamento,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 16.0)),
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation6']!),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: SingleChildScrollView(
                                              controller:
                                                  _model.columnController3,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (kDebugMode ==
                                                            true) {
                                                          Navigator.pop(
                                                              context);
                                                        }
                                                      },
                                                      child: Text(
                                                        'Cadastro de Serviços',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 18.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 20.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 24.0;
                                                                    } else {
                                                                      return 24.0;
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final varTblModelosServicosList =
                                                            FFAppState()
                                                                .varTblModelosServicos
                                                                .toList();

                                                        return ListView
                                                            .separated(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              varTblModelosServicosList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              SizedBox(
                                                                  height: 8.0),
                                                          itemBuilder: (context,
                                                              varTblModelosServicosListIndex) {
                                                            final varTblModelosServicosListItem =
                                                                varTblModelosServicosList[
                                                                    varTblModelosServicosListIndex];
                                                            return Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Flexible(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Image.network(
                                                                              valueOrDefault<String>(
                                                                                varTblModelosServicosListItem.foto,
                                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                                                              ),
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  varTblModelosServicosListItem.nome,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FontWeight.w600,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: FlutterFlowTheme.of(context).info,
                                                                                        fontSize: () {
                                                                                          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                            return 12.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                            return 14.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                            return 16.0;
                                                                                          } else {
                                                                                            return 16.0;
                                                                                          }
                                                                                        }(),
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                ),
                                                                                if ((varTblModelosServicosListItem.valor > 0.0) || varTblModelosServicosListItem.valorSobConsulta)
                                                                                  Text(
                                                                                    varTblModelosServicosListItem.valorSobConsulta
                                                                                        ? 'Valor sob consulta'
                                                                                        : formatNumber(
                                                                                            varTblModelosServicosListItem.valor,
                                                                                            formatType: FormatType.decimal,
                                                                                            decimalType: DecimalType.commaDecimal,
                                                                                            currency: 'R\$',
                                                                                          ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.readexPro(
                                                                                            fontWeight: FontWeight.w600,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          color: FlutterFlowTheme.of(context).info,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 8.0)),
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        if (!varTblModelosServicosListItem
                                                                            .cadastrado)
                                                                          FlutterFlowIconButton(
                                                                            borderRadius:
                                                                                8.0,
                                                                            buttonSize:
                                                                                40.0,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.add,
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              size: 24.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              await _model.acAdicionarServico(
                                                                                context,
                                                                                paramVarTblModeloServico: varTblModelosServicosListItem,
                                                                              );
                                                                            },
                                                                          ),
                                                                        if (varTblModelosServicosListItem
                                                                            .cadastrado)
                                                                          Builder(
                                                                            builder: (context) =>
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                              child: FlutterFlowIconButton(
                                                                                borderRadius: 8.0,
                                                                                buttonSize: 40.0,
                                                                                fillColor: FlutterFlowTheme.of(context).tertiary,
                                                                                icon: Icon(
                                                                                  Icons.edit,
                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                  size: 24.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  if (MediaQuery.sizeOf(context).width < FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
                                                                                    await showModalBottomSheet(
                                                                                      isScrollControlled: true,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      context: context,
                                                                                      builder: (context) {
                                                                                        return WebViewAware(
                                                                                          child: Padding(
                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                            child: Container(
                                                                                              height: MediaQuery.sizeOf(context).height * 0.8,
                                                                                              child: CpCadServicosWidget(
                                                                                                paramCadastro: false,
                                                                                                paramID: varTblModelosServicosListItem.idServico,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).then((value) => safeSetState(() {}));
                                                                                  } else {
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (dialogContext) {
                                                                                        return Dialog(
                                                                                          elevation: 0,
                                                                                          insetPadding: EdgeInsets.zero,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                          child: WebViewAware(
                                                                                            child: CpCadServicosWidget(
                                                                                              paramCadastro: false,
                                                                                              paramID: varTblModelosServicosListItem.idServico,
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  }

                                                                                  await action_blocks.acConsultarModelosServicos(
                                                                                    context,
                                                                                    paramIDSegmento: _model.varIDSegmentoSelecionado,
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if (varTblModelosServicosListItem
                                                                            .cadastrado)
                                                                          FlutterFlowIconButton(
                                                                            borderRadius:
                                                                                8.0,
                                                                            buttonSize:
                                                                                40.0,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.delete_forever,
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              size: 24.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return WebViewAware(
                                                                                        child: AlertDialog(
                                                                                          title: Text('Atenção!'),
                                                                                          content: Text('Deseja excluir o serviço ${varTblModelosServicosListItem.nome}?'),
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
                                                                                await TblCadServicosTable().delete(
                                                                                  matchingRows: (rows) => rows.eqOrNull(
                                                                                    'id',
                                                                                    varTblModelosServicosListItem.idServico,
                                                                                  ),
                                                                                );
                                                                                await action_blocks.acConsultarModelosServicos(
                                                                                  context,
                                                                                  paramIDSegmento: _model.varIDSegmentoSelecionado,
                                                                                );
                                                                              }
                                                                            },
                                                                          ),
                                                                        if (!varTblModelosServicosListItem
                                                                                .cadastrado &&
                                                                            responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                              tablet: false,
                                                                              tabletLandscape: false,
                                                                              desktop: false,
                                                                            ))
                                                                          FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              await _model.acAdicionarServico(
                                                                                context,
                                                                                paramVarTblModeloServico: varTblModelosServicosListItem,
                                                                              );
                                                                            },
                                                                            text: MediaQuery.sizeOf(context).width < kBreakpointSmall
                                                                                ? ''
                                                                                : '  Adicionar',
                                                                            icon:
                                                                                Icon(
                                                                              Icons.add,
                                                                              size: 24.0,
                                                                            ),
                                                                            options:
                                                                                FFButtonOptions(
                                                                              height: 40.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 16.0, 0.0),
                                                                              iconAlignment: IconAlignment.end,
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                    ),
                                                                                    color: Colors.white,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                  ),
                                                                              elevation: 0.0,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            showLoadingIndicator:
                                                                                false,
                                                                          ).animateOnPageLoad(
                                                                              animationsMap['buttonOnPageLoadAnimation1']!),
                                                                        if (varTblModelosServicosListItem.cadastrado &&
                                                                            responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                              tablet: false,
                                                                              tabletLandscape: false,
                                                                              desktop: false,
                                                                            ))
                                                                          Builder(
                                                                            builder: (context) =>
                                                                                FFButtonWidget(
                                                                              onPressed: () async {
                                                                                if (MediaQuery.sizeOf(context).width < FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
                                                                                  await showModalBottomSheet(
                                                                                    isScrollControlled: true,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    context: context,
                                                                                    builder: (context) {
                                                                                      return WebViewAware(
                                                                                        child: Padding(
                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                          child: Container(
                                                                                            height: MediaQuery.sizeOf(context).height * 0.8,
                                                                                            child: CpCadServicosWidget(
                                                                                              paramCadastro: false,
                                                                                              paramID: varTblModelosServicosListItem.idServico,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => safeSetState(() {}));
                                                                                } else {
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (dialogContext) {
                                                                                      return Dialog(
                                                                                        elevation: 0,
                                                                                        insetPadding: EdgeInsets.zero,
                                                                                        backgroundColor: Colors.transparent,
                                                                                        alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                        child: WebViewAware(
                                                                                          child: CpCadServicosWidget(
                                                                                            paramCadastro: false,
                                                                                            paramID: varTblModelosServicosListItem.idServico,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                }

                                                                                await action_blocks.acConsultarModelosServicos(
                                                                                  context,
                                                                                  paramIDSegmento: _model.varIDSegmentoSelecionado,
                                                                                );
                                                                              },
                                                                              text: MediaQuery.sizeOf(context).width < kBreakpointSmall ? '' : '  Editar',
                                                                              icon: Icon(
                                                                                Icons.edit,
                                                                                size: 20.0,
                                                                              ),
                                                                              options: FFButtonOptions(
                                                                                height: 40.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 16.0, 0.0),
                                                                                iconAlignment: IconAlignment.end,
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: FlutterFlowTheme.of(context).tertiary,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                      color: Colors.white,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              showLoadingIndicator: false,
                                                                            ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation2']!),
                                                                          ),
                                                                        if (varTblModelosServicosListItem
                                                                                .cadastrado &&
                                                                            responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                              tablet: false,
                                                                              tabletLandscape: false,
                                                                              desktop: false,
                                                                            ))
                                                                          FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return WebViewAware(
                                                                                        child: AlertDialog(
                                                                                          title: Text('Atenção!'),
                                                                                          content: Text('Deseja excluir o serviço ${varTblModelosServicosListItem.nome}?'),
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
                                                                                await TblCadServicosTable().delete(
                                                                                  matchingRows: (rows) => rows.eqOrNull(
                                                                                    'id',
                                                                                    varTblModelosServicosListItem.idServico,
                                                                                  ),
                                                                                );
                                                                                await action_blocks.acConsultarModelosServicos(
                                                                                  context,
                                                                                  paramIDSegmento: _model.varIDSegmentoSelecionado,
                                                                                );
                                                                              }
                                                                            },
                                                                            text: MediaQuery.sizeOf(context).width < kBreakpointSmall
                                                                                ? ''
                                                                                : '  Excluir',
                                                                            icon:
                                                                                Icon(
                                                                              Icons.delete_forever_sharp,
                                                                              size: 24.0,
                                                                            ),
                                                                            options:
                                                                                FFButtonOptions(
                                                                              height: 40.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 16.0, 0.0),
                                                                              iconAlignment: IconAlignment.end,
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                    ),
                                                                                    color: Colors.white,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                  ),
                                                                              elevation: 0.0,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            showLoadingIndicator:
                                                                                false,
                                                                          ).animateOnPageLoad(
                                                                              animationsMap['buttonOnPageLoadAnimation3']!),
                                                                      ],
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          8.0)),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'rowOnPageLoadAnimation2']!),
                                                              ),
                                                            );
                                                          },
                                                          controller: _model
                                                              .listViewServicos,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 16.0)),
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation7']!),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: SingleChildScrollView(
                                              controller:
                                                  _model.columnController4,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (kDebugMode ==
                                                            true) {
                                                          Navigator.pop(
                                                              context);
                                                        }
                                                      },
                                                      child: Text(
                                                        'Cadastro de Profissionais',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 18.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 20.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 24.0;
                                                                    } else {
                                                                      return 24.0;
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(),
                                                    child: Flex(
                                                      direction: Axis.vertical,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Form(
                                                          key: _model.formKey2,
                                                          autovalidateMode:
                                                              AutovalidateMode
                                                                  .disabled,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textNomeProfissionalTextController,
                                                            focusNode: _model
                                                                .textNomeProfissionalFocusNode,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                              '_model.textNomeProfissionalTextController',
                                                              Duration(
                                                                  milliseconds:
                                                                      2000),
                                                              () =>
                                                                  safeSetState(
                                                                      () {}),
                                                            ),
                                                            autofocus: false,
                                                            textCapitalization:
                                                                TextCapitalization
                                                                    .words,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .done,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              labelText:
                                                                  'Nome do Profissional (Ex: Carlos)',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              errorStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .warning,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                              enabledBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              errorBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              filled: true,
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              hoverColor: Color(
                                                                  0xFFF1F4F8),
                                                              suffixIcon: _model
                                                                      .textNomeProfissionalTextController!
                                                                      .text
                                                                      .isNotEmpty
                                                                  ? InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .textNomeProfissionalTextController
                                                                            ?.clear();
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .clear,
                                                                        color: Color(
                                                                            0xFF57636C),
                                                                        size:
                                                                            22,
                                                                      ),
                                                                    )
                                                                  : null,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF262D34),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                            cursorColor: Color(
                                                                0xFF95A1AC),
                                                            validator: _model
                                                                .textNomeProfissionalTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                            inputFormatters: [
                                                              if (!isAndroid &&
                                                                  !isiOS)
                                                                TextInputFormatter
                                                                    .withFunction(
                                                                        (oldValue,
                                                                            newValue) {
                                                                  return TextEditingValue(
                                                                    selection:
                                                                        newValue
                                                                            .selection,
                                                                    text: newValue
                                                                        .text
                                                                        .toCapitalization(
                                                                            TextCapitalization.words),
                                                                  );
                                                                }),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    4.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Serviços liberados',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final varTblServicosLiberados =
                                                                        _model.queryConsServicosLib?.toList() ??
                                                                            [];
                                                                    if (varTblServicosLiberados
                                                                        .isEmpty) {
                                                                      return CpSemCadastroWidget(
                                                                        paramTexto:
                                                                            'Nenhum serviço cadastrado...${'\n'}Volte na tela anteior para cadastrar serviços',
                                                                      );
                                                                    }

                                                                    return MasonryGridView
                                                                        .builder(
                                                                      physics:
                                                                          const NeverScrollableScrollPhysics(),
                                                                      gridDelegate:
                                                                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                                        crossAxisCount: MediaQuery.sizeOf(context).width <
                                                                                400.0
                                                                            ? 1
                                                                            : 2,
                                                                      ),
                                                                      crossAxisSpacing:
                                                                          8.0,
                                                                      mainAxisSpacing:
                                                                          8.0,
                                                                      itemCount:
                                                                          varTblServicosLiberados
                                                                              .length,
                                                                      shrinkWrap:
                                                                          true,
                                                                      itemBuilder:
                                                                          (context,
                                                                              varTblServicosLiberadosIndex) {
                                                                        final varTblServicosLiberadosItem =
                                                                            varTblServicosLiberados[varTblServicosLiberadosIndex];
                                                                        return InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            if (_model.varIDServicosLiberados.where((e) => e == varTblServicosLiberadosItem.id).toList().length ==
                                                                                0) {
                                                                              _model.addToVarIDServicosLiberados(varTblServicosLiberadosItem.id);
                                                                              safeSetState(() {});
                                                                            } else {
                                                                              _model.removeFromVarIDServicosLiberados(varTblServicosLiberadosItem.id);
                                                                              safeSetState(() {});
                                                                            }
                                                                          },
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              if (_model.varIDServicosLiberados.where((e) => e == varTblServicosLiberadosItem.id).toList().length > 0)
                                                                                Icon(
                                                                                  Icons.check_box_outlined,
                                                                                  color: FlutterFlowTheme.of(context).secondary,
                                                                                  size: 30.0,
                                                                                ),
                                                                              if (_model.varIDServicosLiberados.where((e) => e == varTblServicosLiberadosItem.id).toList().length == 0)
                                                                                Icon(
                                                                                  Icons.check_box_outline_blank_rounded,
                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                  size: 30.0,
                                                                                ),
                                                                              Flexible(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      varTblServicosLiberadosItem.nome,
                                                                                      '...',
                                                                                    ),
                                                                                    maxLines: 1,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.readexPro(
                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          color: _model.varIDServicosLiberados.where((e) => e == varTblServicosLiberadosItem.id).toList().length > 0 ? FlutterFlowTheme.of(context).secondary : FlutterFlowTheme.of(context).info,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                      controller:
                                                                          _model
                                                                              .staggeredViewServLib,
                                                                    );
                                                                  },
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 4.0)),
                                                            ),
                                                          ),
                                                        ),
                                                        FFButtonWidget(
                                                          onPressed: () async {
                                                            var _shouldSetState =
                                                                false;
                                                            safeSetState(() =>
                                                                _model.requestCompleter3 =
                                                                    null);
                                                            await _model
                                                                .waitForRequestCompleted3();
                                                            if (stackViewTblAppPlanosEstabelecimentosRow
                                                                    ?.quantProfissionaisCad ==
                                                                stackViewTblAppPlanosEstabelecimentosRow
                                                                    ?.quantProfissionaisMaxSalvo) {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        AlertDialog(
                                                                      title: Text(
                                                                          'Atenção!'),
                                                                      content: Text(
                                                                          'O plano ${stackViewTblAppPlanosEstabelecimentosRow?.nomePlano} que você selecionou pode ter no máximo ${FFAppState().VarTblEstabelecimentoLogado.quantProfissionaisMax.toString()}${stackViewTblAppPlanosEstabelecimentosRow?.quantProfissionaisMaxSalvo == 1 ? ' profissional.' : ' profissionais.'}${'\n'}Se precisar você poderá mudar pra um plano maior depois que concluir o cadastro.'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                              return;
                                                            }
                                                            if (_model.formKey2
                                                                        .currentState ==
                                                                    null ||
                                                                !_model.formKey2
                                                                    .currentState!
                                                                    .validate()) {
                                                              return;
                                                            }
                                                            _model.queryConsNomeAss =
                                                                await ViewTblProfissionaisTable()
                                                                    .queryRows(
                                                              queryFn: (q) => q
                                                                  .eqOrNull(
                                                                    'id_estabelecimento',
                                                                    FFAppState()
                                                                        .VarIDEstabelecimentoLogado,
                                                                  )
                                                                  .eqOrNull(
                                                                    'nome_upper',
                                                                    functions.fcConverterStringMaiusculo(_model
                                                                        .textNomeProfissionalTextController
                                                                        .text),
                                                                  ),
                                                            );
                                                            _shouldSetState =
                                                                true;
                                                            if (_model
                                                                    .queryConsNomeAss!
                                                                    .length >
                                                                0) {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        AlertDialog(
                                                                      title: Text(
                                                                          'Atenção!'),
                                                                      content: Text(
                                                                          'Esse nome já está cadastrado'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                              return;
                                                            }
                                                            if (_model
                                                                    .varIDServicosLiberados
                                                                    .length ==
                                                                0) {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        AlertDialog(
                                                                      title: Text(
                                                                          'Atenção!'),
                                                                      content: Text(
                                                                          'Selecione um serviço para o profissional'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                              return;
                                                            }
                                                            _model.resultInsertProfissional =
                                                                await TblProfissionaisTable()
                                                                    .insert({
                                                              'id_estabelecimento':
                                                                  FFAppState()
                                                                      .VarIDEstabelecimentoLogado,
                                                              'nome': _model
                                                                  .textNomeProfissionalTextController
                                                                  .text,
                                                              'situacao': true,
                                                              'user_id':
                                                                  currentUserUid,
                                                            });
                                                            _shouldSetState =
                                                                true;
                                                            _model.varContador =
                                                                0;
                                                            safeSetState(() {});
                                                            while (_model
                                                                    .varContador <
                                                                _model
                                                                    .varIDServicosLiberados
                                                                    .length) {
                                                              await TblProfissionaisServLibTable()
                                                                  .insert({
                                                                'id_estabelecimento':
                                                                    FFAppState()
                                                                        .VarIDEstabelecimentoLogado,
                                                                'id_profissional':
                                                                    _model
                                                                        .resultInsertProfissional
                                                                        ?.id,
                                                                'id_servico': _model
                                                                    .varIDServicosLiberados
                                                                    .elementAtOrNull(
                                                                        _model
                                                                            .varContador),
                                                                'situacao':
                                                                    true,
                                                                'usuario_liberou':
                                                                    FFAppState()
                                                                        .VarIDUsuarioLogado,
                                                                'user_id':
                                                                    currentUserUid,
                                                              });
                                                              _model.varContador =
                                                                  _model.varContador +
                                                                      1;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                            _model.varIDServicosLiberados =
                                                                [];
                                                            _model.varContador =
                                                                0;
                                                            safeSetState(() {});
                                                            safeSetState(() {
                                                              _model
                                                                  .textNomeProfissionalTextController
                                                                  ?.clear();
                                                            });
                                                            safeSetState(() =>
                                                                _model.requestCompleter2 =
                                                                    null);
                                                            await _model
                                                                .waitForRequestCompleted2();
                                                            safeSetState(() =>
                                                                _model.requestCompleter3 =
                                                                    null);
                                                            await _model
                                                                .waitForRequestCompleted3();
                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                          },
                                                          text:
                                                              '  Adicionar Profissional',
                                                          icon: Icon(
                                                            Icons.add,
                                                            size: 24.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall
                                                                ? MediaQuery.sizeOf(
                                                                        context)
                                                                    .width
                                                                : 250.0,
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconAlignment:
                                                                IconAlignment
                                                                    .end,
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .success,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'buttonOnPageLoadAnimation4']!),
                                                      ].divide(false
                                                          ? SizedBox(
                                                              width: 12.0)
                                                          : SizedBox(
                                                              height: 12.0)),
                                                    ),
                                                  ),
                                                  FutureBuilder<
                                                      List<
                                                          TblProfissionaisRow>>(
                                                    future: (_model
                                                                .requestCompleter2 ??=
                                                            Completer<
                                                                List<
                                                                    TblProfissionaisRow>>()
                                                              ..complete(
                                                                  TblProfissionaisTable()
                                                                      .queryRows(
                                                                queryFn: (q) => q
                                                                    .or(
                                                                        "id_estabelecimento.eq.${FFAppState().VarIDEstabelecimentoLogado}, situacao.eq.true")
                                                                    .order(
                                                                        'id'),
                                                              )))
                                                        .future,
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<TblProfissionaisRow>
                                                          listViewHrProfissionaisTblProfissionaisRowList =
                                                          snapshot.data!;

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listViewHrProfissionaisTblProfissionaisRowList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                height: 8.0),
                                                        itemBuilder: (context,
                                                            listViewHrProfissionaisIndex) {
                                                          final listViewHrProfissionaisTblProfissionaisRow =
                                                              listViewHrProfissionaisTblProfissionaisRowList[
                                                                  listViewHrProfissionaisIndex];
                                                          return Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(4.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          safeSetState(
                                                                              () {
                                                                            _model.isDataUploading2 =
                                                                                false;
                                                                            _model.uploadedLocalFile2 =
                                                                                FFUploadedFile(bytes: Uint8List.fromList([]));
                                                                            _model.uploadedFileUrl2 =
                                                                                '';
                                                                          });

                                                                          final selectedMedia =
                                                                              await selectMedia(
                                                                            storageFolderPath:
                                                                                'profissionais',
                                                                            maxWidth:
                                                                                500.00,
                                                                            maxHeight:
                                                                                500.00,
                                                                            imageQuality:
                                                                                90,
                                                                            mediaSource:
                                                                                MediaSource.photoGallery,
                                                                            multiImage:
                                                                                false,
                                                                          );
                                                                          if (selectedMedia != null &&
                                                                              selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                            safeSetState(() =>
                                                                                _model.isDataUploading2 = true);
                                                                            var selectedUploadedFiles =
                                                                                <FFUploadedFile>[];

                                                                            var downloadUrls =
                                                                                <String>[];
                                                                            try {
                                                                              selectedUploadedFiles = selectedMedia
                                                                                  .map((m) => FFUploadedFile(
                                                                                        name: m.storagePath.split('/').last,
                                                                                        bytes: m.bytes,
                                                                                        height: m.dimensions?.height,
                                                                                        width: m.dimensions?.width,
                                                                                        blurHash: m.blurHash,
                                                                                      ))
                                                                                  .toList();

                                                                              downloadUrls = await uploadSupabaseStorageFiles(
                                                                                bucketName: 'fotos',
                                                                                selectedFiles: selectedMedia,
                                                                              );
                                                                            } finally {
                                                                              _model.isDataUploading2 = false;
                                                                            }
                                                                            if (selectedUploadedFiles.length == selectedMedia.length &&
                                                                                downloadUrls.length == selectedMedia.length) {
                                                                              safeSetState(() {
                                                                                _model.uploadedLocalFile2 = selectedUploadedFiles.first;
                                                                                _model.uploadedFileUrl2 = downloadUrls.first;
                                                                              });
                                                                            } else {
                                                                              safeSetState(() {});
                                                                              return;
                                                                            }
                                                                          }

                                                                          if (_model.uploadedFileUrl2 != '') {
                                                                            await TblProfissionaisTable().update(
                                                                              data: {
                                                                                'foto': _model.uploadedFileUrl2,
                                                                              },
                                                                              matchingRows: (rows) => rows.eqOrNull(
                                                                                'id',
                                                                                listViewHrProfissionaisTblProfissionaisRow.id,
                                                                              ),
                                                                            );
                                                                            safeSetState(() =>
                                                                                _model.requestCompleter2 = null);
                                                                            await _model.waitForRequestCompleted2();
                                                                          }
                                                                        },
                                                                        child:
                                                                            Stack(
                                                                          alignment: AlignmentDirectional(
                                                                              1.0,
                                                                              -1.0),
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                              child: Container(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Image.network(
                                                                                  valueOrDefault<String>(
                                                                                    listViewHrProfissionaisTblProfissionaisRow.foto,
                                                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                                                                  ),
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0xE5249689),
                                                                                borderRadius: BorderRadius.circular(15.0),
                                                                                shape: BoxShape.rectangle,
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  if (listViewHrProfissionaisTblProfissionaisRow.foto != null && listViewHrProfissionaisTblProfissionaisRow.foto != '')
                                                                                    Padding(
                                                                                      padding: EdgeInsets.all(4.0),
                                                                                      child: Icon(
                                                                                        Icons.edit,
                                                                                        color: Color(0xEAFFFFFF),
                                                                                        size: 18.0,
                                                                                      ),
                                                                                    ),
                                                                                  if (listViewHrProfissionaisTblProfissionaisRow.foto == null || listViewHrProfissionaisTblProfissionaisRow.foto == '')
                                                                                    Padding(
                                                                                      padding: EdgeInsets.all(4.0),
                                                                                      child: Icon(
                                                                                        Icons.add,
                                                                                        color: Color(0xEAFFFFFF),
                                                                                        size: 18.0,
                                                                                      ),
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          listViewHrProfissionaisTblProfissionaisRow
                                                                              .nome,
                                                                          '...',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FontWeight.w600,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: () {
                                                                                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                  return 12.0;
                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                  return 14.0;
                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                  return 16.0;
                                                                                } else {
                                                                                  return 16.0;
                                                                                }
                                                                              }(),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            8.0)),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if ((listViewHrProfissionaisTblProfissionaisRow.idEstabelecimento ==
                                                                              FFAppState()
                                                                                  .VarIDEstabelecimentoLogado) &&
                                                                          responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                            tablet:
                                                                                false,
                                                                            tabletLandscape:
                                                                                false,
                                                                            desktop:
                                                                                false,
                                                                          ))
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            var confirmDialogResponse = await showDialog<bool>(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return WebViewAware(
                                                                                      child: AlertDialog(
                                                                                        title: Text('Atenção!'),
                                                                                        content: Text('Deseja excluir o profissional  ${listViewHrProfissionaisTblProfissionaisRow.nome}?'),
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
                                                                              await TblProfissionaisServLibTable().delete(
                                                                                matchingRows: (rows) => rows
                                                                                    .eqOrNull(
                                                                                      'id_estabelecimento',
                                                                                      FFAppState().VarIDEstabelecimentoLogado,
                                                                                    )
                                                                                    .eqOrNull(
                                                                                      'id_profissional',
                                                                                      listViewHrProfissionaisTblProfissionaisRow.id,
                                                                                    ),
                                                                              );
                                                                              await TblProfissionaisTable().delete(
                                                                                matchingRows: (rows) => rows.eqOrNull(
                                                                                  'id',
                                                                                  listViewHrProfissionaisTblProfissionaisRow.id,
                                                                                ),
                                                                              );
                                                                              safeSetState(() => _model.requestCompleter2 = null);
                                                                              await _model.waitForRequestCompleted2();
                                                                              safeSetState(() => _model.requestCompleter3 = null);
                                                                              await _model.waitForRequestCompleted3();
                                                                            }
                                                                          },
                                                                          text: MediaQuery.sizeOf(context).width < kBreakpointSmall
                                                                              ? ''
                                                                              : '  Excluir',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.delete_forever_sharp,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                40.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            iconAlignment:
                                                                                IconAlignment.end,
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                  ),
                                                                                  color: Colors.white,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ).animateOnPageLoad(
                                                                            animationsMap['buttonOnPageLoadAnimation5']!),
                                                                      Builder(
                                                                        builder:
                                                                            (context) =>
                                                                                Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              0.0,
                                                                              4.0,
                                                                              0.0),
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderRadius:
                                                                                8.0,
                                                                            buttonSize:
                                                                                40.0,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.edit,
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              size: 24.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              if (MediaQuery.sizeOf(context).width < FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return WebViewAware(
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: CpCadProfissionaisWidget(
                                                                                          paramCadastro: false,
                                                                                          paramIDProfissional: listViewHrProfissionaisTblProfissionaisRow.id,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => safeSetState(() {}));
                                                                              } else {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (dialogContext) {
                                                                                    return Dialog(
                                                                                      elevation: 0,
                                                                                      insetPadding: EdgeInsets.zero,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                      child: WebViewAware(
                                                                                        child: CpCadProfissionaisWidget(
                                                                                          paramCadastro: false,
                                                                                          paramIDProfissional: listViewHrProfissionaisTblProfissionaisRow.id,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                );
                                                                              }

                                                                              safeSetState(() => _model.requestCompleter2 = null);
                                                                              await _model.waitForRequestCompleted2();
                                                                              safeSetState(() => _model.requestCompleter3 = null);
                                                                              await _model.waitForRequestCompleted3();
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      FlutterFlowIconButton(
                                                                        borderRadius:
                                                                            8.0,
                                                                        buttonSize:
                                                                            40.0,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).error,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .delete_forever,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          var confirmDialogResponse = await showDialog<bool>(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return WebViewAware(
                                                                                    child: AlertDialog(
                                                                                      title: Text('Atenção!'),
                                                                                      content: Text('Deseja excluir o profissional  ${listViewHrProfissionaisTblProfissionaisRow.nome}?'),
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
                                                                            await TblProfissionaisServLibTable().delete(
                                                                              matchingRows: (rows) => rows
                                                                                  .eqOrNull(
                                                                                    'id_estabelecimento',
                                                                                    FFAppState().VarIDEstabelecimentoLogado,
                                                                                  )
                                                                                  .eqOrNull(
                                                                                    'id_profissional',
                                                                                    listViewHrProfissionaisTblProfissionaisRow.id,
                                                                                  ),
                                                                            );
                                                                            await TblProfissionaisTable().delete(
                                                                              matchingRows: (rows) => rows.eqOrNull(
                                                                                'id',
                                                                                listViewHrProfissionaisTblProfissionaisRow.id,
                                                                              ),
                                                                            );
                                                                            safeSetState(() =>
                                                                                _model.requestCompleter2 = null);
                                                                            await _model.waitForRequestCompleted2();
                                                                            safeSetState(() =>
                                                                                _model.requestCompleter3 = null);
                                                                            await _model.waitForRequestCompleted3();
                                                                          }
                                                                        },
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        8.0)),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'rowOnPageLoadAnimation3']!),
                                                            ),
                                                          );
                                                        },
                                                        controller: _model
                                                            .listViewHrProfissionais,
                                                      );
                                                    },
                                                  ),
                                                  if (stackViewTblAppPlanosEstabelecimentosRow!
                                                          .quantProfissionaisCad! >
                                                      0)
                                                    Text(
                                                      'Plano ${stackViewTblAppPlanosEstabelecimentosRow.nomePlano}  |  ${stackViewTblAppPlanosEstabelecimentosRow.quantProfissionaisCad?.toString()} de ${stackViewTblAppPlanosEstabelecimentosRow.quantProfissionaisMaxSalvo?.toString()}${stackViewTblAppPlanosEstabelecimentosRow.quantProfissionaisMaxSalvo == 1 ? ' profissional' : ' profissionais'}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  Container(
                                                    width: 100.0,
                                                    height: 60.0,
                                                    decoration: BoxDecoration(),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 16.0)),
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation8']!),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: SingleChildScrollView(
                                              controller:
                                                  _model.columnController5,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Flexible(
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        16.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                if (kDebugMode ==
                                                                    true) {
                                                                  Navigator.pop(
                                                                      context);
                                                                }
                                                              },
                                                              child: Text(
                                                                'Informações para seu site/Aplicativo',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      fontSize:
                                                                          () {
                                                                        if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointMedium) {
                                                                          return 20.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointLarge) {
                                                                          return 24.0;
                                                                        } else {
                                                                          return 24.0;
                                                                        }
                                                                      }(),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        if (kDebugMode ||
                                                            FFAppState()
                                                                .VarEmDesenvolvimento)
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          8.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if ((Theme.of(context)
                                                                              .brightness ==
                                                                          Brightness
                                                                              .dark) ==
                                                                      true) {
                                                                    setDarkModeSetting(
                                                                        context,
                                                                        ThemeMode
                                                                            .light);
                                                                    FFAppState()
                                                                            .VarDarkMode =
                                                                        'claro';
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    setDarkModeSetting(
                                                                        context,
                                                                        ThemeMode
                                                                            .dark);
                                                                    FFAppState()
                                                                            .VarDarkMode =
                                                                        'escuro';
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                },
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0x2EFFFFFF),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            4.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        if ((Theme.of(context).brightness ==
                                                                                Brightness.dark) ==
                                                                            false)
                                                                          Icon(
                                                                            Icons.dark_mode_outlined,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).customTextoMenuLateral,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                        if ((Theme.of(context).brightness ==
                                                                                Brightness.dark) ==
                                                                            true)
                                                                          Icon(
                                                                            Icons.sunny,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).customTextoMenuLateral,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Builder(
                                                        builder: (context) =>
                                                            Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              if (FFAppState()
                                                                          .VarTblEstabelecimentoLogado
                                                                          .fotoPerfil !=
                                                                      '') {
                                                                await showDialog(
                                                                  barrierColor:
                                                                      Color(
                                                                          0xD714181B),
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
                                                                      insetPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          WebViewAware(
                                                                        child:
                                                                            CpFotoWidget(
                                                                          paramFoto: FFAppState()
                                                                              .VarTblEstabelecimentoLogado
                                                                              .fotoPerfil,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              } else {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          AlertDialog(
                                                                        title: Text(
                                                                            'Atenção!'),
                                                                        content:
                                                                            Text('Volte na tela anterior e adicione uma foto...'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              }
                                                            },
                                                            child: Container(
                                                              width: 200.0,
                                                              height: 200.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  FFAppState()
                                                                      .VarTblEstabelecimentoLogado
                                                                      .fotoPerfil,
                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                                                ),
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Form(
                                                    key: _model.formKey3,
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .disabled,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context).width <
                                                                            FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()
                                                                        ? 0.0
                                                                        : 16.0,
                                                                    0.0,
                                                                  ),
                                                                  0.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context).width <
                                                                            FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()
                                                                        ? 0.0
                                                                        : 16.0,
                                                                    0.0,
                                                                  ),
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .textNomeTextController,
                                                              focusNode: _model
                                                                  .textNomeFocusNode,
                                                              autofocus: false,
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .next,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                isDense: true,
                                                                labelText:
                                                                    'Nome do Estabelecimento',
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                                errorStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .warning,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                enabledBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0xFF0882F1),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                hoverColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                prefixIcon:
                                                                    Icon(
                                                                  Icons
                                                                      .store_outlined,
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .readexPro(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                              cursorColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              validator: _model
                                                                  .textNomeTextControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .textUsernameTextController,
                                                              focusNode: _model
                                                                  .textUsernameFocusNode,
                                                              onChanged: (_) =>
                                                                  EasyDebounce
                                                                      .debounce(
                                                                '_model.textUsernameTextController',
                                                                Duration(
                                                                    milliseconds:
                                                                        200),
                                                                () =>
                                                                    safeSetState(
                                                                        () {}),
                                                              ),
                                                              autofocus: false,
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .next,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                isDense: true,
                                                                labelText:
                                                                    'Username (Será usado na url do site)',
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                                errorStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .warning,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                enabledBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0xFF0882F1),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                hoverColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                prefixIcon:
                                                                    Icon(
                                                                  Icons
                                                                      .store_outlined,
                                                                ),
                                                                suffixIcon: _model
                                                                        .textUsernameTextController!
                                                                        .text
                                                                        .isNotEmpty
                                                                    ? InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          _model
                                                                              .textUsernameTextController
                                                                              ?.clear();
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .clear,
                                                                          color:
                                                                              Color(0xFF57636C),
                                                                          size:
                                                                              22,
                                                                        ),
                                                                      )
                                                                    : null,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .readexPro(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                              cursorColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              validator: _model
                                                                  .textUsernameTextControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                              inputFormatters: [
                                                                FilteringTextInputFormatter
                                                                    .allow(RegExp(
                                                                        '[0-9a-zA-Z]'))
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Flex(
                                                                direction: (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall
                                                                        ? false
                                                                        : true)
                                                                    ? Axis
                                                                        .horizontal
                                                                    : Axis
                                                                        .vertical,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'Seu link para compartilhamento será: ',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          fontSize: MediaQuery.sizeOf(context).width < kBreakpointSmall
                                                                              ? 14.0
                                                                              : 16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    'https://agendasuper.com/${_model.textUsernameTextController.text}',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          fontSize: MediaQuery.sizeOf(context).width < kBreakpointSmall
                                                                              ? 12.0
                                                                              : 16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ].divide((MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall
                                                                        ? false
                                                                        : true)
                                                                    ? SizedBox(
                                                                        width:
                                                                            4.0)
                                                                    : SizedBox(
                                                                        height:
                                                                            4.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 16.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 16.0)),
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation9']!),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(20.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Lottie.asset(
                                                  'assets/jsons/Animation_-_1726059999489.json',
                                                  width: 150.0,
                                                  height: 150.0,
                                                  fit: BoxFit.fill,
                                                  repeat: false,
                                                  animate: true,
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Cadastros e configurações realizados com sucesso...',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 30.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textOnPageLoadAnimation']!),
                                                  ].divide(
                                                      SizedBox(height: 16.0)),
                                                ),
                                              ].divide(SizedBox(height: 24.0)),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation10']!),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: smooth_page_indicator
                                          .SmoothPageIndicator(
                                        controller:
                                            _model.pageViewController ??=
                                                PageController(initialPage: 0),
                                        count: 9,
                                        axisDirection: Axis.horizontal,
                                        onDotClicked: (i) async {
                                          await _model.pageViewController!
                                              .animateToPage(
                                            i,
                                            duration:
                                                Duration(milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                          safeSetState(() {});
                                        },
                                        effect: smooth_page_indicator
                                            .ExpandingDotsEffect(
                                          expansionFactor: 1.5,
                                          spacing:
                                              MediaQuery.sizeOf(context).width <
                                                      kBreakpointSmall
                                                  ? 4.0
                                                  : 8.0,
                                          radius: 8.0,
                                          dotWidth: 8.0,
                                          dotHeight: 8.0,
                                          dotColor: Color(0xFF8F9CB0),
                                          activeDotColor: Colors.white,
                                          paintStyle: PaintingStyle.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0,
                                  0.0,
                                  16.0,
                                  valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width >
                                            FFAppState()
                                                .varTamanhoMinimoTelaMenuLateral
                                                .toDouble()
                                        ? 16.0
                                        : 4.0,
                                    0.0,
                                  )),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {},
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    if (!(isWeb
                                        ? MediaQuery.viewInsetsOf(context)
                                                .bottom >
                                            0
                                        : _isKeyboardVisible))
                                      Opacity(
                                        opacity: _model.pageViewCurrentIndex > 0
                                            ? 1.0
                                            : 0.0,
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await _model.pageViewController
                                                ?.previousPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.ease,
                                            );

                                            safeSetState(() {});
                                          },
                                          text: 'Anterior',
                                          icon: Icon(
                                            Icons.chevron_left_sharp,
                                            size: 15.0,
                                          ),
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconAlignment: IconAlignment.start,
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Colors.transparent,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  color: Colors.white,
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              kBreakpointSmall
                                                          ? 12.0
                                                          : 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                            elevation: 0.0,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          showLoadingIndicator: false,
                                        ),
                                      ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if ((_model.pageViewCurrentIndex < 8) &&
                                            !(isWeb
                                                ? MediaQuery.viewInsetsOf(
                                                            context)
                                                        .bottom >
                                                    0
                                                : _isKeyboardVisible))
                                          FFButtonWidget(
                                            onPressed: () async {
                                              var _shouldSetState = false;
                                              if (_model.pageViewCurrentIndex ==
                                                  0) {
                                                if ((_model.varIDSegmentoSelecionado <=
                                                        0) ||
                                                    (_model.varIDSegmentoSelecionado ==
                                                        8)) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          title:
                                                              Text('Atenção!'),
                                                          content: Text(
                                                              'Selecione um segmento'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }
                                                await TblEstabelecimentoTable()
                                                    .update(
                                                  data: {
                                                    'id_segmento': _model
                                                        .varIDSegmentoSelecionado,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    FFAppState()
                                                        .VarIDEstabelecimentoLogado,
                                                  ),
                                                );
                                                FFAppState()
                                                    .updateVarTblEstabelecimentoLogadoStruct(
                                                  (e) => e
                                                    ..idSegmento = _model
                                                        .varIDSegmentoSelecionado,
                                                );
                                              } else if (_model
                                                      .pageViewCurrentIndex ==
                                                  1) {
                                                if ((_model.uploadedFileUrl1 ==
                                                            '') &&
                                                    (_model.varFotoPerfilSelecionada ==
                                                        '0') &&
                                                    (FFAppState()
                                                                .VarTblEstabelecimentoLogado
                                                                .fotoPerfil ==
                                                            '')) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          title:
                                                              Text('Atenção!'),
                                                          content: Text(
                                                              'Adicione uma foto ou selecione um modelo pronto...'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }
                                                if (_model.uploadedFileUrl1 !=
                                                        '') {
                                                  if (_model.varUrlFotoTemp !=
                                                      _model.uploadedFileUrl1) {
                                                    if (_model.varUrlFotoTemp !=
                                                            null &&
                                                        _model.varUrlFotoTemp !=
                                                            '') {
                                                      await deleteSupabaseFileFromPublicUrl(
                                                          _model
                                                              .varUrlFotoTemp!);
                                                    }
                                                    showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      context: context,
                                                      builder: (context) {
                                                        return WebViewAware(
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                CpDialogSnackBarWidget(
                                                              paramMensagem:
                                                                  'Foto perfil atualizada...',
                                                              paramCorTexto:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              paramCorFundo:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              paramTempoMsFechar:
                                                                  1000,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  }
                                                }
                                                if ((_model.uploadedFileUrl1 !=
                                                            '') ||
                                                    (_model.varFotoPerfilSelecionada !=
                                                        '0')) {
                                                  await TblEstabelecimentoTable()
                                                      .update(
                                                    data: {
                                                      'foto_perfil': () {
                                                        if (_model.uploadedFileUrl1 !=
                                                                '') {
                                                          return _model
                                                              .uploadedFileUrl1;
                                                        } else if (_model
                                                                .varFotoPerfilSelecionada !=
                                                            '0') {
                                                          return _model
                                                              .varFotoPerfilSelecionada;
                                                        } else {
                                                          return null;
                                                        }
                                                      }(),
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'id',
                                                      FFAppState()
                                                          .VarIDEstabelecimentoLogado,
                                                    ),
                                                  );
                                                  _shouldSetState = true;
                                                  FFAppState()
                                                      .updateVarTblEstabelecimentoLogadoStruct(
                                                    (e) => e
                                                      ..fotoPerfil = () {
                                                        if (_model.uploadedFileUrl1 !=
                                                                '') {
                                                          return _model
                                                              .uploadedFileUrl1;
                                                        } else if (_model
                                                                .varFotoPerfilSelecionada !=
                                                            '0') {
                                                          return _model
                                                              .varFotoPerfilSelecionada;
                                                        } else {
                                                          return null;
                                                        }
                                                      }(),
                                                  );
                                                  FFAppState().update(() {});
                                                }
                                              } else if (_model
                                                      .pageViewCurrentIndex ==
                                                  2) {
                                                await TblEstabelecimentoTable()
                                                    .update(
                                                  data: {
                                                    'id_tema': _model
                                                        .varIDTemaSelecionado,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    FFAppState()
                                                        .VarIDEstabelecimentoLogado,
                                                  ),
                                                );
                                                FFAppState()
                                                    .updateVarTblEstabelecimentoLogadoStruct(
                                                  (e) => e
                                                    ..fotoLightMode = _model
                                                        .varFotoLightModeTemaSelecionado
                                                    ..fotoDarkMod = _model
                                                        .varFotoDarkModeTemaSelecionado,
                                                );
                                                FFAppState().update(() {});
                                              } else if (_model
                                                      .pageViewCurrentIndex ==
                                                  3) {
                                                if (_model
                                                    .varInformarEndereco) {
                                                  _model.resultValidarEndereco =
                                                      true;
                                                  if (_model.formKey1
                                                              .currentState ==
                                                          null ||
                                                      !_model.formKey1
                                                          .currentState!
                                                          .validate()) {
                                                    _model.resultValidarEndereco =
                                                        false;
                                                  }
                                                  _shouldSetState = true;
                                                  if (_model
                                                          .resultValidarEndereco ==
                                                      false) {
                                                    await _model
                                                        .columnFormPagComodEnd
                                                        ?.animateTo(
                                                      _model
                                                          .columnFormPagComodEnd!
                                                          .position
                                                          .maxScrollExtent,
                                                      duration: Duration(
                                                          milliseconds: 100),
                                                      curve: Curves.ease,
                                                    );
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }
                                                }
                                                await TblEstabelecimentoTable()
                                                    .update(
                                                  data: {
                                                    'cep': _model
                                                                .varInformarEndereco &&
                                                            !_model
                                                                .varCEPInvalido
                                                        ? _model
                                                            .textFieldCEPTextController
                                                            .text
                                                        : '',
                                                    'rua': _model
                                                                .varInformarEndereco &&
                                                            !_model
                                                                .varCEPInvalido
                                                        ? _model
                                                            .textFieldRuaTextController
                                                            .text
                                                        : '',
                                                    'numero': _model
                                                                .varInformarEndereco &&
                                                            !_model
                                                                .varCEPInvalido
                                                        ? _model
                                                            .textFieldNumeroTextController
                                                            .text
                                                        : '',
                                                    'bairro': _model
                                                                .varInformarEndereco &&
                                                            !_model
                                                                .varCEPInvalido
                                                        ? _model
                                                            .textFieldBairroTextController
                                                            .text
                                                        : '',
                                                    'complemento': _model
                                                                .varInformarEndereco &&
                                                            !_model
                                                                .varCEPInvalido
                                                        ? _model
                                                            .textFieldComplementoTextController
                                                            .text
                                                        : '',
                                                    'uf': () {
                                                      if (_model
                                                              .varInformarEndereco &&
                                                          !_model
                                                              .varCEPInvalido &&
                                                          (_model.apiResulViaCep
                                                                  ?.succeeded ??
                                                              true)) {
                                                        return ViaCepCall.uf(
                                                          (_model.apiResulViaCep
                                                                  ?.jsonBody ??
                                                              ''),
                                                        );
                                                      } else if (_model
                                                              .varInformarEndereco &&
                                                          (FFAppState()
                                                                      .VarTblEstabelecimentoLogado
                                                                      .uf !=
                                                                  '')) {
                                                        return FFAppState()
                                                            .VarTblEstabelecimentoLogado
                                                            .uf;
                                                      } else {
                                                        return '';
                                                      }
                                                    }(),
                                                    'cidade': _model
                                                                .varInformarEndereco &&
                                                            !_model
                                                                .varCEPInvalido
                                                        ? _model
                                                            .textFieldCidadeTextController
                                                            .text
                                                        : '',
                                                    'formas_pagamento': FFAppState()
                                                        .VarTblEstabelecimentoLogado
                                                        .formasPagamento,
                                                    'comodidades': FFAppState()
                                                        .VarTblEstabelecimentoLogado
                                                        .comodidades,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    FFAppState()
                                                        .VarIDEstabelecimentoLogado,
                                                  ),
                                                );
                                                _shouldSetState = true;
                                              } else if (_model
                                                      .pageViewCurrentIndex ==
                                                  4) {
                                              } else if (_model
                                                      .pageViewCurrentIndex ==
                                                  5) {
                                                _model.queryConsServ =
                                                    await TblCadServicosTable()
                                                        .queryRows(
                                                  queryFn: (q) => q.eqOrNull(
                                                    'id_estabelecimento',
                                                    FFAppState()
                                                        .VarIDEstabelecimentoLogado,
                                                  ),
                                                );
                                                _shouldSetState = true;
                                                if (_model.queryConsServ
                                                        ?.length ==
                                                    0) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          title:
                                                              Text('Atenção!'),
                                                          content: Text(
                                                              'Adicione pelo menos um serviço'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }
                                              } else if (_model
                                                      .pageViewCurrentIndex ==
                                                  6) {
                                                _model.queryConsPlano =
                                                    await ViewTblAppPlanosEstabelecimentosTable()
                                                        .queryRows(
                                                  queryFn: (q) => q
                                                      .eqOrNull(
                                                        'id_estabelecimento',
                                                        FFAppState()
                                                            .VarIDEstabelecimentoLogado,
                                                      )
                                                      .eqOrNull(
                                                        'plano_ativo',
                                                        true,
                                                      ),
                                                );
                                                _shouldSetState = true;
                                                if ((_model.textNomeProfissionalTextController
                                                                .text !=
                                                            '') &&
                                                    (stackViewTblAppPlanosEstabelecimentosRow
                                                            .quantProfissionaisCad! <
                                                        stackViewTblAppPlanosEstabelecimentosRow
                                                            .quantProfissionaisMaxSalvo!)) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          title:
                                                              Text('Atenção!'),
                                                          content: Text(
                                                              'Primeiro clique em \"Adicionar Profissional\" para salvar o profissonal!'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }
                                                if (stackViewTblAppPlanosEstabelecimentosRow
                                                        .quantProfissionaisCad ==
                                                    0) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          title:
                                                              Text('Atenção!'),
                                                          content: Text(
                                                              'Adicione pelo menos um profissional'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }
                                              } else if (_model
                                                      .pageViewCurrentIndex ==
                                                  7) {
                                                if (_model.formKey3
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey3.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                _model.acResultContinuarTelaInfo1 =
                                                    await _model
                                                        .acContinuarTelaInfo(
                                                            context);
                                                _shouldSetState = true;
                                                if (!_model
                                                    .acResultContinuarTelaInfo1!) {
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }
                                                if (FFAppState()
                                                    .VarTblEstabelecimentoLogado
                                                    .assistenteCadConcluido) {
                                                  await action_blocks
                                                      .acAtualizarEstabelecimentoLogado(
                                                          context);
                                                }
                                              } else if (_model
                                                      .pageViewCurrentIndex ==
                                                  8) {}

                                              await _model.pageViewController
                                                  ?.nextPage(
                                                duration:
                                                    Duration(milliseconds: 300),
                                                curve: Curves.ease,
                                              );

                                              safeSetState(() {});
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                            },
                                            text: 'Próximo',
                                            icon: Icon(
                                              Icons.navigate_next,
                                              size: 15.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconAlignment: IconAlignment.end,
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.transparent,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color: Colors.white,
                                                    fontSize: MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 12.0
                                                        : 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            showLoadingIndicator: false,
                                          ),
                                        if ((_model.pageViewCurrentIndex ==
                                                8) &&
                                            !(isWeb
                                                ? MediaQuery.viewInsetsOf(
                                                            context)
                                                        .bottom >
                                                    0
                                                : _isKeyboardVisible) &&
                                            !FFAppState()
                                                .VarTblEstabelecimentoLogado
                                                .assistenteCadConcluido)
                                          FFButtonWidget(
                                            onPressed: () async {
                                              await TblEstabelecimentoTable()
                                                  .update(
                                                data: {
                                                  'assistente_cad_concluido':
                                                      true,
                                                },
                                                matchingRows: (rows) =>
                                                    rows.eqOrNull(
                                                  'id',
                                                  FFAppState()
                                                      .VarIDEstabelecimentoLogado,
                                                ),
                                              );
                                              await action_blocks
                                                  .acAtualizarEstabelecimentoLogado(
                                                      context);
                                              Navigator.pop(context);
                                            },
                                            text: 'Concluir',
                                            icon: Icon(
                                              Icons.check_sharp,
                                              size: 15.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconAlignment: IconAlignment.end,
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.transparent,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color: Colors.white,
                                                    fontSize: MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 12.0
                                                        : 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            showLoadingIndicator: false,
                                          ),
                                        Container(
                                          width: 1.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          if (_model.pageViewCurrentIndex == 5)
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 55.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (MediaQuery.sizeOf(context).width <
                                          FFAppState()
                                              .varTamanhoMinimoTelaMenuLateral
                                              .toDouble()) {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          context: context,
                                          builder: (context) {
                                            return WebViewAware(
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.8,
                                                  child: CpCadServicosWidget(
                                                    paramCadastro: true,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: WebViewAware(
                                                child: CpCadServicosWidget(
                                                  paramCadastro: true,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }

                                      await action_blocks
                                          .acConsultarModelosServicos(
                                        context,
                                        paramIDSegmento:
                                            _model.varIDSegmentoSelecionado,
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 24.0,
                                            ),
                                            Text(
                                              'Novo Serviço',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ].divide(SizedBox(height: 2.0)),
                                        ),
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation11']!),
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
            if ((MediaQuery.sizeOf(context).width > 800.0) &&
                responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: Color(0x4C000000),
                    borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Color(0x41E0E3E7),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              38.0, 0.0, 38.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  color: Color(0x3FFFFFFF),
                                  borderRadius: BorderRadius.circular(4.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: _model.pageViewCurrentIndex >= 0
                                        ? FlutterFlowTheme.of(context).secondary
                                        : FlutterFlowTheme.of(context).info,
                                    width: 2.0,
                                  ),
                                ),
                                child: Visibility(
                                  visible: _model.pageViewCurrentIndex >= 0,
                                  child: Icon(
                                    Icons.check,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 14.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  color: Color(0x3FFFFFFF),
                                  borderRadius: BorderRadius.circular(4.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: _model.pageViewCurrentIndex >= 1
                                        ? FlutterFlowTheme.of(context).secondary
                                        : FlutterFlowTheme.of(context).info,
                                    width: 2.0,
                                  ),
                                ),
                                child: Visibility(
                                  visible: _model.pageViewCurrentIndex >= 1,
                                  child: Icon(
                                    Icons.check,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 14.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  color: Color(0x3FFFFFFF),
                                  borderRadius: BorderRadius.circular(4.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: _model.pageViewCurrentIndex >= 2
                                        ? FlutterFlowTheme.of(context).secondary
                                        : FlutterFlowTheme.of(context).info,
                                    width: 2.0,
                                  ),
                                ),
                                child: Visibility(
                                  visible: _model.pageViewCurrentIndex >= 2,
                                  child: Icon(
                                    Icons.check,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 14.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  color: Color(0x3FFFFFFF),
                                  borderRadius: BorderRadius.circular(4.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: _model.pageViewCurrentIndex >= 3
                                        ? FlutterFlowTheme.of(context).secondary
                                        : FlutterFlowTheme.of(context).info,
                                    width: 2.0,
                                  ),
                                ),
                                child: Visibility(
                                  visible: _model.pageViewCurrentIndex >= 3,
                                  child: Icon(
                                    Icons.check,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 14.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  color: Color(0x3FFFFFFF),
                                  borderRadius: BorderRadius.circular(4.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: _model.pageViewCurrentIndex >= 4
                                        ? FlutterFlowTheme.of(context).secondary
                                        : FlutterFlowTheme.of(context).info,
                                    width: 2.0,
                                  ),
                                ),
                                child: Visibility(
                                  visible: _model.pageViewCurrentIndex >= 4,
                                  child: Icon(
                                    Icons.check,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 14.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  color: Color(0x3FFFFFFF),
                                  borderRadius: BorderRadius.circular(4.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: _model.pageViewCurrentIndex >= 5
                                        ? FlutterFlowTheme.of(context).secondary
                                        : FlutterFlowTheme.of(context).info,
                                    width: 2.0,
                                  ),
                                ),
                                child: Visibility(
                                  visible: _model.pageViewCurrentIndex >= 5,
                                  child: Icon(
                                    Icons.check,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 14.0,
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 2.0),
                                child: Text(
                                  'Segmento',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 2.0),
                                child: Text(
                                  'Foto Perfil',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 2.0),
                                child: Text(
                                  'Username',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 2.0),
                                child: Text(
                                  'Horários',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 2.0),
                                child: Text(
                                  'Serviços',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 2.0),
                                child: Text(
                                  'Profissionais',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation12']!),
              ),
            if ((MediaQuery.sizeOf(context).width <
                    FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) &&
                !(isWeb
                    ? MediaQuery.viewInsetsOf(context).bottom > 0
                    : _isKeyboardVisible))
              Container(
                width: 100.0,
                height: 24.0,
                decoration: BoxDecoration(),
              ),
          ],
        ),
      ),
    );
  }
}
