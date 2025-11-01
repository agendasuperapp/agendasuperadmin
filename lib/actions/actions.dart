import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_home_assistente_cad/cp_home_assistente_cad_widget.dart';
import '/pages/admin/a_sistema/home/cp_login/cp_login_widget.dart';
import '/pages/page_mensagens_personalizadas/cp_dialog_info/cp_dialog_info_widget.dart';
import '/pages/page_mensagens_personalizadas/cp_dialog_sucesso/cp_dialog_sucesso_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

Future acBlockAtualizarHorasDispProfissional(
  BuildContext context, {
  required int? paramIDProfissionalAtzHrDipspProf,
}) async {
  List<ViewTblHorariosDispHorasRow>? queryBlockConsHrDisp;

  queryBlockConsHrDisp = await ViewTblHorariosDispHorasTable().queryRows(
    queryFn: (q) => q
        .eqOrNull(
          'id_estabelecimento',
          FFAppState().VarIDEstabelecimentoLogado,
        )
        .eqOrNull(
          'dia_mes_data',
          supaSerialize<DateTime>(FFAppState().varCalendarioDataSelecionada),
        )
        .eqOrNull(
          'id_profissional',
          paramIDProfissionalAtzHrDipspProf,
        )
        .eqOrNull(
          'situacao_agendamento',
          false,
        )
        .order('hora', ascending: true),
  );
  FFAppState().VarTblHorariosDisponiveisProfissional = [];
  FFAppState().VarContadorBlock = 0;
  FFAppState().update(() {});
  while (FFAppState().VarContadorBlock < queryBlockConsHrDisp.length) {
    FFAppState().addToVarTblHorariosDisponiveisProfissional(
        TblHorariosDisponiveisProfissionalStruct(
      idEstabelecimento: FFAppState().VarIDEstabelecimentoLogado,
      idProfissional: paramIDProfissionalAtzHrDipspProf,
      diaSemana: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.diaSemana,
      hora: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.hora,
      idCliente: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.idCliente,
      situacaoAgendamento: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.situacaoAgendamento,
      idServico: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.idServico,
      diaMesData: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.diaMesData,
      ordem: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.ordem,
      idAgendamento: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.idAgendamento,
      nomeCliente: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.nomeCliente,
      agendamentoConfirmado: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.agendamentoConfirmado,
      obsAgendamento: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.obsAgendamento,
      nomeServico: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.nomeServico,
    ));
    FFAppState().VarContadorBlock = FFAppState().VarContadorBlock + 1;
  }
  FFAppState().VarContadorBlock = 0;
  FFAppState().update(() {});
  FFAppState().varQuantHorariosDisponiveisProfissional = FFAppState()
      .VarTblHorariosDisponiveisProfissional
      .where((e) =>
          dateTimeFormat(
            "y-MM-dd",
            e.diaMesData,
            locale: FFLocalizations.of(context).languageCode,
          ) ==
          dateTimeFormat(
            "y-MM-dd",
            FFAppState().varCalendarioDataSelecionada,
            locale: FFLocalizations.of(context).languageCode,
          ))
      .toList()
      .length;
  FFAppState().update(() {});
}

Future acBlockAtualizarDiasDispProfissional(
  BuildContext context, {
  required int? paramIDProfissionalAtzDiasDipspProf,
  required int? paramIDServico,
}) async {
  List<ViewTblHorariosDispDiasRow>? queryConsDiasDisponiveisServ;
  List<ViewTblHorariosDispDiasRow>? queryConsDiasDisponiveisGeral;

  if (paramIDServico! > 0) {
    queryConsDiasDisponiveisServ =
        await ViewTblHorariosDispDiasTable().queryRows(
      queryFn: (q) => q
          .eqOrNull(
            'id_estabelecimento',
            FFAppState().VarIDEstabelecimentoLogado,
          )
          .eqOrNull(
            'mes',
            FFAppState().VarCalendarioMesSelecionado.toString(),
          )
          .gtOrNull(
            'quant_horarios',
            0,
          )
          .eqOrNull(
            'id_profissional',
            paramIDProfissionalAtzDiasDipspProf,
          )
          .eqOrNull(
            'id_servico',
            paramIDServico,
          ),
    );
    FFAppState().VarCalendarioListaDiasDisponiveis =
        queryConsDiasDisponiveisServ
            .map((e) => dateTimeFormat(
                  "y-MM-dd",
                  e.diaMesData,
                  locale: FFLocalizations.of(context).languageCode,
                ))
            .toList()
            .toList()
            .cast<String>();
    FFAppState().update(() {});
  } else {
    queryConsDiasDisponiveisGeral =
        await ViewTblHorariosDispDiasTable().queryRows(
      queryFn: (q) => q
          .eqOrNull(
            'id_estabelecimento',
            FFAppState().VarIDEstabelecimentoLogado,
          )
          .eqOrNull(
            'mes',
            FFAppState().VarCalendarioMesSelecionado.toString(),
          )
          .gtOrNull(
            'quant_horarios',
            0,
          )
          .eqOrNull(
            'id_profissional',
            paramIDProfissionalAtzDiasDipspProf,
          ),
    );
    FFAppState().VarCalendarioListaDiasDisponiveis =
        queryConsDiasDisponiveisGeral
            .map((e) => dateTimeFormat(
                  "y-MM-dd",
                  e.diaMesData,
                  locale: FFLocalizations.of(context).languageCode,
                ))
            .toList()
            .toList()
            .cast<String>();
    FFAppState().update(() {});
  }
}

Future acBlockAtualizarHorasDispEstabelecimento(BuildContext context) async {
  List<ViewTblHorariosDispHorasRow>? queryBlockConsHrDisp;

  queryBlockConsHrDisp = await ViewTblHorariosDispHorasTable().queryRows(
    queryFn: (q) => q
        .eqOrNull(
          'id_estabelecimento',
          FFAppState().VarIDEstabelecimentoLogado,
        )
        .eqOrNull(
          'dia_mes_data',
          supaSerialize<DateTime>(FFAppState().varCalendarioDataSelecionada),
        )
        .eqOrNull(
          'situacao_agendamento',
          false,
        )
        .order('hora', ascending: true),
  );
  FFAppState().VarContadorBlock = 0;
  FFAppState().VarTblHorariosDisponiveisEstabelecimento = [];
  FFAppState().update(() {});
  while (FFAppState().VarContadorBlock < queryBlockConsHrDisp.length) {
    FFAppState().addToVarTblHorariosDisponiveisEstabelecimento(
        TblHorariosDisponiveisStruct(
      idEstabelecimento: FFAppState().VarIDEstabelecimentoLogado,
      idProfissional: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.idProfissional,
      diaSemana: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.diaSemana,
      hora: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.hora,
      idCliente: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.idCliente,
      situacaoAgendamento: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.situacaoAgendamento,
      idServico: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.idServico,
      diaMesData: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.diaMesData,
      ordem: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.ordem,
      idAgendamento: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.idAgendamento,
      nomeCliente: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.nomeCliente,
      nomeServico: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.nomeServico,
      agendamentoConfirmado: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.agendamentoConfirmado,
      obsAgendamento: queryBlockConsHrDisp
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.obsAgendamento,
      selecionado: false,
    ));
    FFAppState().VarContadorBlock = FFAppState().VarContadorBlock + 1;
  }
  FFAppState().VarContadorBlock = 0;
  FFAppState().update(() {});
  FFAppState().varQuantHorariosDisponiveisEstabelecimento = FFAppState()
      .VarTblHorariosDisponiveisEstabelecimento
      .where((e) =>
          dateTimeFormat(
            "y-MM-dd",
            e.diaMesData,
            locale: FFLocalizations.of(context).languageCode,
          ) ==
          dateTimeFormat(
            "y-MM-dd",
            FFAppState().varCalendarioDataSelecionada,
            locale: FFLocalizations.of(context).languageCode,
          ))
      .toList()
      .length;
  FFAppState().update(() {});
}

Future acBlockAtualizarDiasDispEstabelecimento(
  BuildContext context, {
  required int? paramIDServicoEst,
}) async {
  List<ViewTblHorariosDispDiasRow>? queryConsDiasDisponiveisEstServ;
  List<ViewTblHorariosDispDiasRow>? queryConsDiasDisponiveisEstGeral;

  if (paramIDServicoEst! > 0) {
    queryConsDiasDisponiveisEstServ =
        await ViewTblHorariosDispDiasTable().queryRows(
      queryFn: (q) => q
          .eqOrNull(
            'id_estabelecimento',
            FFAppState().VarIDEstabelecimentoLogado,
          )
          .gtOrNull(
            'quant_horarios',
            0,
          )
          .eqOrNull(
            'mes',
            FFAppState().VarCalendarioMesSelecionado.toString(),
          )
          .eqOrNull(
            'id_servico',
            paramIDServicoEst,
          ),
    );
    FFAppState().VarCalendarioListaDiasDisponiveis =
        queryConsDiasDisponiveisEstServ
            .map((e) => dateTimeFormat(
                  "y-MM-dd",
                  e.diaMesData,
                  locale: FFLocalizations.of(context).languageCode,
                ))
            .toList()
            .toList()
            .cast<String>();
    FFAppState().update(() {});
  } else {
    queryConsDiasDisponiveisEstGeral =
        await ViewTblHorariosDispDiasTable().queryRows(
      queryFn: (q) => q
          .eqOrNull(
            'id_estabelecimento',
            FFAppState().VarIDEstabelecimentoLogado,
          )
          .gtOrNull(
            'quant_horarios',
            0,
          )
          .eqOrNull(
            'mes',
            FFAppState().VarCalendarioMesSelecionado.toString(),
          ),
    );
    FFAppState().VarCalendarioListaDiasDisponiveis =
        queryConsDiasDisponiveisEstGeral
            .map((e) => dateTimeFormat(
                  "y-MM-dd",
                  e.diaMesData,
                  locale: FFLocalizations.of(context).languageCode,
                ))
            .toList()
            .toList()
            .cast<String>();
    FFAppState().update(() {});
  }
}

Future acBlockLimparTblCarrinho(BuildContext context) async {}

Future acBlockVerificarHome(BuildContext context) async {
  if (FFAppState().VarAppIniciadoHome == false) {
    context.goNamed(HomePageWidget.routeName);
  }
}

Future acAtualizarClienteLogado(BuildContext context) async {}

Future<bool> acLogarCliente(BuildContext context) async {
  if (FFAppState().VarAbrirJanelasWebAndroid) {
    if (currentUserUid != '') {
      return true;
    }

    await showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: false,
      context: context,
      builder: (context) {
        return WebViewAware(
          child: Padding(
            padding: MediaQuery.viewInsetsOf(context),
            child: CpLoginWidget(),
          ),
        );
      },
    );

    if (currentUserUid != '') {
      return true;
    }

    return false;
  } else {
    if (currentUserUid != '') {
      return true;
    }

    await showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: false,
      context: context,
      builder: (context) {
        return WebViewAware(
          child: Padding(
            padding: MediaQuery.viewInsetsOf(context),
            child: CpLoginWidget(),
          ),
        );
      },
    );

    if (currentUserUid != '') {
      return true;
    }

    return false;
  }
}

Future<bool> acAtualizarEstabelecimentoLogado(
  BuildContext context, {
  String? paramUserIDEstabelecimento,
}) async {
  List<ViewTblEstabelecimentosRow>? queryConsEstabLogado;
  List<ViewTblUsuariosRow>? queryTblUsuario;

  queryConsEstabLogado = await ViewTblEstabelecimentosTable().queryRows(
    queryFn: (q) => q.eqOrNull(
      'user_id',
      paramUserIDEstabelecimento != null && paramUserIDEstabelecimento != ''
          ? paramUserIDEstabelecimento
          : currentUserUid,
    ),
  );
  FFAppState().VarTblEstabelecimentoLogado = TblEstabelecimentoLogadoStruct();
  FFAppState().varTblAfiliado = TblAfiliadoFFezX1b2Struct();
  FFAppState().varTblUsuarios = TblUsuarioLogadoAdminStruct();
  if (queryConsEstabLogado.length == 0) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Estabelecimento não encontrado'),
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
    return false;
  } else {
    FFAppState().updateVarTblEstabelecimentoLogadoStruct(
      (e) => e
        ..idEstabelecimento = queryConsEstabLogado?.firstOrNull?.id
        ..nomeEstabelecimento = queryConsEstabLogado?.firstOrNull?.nome
        ..emailEstabelecimento = queryConsEstabLogado?.firstOrNull?.email
        ..telefoneEstabelecimento = queryConsEstabLogado?.firstOrNull?.telefone
        ..foto = queryConsEstabLogado?.firstOrNull?.fotoCapa
        ..fotoPerfil = queryConsEstabLogado?.firstOrNull?.fotoPerfil
        ..username = queryConsEstabLogado?.firstOrNull?.username
        ..idTema = queryConsEstabLogado?.firstOrNull?.idTema
        ..fotoLightMode = queryConsEstabLogado?.firstOrNull?.fotoLightMode
        ..fotoDarkMod = queryConsEstabLogado?.firstOrNull?.fotoDarkMod
        ..emailVerificado = queryConsEstabLogado?.firstOrNull?.emailVerificado
        ..telefoneVerificado =
            queryConsEstabLogado?.firstOrNull?.telefoneVerificado
        ..cfUsarEstAprovarAgend =
            queryConsEstabLogado?.firstOrNull?.cfUsarEstAprovarAgend
        ..cfEnvMensWhatsAprovar =
            queryConsEstabLogado?.firstOrNull?.cfEnvMensWhatsAprovar
        ..cfMinutosLembreteCl =
            queryConsEstabLogado?.firstOrNull?.cfMinutosLembreteCl
        ..cfUsarClConfirmarAgend =
            queryConsEstabLogado?.firstOrNull?.cfUsarClConfirmarAgend
        ..userId = queryConsEstabLogado?.firstOrNull?.userId
        ..cep = queryConsEstabLogado?.firstOrNull?.cep
        ..tipoDoc = queryConsEstabLogado?.firstOrNull?.tipoDoc
        ..docCpfCnpj = queryConsEstabLogado?.firstOrNull?.docCpfCnpj
        ..inscEstadual = queryConsEstabLogado?.firstOrNull?.inscEstadual
        ..dataNascimento = queryConsEstabLogado?.firstOrNull?.dataNascimento
        ..nomePfisicaRazsocial =
            queryConsEstabLogado?.firstOrNull?.nomePfisicaRazsocial
        ..rua = queryConsEstabLogado?.firstOrNull?.rua
        ..numero = queryConsEstabLogado?.firstOrNull?.numero
        ..bairro = queryConsEstabLogado?.firstOrNull?.bairro
        ..cidade = queryConsEstabLogado?.firstOrNull?.cidade
        ..uf = queryConsEstabLogado?.firstOrNull?.uf
        ..complemento = queryConsEstabLogado?.firstOrNull?.complemento
        ..nomeFantasia = queryConsEstabLogado?.firstOrNull?.nomeFantasia
        ..dataNascimentoString = dateTimeFormat(
          "dd/MM/y",
          queryConsEstabLogado?.firstOrNull?.dataNascimento,
          locale: FFLocalizations.of(context).languageCode,
        )
        ..idAfiliadoIndicador =
            queryConsEstabLogado?.firstOrNull?.idAfiliadoIndicador
        ..genero = queryConsEstabLogado?.firstOrNull?.generoPfisica
        ..userIdAfiliadoIndicador =
            queryConsEstabLogado?.firstOrNull?.userIdAfiliadoIndicador
        ..planoAtivo = queryConsEstabLogado?.firstOrNull?.planoAtivo
        ..planoVencimento = queryConsEstabLogado?.firstOrNull?.planoVencimento
        ..planoDiasRest = queryConsEstabLogado?.firstOrNull?.planoDiasRest
        ..planoVencido = queryConsEstabLogado?.firstOrNull?.planoVencido
        ..planoRenovacao = queryConsEstabLogado?.firstOrNull?.planoRenovacao
        ..assistenteCadConcluido =
            queryConsEstabLogado?.firstOrNull?.assistenteCadConcluido
        ..quantProfissionaisMax =
            queryConsEstabLogado?.firstOrNull?.quantProfissionaisMax
        ..formasPagamento =
            queryConsEstabLogado!.firstOrNull!.formasPagamento.toList()
        ..comodidades = queryConsEstabLogado.firstOrNull!.comodidades.toList()
        ..idSegmento = queryConsEstabLogado.firstOrNull?.idSegmento
        ..nomeSegmento = queryConsEstabLogado.firstOrNull?.nomeSegmento
        ..assinatura = queryConsEstabLogado.firstOrNull?.assinatura
        ..statusPagamento = queryConsEstabLogado.firstOrNull?.statusPagamento
        ..nomeEstado = queryConsEstabLogado.firstOrNull?.nomeEstado,
    );
    FFAppState().updateVarTblWhatsAppStruct(
      (e) => e
        ..instanceName = queryConsEstabLogado?.firstOrNull?.whatsappInstancia
        ..instanceId = queryConsEstabLogado?.firstOrNull?.whatsappIdInstancia
        ..numberWhatsApp = queryConsEstabLogado?.firstOrNull?.whatsappNumero,
    );
    FFAppState().VarIDEstabelecimentoLogado =
        queryConsEstabLogado.firstOrNull!.id!;
    FFAppState().update(() {});
    if (FFAppState().VarEmDesenvolvimento) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'ATUALIZANDO ESTABELECIMENTO...',
            style: TextStyle(),
          ),
          duration: Duration(milliseconds: 1000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
    }
  }

  if ((queryConsEstabLogado.firstOrNull?.idAfiliado != null) &&
      (queryConsEstabLogado.firstOrNull!.idAfiliado! > 0)) {
    FFAppState().varIDAfiliadoLogado =
        queryConsEstabLogado.firstOrNull!.idAfiliado!;
    await action_blocks.acAtualizarAfiliadoCad(context);
  }
  queryTblUsuario = await ViewTblUsuariosTable().queryRows(
    queryFn: (q) => q
        .eqOrNull(
          'user_id',
          paramUserIDEstabelecimento != null && paramUserIDEstabelecimento != ''
              ? paramUserIDEstabelecimento
              : currentUserUid,
        )
        .eqOrNull(
          'id_estabelecimento',
          FFAppState().VarIDEstabelecimentoLogado,
        ),
  );
  if (queryTblUsuario.length == 0) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Usuário não encontrado'),
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
    return false;
  }
  if (!(paramUserIDEstabelecimento != null &&
      paramUserIDEstabelecimento != '')) {
    FFAppState().VarUltimoTelLogado =
        queryConsEstabLogado.firstOrNull!.telefone!;
    FFAppState().VarUltimoEmailLogado =
        queryConsEstabLogado.firstOrNull!.email!;
    FFAppState().updateVarTblUsuariosStruct(
      (e) => e
        ..idUsuarioLogado = queryTblUsuario?.firstOrNull?.id
        ..nome = queryTblUsuario?.firstOrNull?.nome
        ..email = currentUserEmail
        ..telefone = queryTblUsuario?.firstOrNull?.telefone
        ..fotoPerfil = queryTblUsuario?.firstOrNull?.fotoPerfil
        ..idTipoUsuario = queryTblUsuario?.firstOrNull?.idTipoUsuario
        ..tipoUsuario = queryTblUsuario?.firstOrNull?.tipoUsuario
        ..adminSistema = queryTblUsuario?.firstOrNull?.adminSistema,
    );
    FFAppState().updateVarTblEstabelecimentoLogadoStruct(
      (e) => e..nomeCabecalho = queryConsEstabLogado?.firstOrNull?.nome,
    );
    FFAppState().update(() {});
  }
  if (FFAppState().VarEmDesenvolvimento) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'FIM  ATUALIZAÇÃO ESTABELECIMENTO...',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 1000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  }
  return true;
}

Future<bool> acWhatsAppEnviarMensagem(
  BuildContext context, {
  required String? paramNumeroWhatsApp,
  required String? paramMensagem,
  required bool? paramEnviarDoEstabelecimento,
}) async {
  ApiCallResponse? apiResultWhatsApp;

  apiResultWhatsApp = await EvolutionWhatsAppGroup.messagesendCall.call(
    numeroWhatsappEnviar: paramNumeroWhatsApp,
    texto: paramMensagem,
    instancia: paramEnviarDoEstabelecimento == true
        ? FFAppState().VarTblWhatsApp.instanceName
        : 'Agenda Super',
    apikeyUsuario: paramEnviarDoEstabelecimento == true
        ? FFAppState().VarTblWhatsApp.apikey
        : '8F494637FD22-4B3A-BB3A-5DAAD0E63706',
  );

  if ((apiResultWhatsApp.succeeded ?? true)) {
    return true;
  }

  unawaited(
    () async {}(),
  );
  return false;
}

Future<bool> acWhatsAppVerificarConexao(
  BuildContext context, {
  required bool? paramExibirMensagemConexao,
}) async {
  ApiCallResponse? apiResultVerificarBlock;

  if (FFAppState().VarTblWhatsApp.instanceName == '') {
    if (paramExibirMensagemConexao!) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'WhatsApp não conectado',
            style: TextStyle(),
          ),
          duration: Duration(milliseconds: 1000),
          backgroundColor: FlutterFlowTheme.of(context).error,
        ),
      );
    }
    return false;
  }
  apiResultVerificarBlock =
      await EvolutionWhatsAppGroup.fetchInstancesCall.call(
    nomeInstancia: FFAppState().VarTblWhatsApp.instanceName,
    apikeySistema: FFAppState().varAPIKeySistemaEvolutionWhatsApp,
  );

  if ((apiResultVerificarBlock.succeeded ?? true)) {
    if (EvolutionWhatsAppGroup.fetchInstancesCall.connectionStatus(
          (apiResultVerificarBlock.jsonBody ?? ''),
        ) ==
        'open') {
      await TblEstabelecimentoTable().update(
        data: {
          'whatsapp_instancia': EvolutionWhatsAppGroup.fetchInstancesCall.name(
            (apiResultVerificarBlock.jsonBody ?? ''),
          ),
          'whatsapp_id_instancia': EvolutionWhatsAppGroup.fetchInstancesCall.id(
            (apiResultVerificarBlock.jsonBody ?? ''),
          ),
          'whatsapp_numero': functions.fcRetornarStringAntesCaracteres(
              EvolutionWhatsAppGroup.fetchInstancesCall.ownerJid(
                (apiResultVerificarBlock.jsonBody ?? ''),
              )!,
              '@'),
          'whatsapp_data_conexao':
              EvolutionWhatsAppGroup.fetchInstancesCall.updatedAt(
            (apiResultVerificarBlock.jsonBody ?? ''),
          ),
          'whatsapp_apikey': EvolutionWhatsAppGroup.fetchInstancesCall.token(
            (apiResultVerificarBlock.jsonBody ?? ''),
          ),
          'whatsapp_tipo_whatsapp':
              EvolutionWhatsAppGroup.fetchInstancesCall.integration(
            (apiResultVerificarBlock.jsonBody ?? ''),
          ),
          'whatsapp_conectado': true,
          'whatsapp_data_ult_verificacao':
              supaSerialize<DateTime>(getCurrentTimestamp),
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          FFAppState().VarIDEstabelecimentoLogado,
        ),
      );
      FFAppState().updateVarTblWhatsAppStruct(
        (e) => e
          ..connectionStatus =
              EvolutionWhatsAppGroup.fetchInstancesCall.connectionStatus(
            (apiResultVerificarBlock?.jsonBody ?? ''),
          )
          ..ownerJid = EvolutionWhatsAppGroup.fetchInstancesCall.ownerJid(
            (apiResultVerificarBlock?.jsonBody ?? ''),
          )
          ..numberWhatsApp = functions.fcRetornarStringAntesCaracteres(
              EvolutionWhatsAppGroup.fetchInstancesCall.ownerJid(
                (apiResultVerificarBlock?.jsonBody ?? ''),
              )!,
              '@')
          ..profilePicUrl =
              EvolutionWhatsAppGroup.fetchInstancesCall.profilePicUrl(
            (apiResultVerificarBlock?.jsonBody ?? ''),
          )
          ..profileName = EvolutionWhatsAppGroup.fetchInstancesCall.profileName(
            (apiResultVerificarBlock?.jsonBody ?? ''),
          )
          ..integration = EvolutionWhatsAppGroup.fetchInstancesCall.integration(
            (apiResultVerificarBlock?.jsonBody ?? ''),
          )
          ..apikey = EvolutionWhatsAppGroup.fetchInstancesCall.token(
            (apiResultVerificarBlock?.jsonBody ?? ''),
          ),
      );
      FFAppState().update(() {});
      if (paramExibirMensagemConexao!) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'WhatsApp Conectado...',
              style: TextStyle(),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).success,
          ),
        );
      }
      return true;
    } else {
      FFAppState().updateVarTblWhatsAppStruct(
        (e) => e..connectionStatus = 'close',
      );
      FFAppState().update(() {});
      await TblEstabelecimentoTable().update(
        data: {
          'whatsapp_numero': 'CLOSE',
          'whatsapp_data_ult_verificacao':
              supaSerialize<DateTime>(getCurrentTimestamp),
          'whatsapp_conectado': false,
          'whatsapp_data_conexao': null,
          'whatsapp_tipo_conexao': 'CLOSE',
          'whatsapp_tipo_whatsapp': 'CLOSE',
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          FFAppState().VarIDEstabelecimentoLogado,
        ),
      );
      if (paramExibirMensagemConexao!) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'WhatsApp DESCONECTADO',
              style: TextStyle(),
            ),
            duration: Duration(milliseconds: 10000),
            backgroundColor: FlutterFlowTheme.of(context).error,
          ),
        );
      }
      return false;
    }
  } else {
    FFAppState().updateVarTblWhatsAppStruct(
      (e) => e..connectionStatus = 'erro',
    );
    FFAppState().update(() {});
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Falha ao verificar conexão WhatsApp: [${FFAppState().VarTblWhatsApp.instanceName}]  ${(apiResultVerificarBlock.bodyText ?? '')}',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 10000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return false;
  }
}

Future acAtualizarInicializacaoSistema(
  BuildContext context, {
  bool? paramNaoAtualizarTabelas,
}) async {
  bool? resultVerificarConex;
  List<String>? customDeviceInfo;
  String? resultgetLoadedAppVersionIni;
  bool? resultisRunningAsPWAIni;

  if (kDebugMode || FFAppState().VarEmDesenvolvimento) {
    FFAppState().varIDAPPAfiliado = 3;
    FFAppState().update(() {});
  }
  if ((FFAppState().varCarregouPrimeiraPagina == true) &&
      loggedIn &&
      ((paramNaoAtualizarTabelas == null) ||
          (paramNaoAtualizarTabelas == false))) {
    await action_blocks.acAtualizarEstabelecimentoLogado(context);
    await action_blocks.acAtualizarAfiliadoCad(context);
    await action_blocks.acAtualizarSegmentos(context);
    await action_blocks.acAtualizarModelosBanners(context);
    resultVerificarConex = await action_blocks.acWhatsAppVerificarConexao(
      context,
      paramExibirMensagemConexao: false,
    );
  }
  if ((currentUserUid != '') &&
      (FFAppState().VarTblEstabelecimentoLogado.assistenteCadConcluido ==
          false) &&
      !FFAppState().varAssistenteCadastroAberto &&
      FFAppState().varCarregouPrimeiraPagina &&
      (FFAppState().varIDAPPAfiliado == 1)) {
    if (MediaQuery.sizeOf(context).width < 900.0) {
      showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return WebViewAware(
            child: Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: CpHomeAssistenteCadWidget(),
            ),
          );
        },
      );

      unawaited(
        () async {}(),
      );
    } else {
      showDialog(
        barrierColor: Color(0xE5000000),
        context: context,
        builder: (dialogContext) {
          return Dialog(
            elevation: 0,
            insetPadding: EdgeInsets.zero,
            backgroundColor: Colors.transparent,
            alignment: AlignmentDirectional(0.0, 0.0)
                .resolve(Directionality.of(context)),
            child: WebViewAware(
              child: CpHomeAssistenteCadWidget(),
            ),
          );
        },
      );
    }

    FFAppState().varAssistenteCadastroAberto = true;
  }
  await Future.wait([
    Future(() async {
      if (FFAppState().VarTblDispositivoInformacoes.osName != '') {
        return;
      }
      customDeviceInfo = await actions.caSistemaOpDetectAll();
      resultgetLoadedAppVersionIni = await actions.caWebGetLoadedAppVersion();
      resultisRunningAsPWAIni = await actions.caWebisRunningAsPWA();
      if (customDeviceInfo?.firstOrNull != 'NULL') {
        FFAppState().updateVarTblDispositivoInformacoesStruct(
          (e) => e
            ..osName = customDeviceInfo?.elementAtOrNull(0)
            ..deviceId = customDeviceInfo?.elementAtOrNull(1)
            ..deviceName = customDeviceInfo?.elementAtOrNull(2)
            ..osVersion = customDeviceInfo?.elementAtOrNull(3)
            ..osVersionCode = customDeviceInfo?.elementAtOrNull(4)
            ..softwareName = customDeviceInfo?.elementAtOrNull(5)
            ..softwareVersion = customDeviceInfo?.elementAtOrNull(6)
            ..applicationId = customDeviceInfo?.elementAtOrNull(7)
            ..applicationType = customDeviceInfo?.elementAtOrNull(8)
            ..applicationName = customDeviceInfo?.elementAtOrNull(9)
            ..applicationVersion = customDeviceInfo?.elementAtOrNull(10)
            ..applicationBuildCode = customDeviceInfo?.elementAtOrNull(11)
            ..tamanhoTela =
                'H:${MediaQuery.sizeOf(context).height.toString()}  W: ${MediaQuery.sizeOf(context).width.toString()}'
            ..pwa = resultisRunningAsPWAIni
            ..appVersionLoaded = resultgetLoadedAppVersionIni,
        );
      }
      if (FFAppState().VarTblDispositivoInformacoes.deviceId == '') {
        FFAppState().updateVarTblDispositivoInformacoesStruct(
          (e) => e
            ..deviceId = '1234560${random_data.randomString(
              10,
              10,
              false,
              false,
              true,
            )}',
        );
        FFAppState().update(() {});
      }
      if ((isWeb == true) &&
          (FFAppState().VarTblDispositivoInformacoes.osName == 'Android')) {
        FFAppState().VarAbrirJanelasWebAndroid = true;
      } else {
        FFAppState().VarAbrirJanelasWebAndroid = false;
      }

      if (FFAppState().VarEmDesenvolvimento) {
        FFAppState().VarAbrirJanelasWebAndroid = false;
      }
      if (FFAppState().VarEmDesenvolvimento) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'INICIALIZAÇÃO CONCLUÍDA...',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).error,
              ),
            ),
            duration: Duration(milliseconds: 1000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
      }
    }),
    Future(() async {
      if ((currentUserUid != '') &&
          (isAndroid || isiOS) &&
          (FFAppState().varAPPOneSignalInicializado == false) &&
          (FFAppState().varAPPNotificacoesAtivas == true)) {
        await action_blocks.acOneSignalAPPInicializarNotificacoes(context);
      } else if (isWeb) {
        if (isWeb) {
          unawaited(
            () async {
              await action_blocks.acOneSignalWebCarregarNotificacoes(
                context,
                paramFuncao: 'SETINI',
              );
            }(),
          );
          await action_blocks.acOneSignalWebAtualizarOptions(context);
        }
      }
    }),
  ]);
}

Future acMensagemDialog(
  BuildContext context, {
  String? paramTitulo,
  required String? paramMensagem,
  required bool? paramVerCarrinho,
  required String? paramTipo,
  required bool? paramPadrao,
  String? paramObservacao,
}) async {
  if (paramTipo == 'sucesso') {
    await showDialog(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          alignment: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          child: WebViewAware(
            child: CpDialogSucessoWidget(
              paramMensagem: paramMensagem!,
              paramObservacao: paramObservacao,
            ),
          ),
        );
      },
    );

    return;
  }
  if (paramPadrao!) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text(paramTitulo!),
            content: Text(paramMensagem!),
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
          child: WebViewAware(
            child: CpDialogInfoWidget(
              paramTitulo: paramTitulo!,
              paramMensagem: paramMensagem!,
              paramCorTexto: () {
                if (paramTipo == 'info') {
                  return FlutterFlowTheme.of(context).secondaryText;
                } else if (paramTipo == 'erro') {
                  return FlutterFlowTheme.of(context).error;
                } else {
                  return FlutterFlowTheme.of(context).primary;
                }
              }(),
              paramCorFundo: FlutterFlowTheme.of(context).secondaryBackground,
              paramCorTitulo: () {
                if (paramTipo == 'info') {
                  return FlutterFlowTheme.of(context).secondaryText;
                } else if (paramTipo == 'erro') {
                  return FlutterFlowTheme.of(context).error;
                } else {
                  return FlutterFlowTheme.of(context).primary;
                }
              }(),
              paramVerCarrinho: paramVerCarrinho,
            ),
          ),
        );
      },
    );

    return;
  }
}

Future<bool> acSairSistema(BuildContext context) async {
  String? acResultSetOneSignalEsternalUserIdLogoff2;

  var confirmDialogResponse = await showDialog<bool>(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atençaõ!'),
              content: Text('Deseja sair do usuário logado no sistema?'),
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
    FFAppState().VarTblEstabelecimentoLogado = TblEstabelecimentoLogadoStruct();
    FFAppState().VarIDUsuarioLogado = 0;
    FFAppState().varPaginaSelecionada = '';
    FFAppState().VarTblWhatsApp = TblWhatsAppStruct();
    FFAppState().VarIDEstabelecimentoLogado = 0;
    FFAppState().varTblAfiliado = TblAfiliadoFFezX1b2Struct();
    FFAppState().varIDAfiliadoLogado = 0;
    FFAppState().varTblUsuarios = TblUsuarioLogadoAdminStruct();
    FFAppState().varAPPIDOneSignal = '';
    FFAppState().varAPPOneSignalInicializado = false;
    FFAppState().varAPPNotificacoesAtivas = true;
    FFAppState().varWebOneSignalContadorAtzOptions = 0;
    FFAppState().varWebOneSignalTblOptions =
        TblOneSignalOptionsXveSve1azStruct();
    FFAppState().varWebOneSignalOptions = [];
    FFAppState().varWebOneSignalStatusSetIDExterno = '';
    FFAppState().varWebOneSignalResultSetExternID = '';
    FFAppState().varWebOneSignalWebStatusNotificacao = '';
    FFAppState().varWebOneSignalNotificacoesAtivas = true;
    FFAppState().deleteVarUltimaSenhaLogada();
    FFAppState().varUltimaSenhaLogada = '';

    FFAppState().varAssistenteCadastroAberto = false;
    if (isAndroid || isiOS) {
      unawaited(
        () async {
          await actions.caAPPOneSignalLogoutExternalId();
        }(),
      );
    }
    if (isWeb) {
      unawaited(
        () async {
          acResultSetOneSignalEsternalUserIdLogoff2 =
              await actions.caWebOneSignalSetExternalUserId(
            'LOGOFF${FFAppState().VarTblDispositivoInformacoes.deviceId}',
          );
        }(),
      );
      FFAppState().varWebOneSignalResultSetExternID = 'LOGOFF';
      FFAppState().varWebOneSignalStatusSetIDExterno = 'LOGOFF';
      FFAppState().update(() {});
    }
    return true;
  } else {
    return false;
  }
}

Future<bool> acWhatsAppDeletarConexao(
  BuildContext context, {
  required String? paramNomeInstancia,
}) async {
  ApiCallResponse? apiResultDeleteInstance;

  apiResultDeleteInstance =
      await EvolutionWhatsAppGroup.deleteInstanceCall.call(
    nomeInstancia: paramNomeInstancia,
    apikeySistema: FFAppState().varAPIKeySistemaEvolutionWhatsApp,
  );

  if ((apiResultDeleteInstance.succeeded ?? true)) {
    await TblEstabelecimentoTable().update(
      data: {
        'whatsapp_instancia': null,
        'whatsapp_id_instancia': null,
        'whatsapp_numero': null,
        'whatsapp_data_conexao': null,
        'whatsapp_apikey': null,
        'whatsapp_conectado': false,
        'whatsapp_tipo_conexao': 'DELETADO',
        'whatsapp_tipo_whatsapp': 'DELETADO',
        'whatsapp_data_ult_verificacao':
            supaSerialize<DateTime>(getCurrentTimestamp),
      },
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        FFAppState().VarIDEstabelecimentoLogado,
      ),
    );
    FFAppState().VarTblWhatsApp = TblWhatsAppStruct();
    FFAppState().updateVarTblWhatsAppStruct(
      (e) => e..connectionStatus = 'delete',
    );
    return true;
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Falha ao deletar conexão... Tente novamente',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
    return false;
  }
}

Future acCadastrarHrFuncionamento(BuildContext context) async {
  List<TblHorariosFuncionamentoRow>? queryConsHrFunc;

  queryConsHrFunc = await TblHorariosFuncionamentoTable().queryRows(
    queryFn: (q) => q.eqOrNull(
      'id_estabelecimento',
      FFAppState().VarIDEstabelecimentoLogado,
    ),
  );
  if (queryConsHrFunc.length == 0) {
    FFAppState().VarContadorBlock = 0;
    while (FFAppState().VarContadorBlock < 7) {
      await TblHorariosFuncionamentoTable().insert({
        'id_estabelecimento': FFAppState().VarIDEstabelecimentoLogado,
        'dia': () {
          if (FFAppState().VarContadorBlock == 0) {
            return 'Domingo';
          } else if (FFAppState().VarContadorBlock == 1) {
            return 'Segunda-Feira';
          } else if (FFAppState().VarContadorBlock == 2) {
            return 'Terça-Feira';
          } else if (FFAppState().VarContadorBlock == 3) {
            return 'Quarta-Feira';
          } else if (FFAppState().VarContadorBlock == 4) {
            return 'Quinta-Feira';
          } else if (FFAppState().VarContadorBlock == 5) {
            return 'Sexta-Feira';
          } else if (FFAppState().VarContadorBlock == 6) {
            return 'Sábado';
          } else {
            return '0';
          }
        }(),
        'fechado': FFAppState().VarContadorBlock == 0 ? true : false,
        'ordem': FFAppState().VarContadorBlock,
        'sigla_dia': () {
          if (FFAppState().VarContadorBlock == 0) {
            return 'DOM';
          } else if (FFAppState().VarContadorBlock == 1) {
            return 'SEG';
          } else if (FFAppState().VarContadorBlock == 2) {
            return 'TER';
          } else if (FFAppState().VarContadorBlock == 3) {
            return 'QUA';
          } else if (FFAppState().VarContadorBlock == 4) {
            return 'QUI';
          } else if (FFAppState().VarContadorBlock == 5) {
            return 'SEX';
          } else if (FFAppState().VarContadorBlock == 6) {
            return 'SÁB';
          } else {
            return '0';
          }
        }(),
        'user_id': FFAppState().VarTblEstabelecimentoLogado.userId,
        'horario_1_inicio': FFAppState().VarContadorBlock == 0 ? null : '08:00',
        'horario_2_inicio': () {
          if (FFAppState().VarContadorBlock == 0) {
            return null;
          } else if (FFAppState().VarContadorBlock == 6) {
            return null;
          } else {
            return '13:00';
          }
        }(),
        'horario_1_fim': () {
          if (FFAppState().VarContadorBlock == 0) {
            return null;
          } else if (FFAppState().VarContadorBlock == 6) {
            return null;
          } else {
            return '11:00';
          }
        }(),
        'horario_2_fim': () {
          if (FFAppState().VarContadorBlock == 0) {
            return null;
          } else if (FFAppState().VarContadorBlock == 6) {
            return '12:00';
          } else {
            return '18:00';
          }
        }(),
      });
      FFAppState().VarContadorBlock = FFAppState().VarContadorBlock + 1;
    }
  }
}

Future<String> acCriptografarStringMD5(
  BuildContext context, {
  required String? paramString,
}) async {
  String? fcResultCripMD5;

  if (FFAppState().VarTblDispositivoInformacoes.deviceId == '') {
    await action_blocks.acAtualizarInicializacaoSistema(
      context,
      paramNaoAtualizarTabelas: true,
    );
  }
  FFAppState().varDataCriptoBlock = getCurrentTimestamp.toString();
  FFAppState().varKeyCriptoBlock = '${random_data.randomString(
    6,
    10,
    true,
    false,
    true,
  )}${random_data.randomInteger(100, 9999).toString()}';
  FFAppState().varStringCriptoBlock =
      '59${FFAppState().varDataCriptoBlock}25${FFAppState().VarTblDispositivoInformacoes.deviceId}69${FFAppState().varKeyCriptoBlock}5${currentUserUid}1728${paramString}';
  fcResultCripMD5 = await actions.caCriptografarMD5(
    '${functions.fcCountCaracteres(FFAppState().varStringCriptoBlock).toString()}${functions.fcSomarCaracteresNumericosString(FFAppState().varStringCriptoBlock).toString()}${FFAppState().varKeyCriptoBlock}',
  );
  return fcResultCripMD5;
}

Future acAtualizarSegmentos(BuildContext context) async {
  List<TblAppSegmentosRow>? queryConsSegmentos;

  queryConsSegmentos = await TblAppSegmentosTable().queryRows(
    queryFn: (q) => q
        .eqOrNull(
          'situacao',
          true,
        )
        .order('ordem', ascending: true),
  );
  FFAppState().VarContadorBlock = 0;
  FFAppState().varTblSegmentos = [];
  while (FFAppState().VarContadorBlock < queryConsSegmentos.length) {
    FFAppState().addToVarTblSegmentos(TblSegmentosDxV1cPzStruct(
      id: queryConsSegmentos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.id,
      nome: queryConsSegmentos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.nome,
      descricao: queryConsSegmentos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.descricao,
      foto: queryConsSegmentos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.foto,
      ordem: queryConsSegmentos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.ordem,
    ));
    FFAppState().VarContadorBlock = FFAppState().VarContadorBlock + 1;
  }
  if (FFAppState().VarEmDesenvolvimento) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'SEGMENTOS CARREGADOS...',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 1000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  }
}

Future acAtualizarAfiliadoCad(BuildContext context) async {
  List<ViewTblAfiliadoCadRow>? queryConsAfiliado;

  queryConsAfiliado = await ViewTblAfiliadoCadTable().queryRows(
    queryFn: (q) => q.eqOrNull(
      'id',
      FFAppState().varIDAfiliadoLogado,
    ),
  );
  if (queryConsAfiliado.length > 0) {
    FFAppState().updateVarTblAfiliadoStruct(
      (e) => e
        ..id = queryConsAfiliado?.firstOrNull?.id
        ..nome = queryConsAfiliado?.firstOrNull?.nomeFormatado
        ..telefone = queryConsAfiliado?.firstOrNull?.telefone
        ..fotoPerfil = queryConsAfiliado?.firstOrNull?.fotoPerfil
        ..rua = queryConsAfiliado?.firstOrNull?.rua
        ..numero = queryConsAfiliado?.firstOrNull?.numero
        ..bairro = queryConsAfiliado?.firstOrNull?.bairro
        ..cidade = queryConsAfiliado?.firstOrNull?.cidade
        ..uf = queryConsAfiliado?.firstOrNull?.uf
        ..cep = queryConsAfiliado?.firstOrNull?.cep
        ..complemento = queryConsAfiliado?.firstOrNull?.complemento
        ..instagran = queryConsAfiliado?.firstOrNull?.instagran
        ..facebook = queryConsAfiliado?.firstOrNull?.facebook
        ..tiktok = queryConsAfiliado?.firstOrNull?.tiktok
        ..username = queryConsAfiliado?.firstOrNull?.username
        ..tipoDoc = queryConsAfiliado?.firstOrNull?.tipoDoc
        ..docCpfCnpj = queryConsAfiliado?.firstOrNull?.docCpfCnpj
        ..inscEstadual = queryConsAfiliado?.firstOrNull?.inscEstadual
        ..genero = queryConsAfiliado?.firstOrNull?.genero
        ..dataNascimento = queryConsAfiliado?.firstOrNull?.dataNascimento
        ..statusAfiliacao = queryConsAfiliado?.firstOrNull?.statusAfiliacao
        ..dataNascimentoString = dateTimeFormat(
          "dd/MM/y",
          queryConsAfiliado?.firstOrNull?.dataNascimento,
          locale: FFLocalizations.of(context).languageCode,
        )
        ..nfEmitida = queryConsAfiliado?.firstOrNull?.nfEmitida
        ..dataCadastro = queryConsAfiliado?.firstOrNull?.dataCadastro
        ..dataSaque = queryConsAfiliado?.firstOrNull?.dataSaque
        ..diaSemanaSaque = queryConsAfiliado?.firstOrNull?.diaSaque,
    );
    FFAppState().update(() {});
    if (FFAppState().VarEmDesenvolvimento) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'AFILIADO ATUALIZADO',
            style: TextStyle(),
          ),
          duration: Duration(milliseconds: 1000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
    }
  } else {
    return;
  }
}

Future<String> acConsultarTelefone(
  BuildContext context, {
  required String? paramTelefone,
  required String? paramTabela,
  required int? paramID,
}) async {
  String? acBlockRecultCriptMD5ConsTel;
  ApiCallResponse? apiResultConsTel;

  acBlockRecultCriptMD5ConsTel = await action_blocks.acCriptografarStringMD5(
    context,
    paramString:
        '${functions.fcRemoverCaracteresELetrasString(paramTelefone!)}89${paramTabela}',
  );
  apiResultConsTel =
      await FunctionsServerSupabaseGroup.consultarTelefoneCall.call(
    paramData: FFAppState().varDataCriptoBlock,
    paramDv: FFAppState().VarTblDispositivoInformacoes.deviceId,
    paramKey: FFAppState().varKeyCriptoBlock,
    paramTabela: paramTabela,
    paramTel: functions.fcRemoverCaracteresELetrasString(paramTelefone),
    paramToken: acBlockRecultCriptMD5ConsTel,
    paramUserId: currentUserUid,
  );

  if (FunctionsServerSupabaseGroup.consultarTelefoneCall.result(
        (apiResultConsTel.jsonBody ?? ''),
      ) ==
      'True') {
    if (FunctionsServerSupabaseGroup.consultarTelefoneCall.id(
          (apiResultConsTel.jsonBody ?? ''),
        ) ==
        paramID) {
      return 'False';
    }

    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Esse telefone ${paramTelefone} Já está cadastrado no sistema.'),
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
    return 'True';
  } else if (FunctionsServerSupabaseGroup.consultarTelefoneCall.result(
        (apiResultConsTel.jsonBody ?? ''),
      ) ==
      'False') {
    return FunctionsServerSupabaseGroup.consultarTelefoneCall.result(
      (apiResultConsTel.jsonBody ?? ''),
    )!;
  } else if (FunctionsServerSupabaseGroup.consultarTelefoneCall.result(
        (apiResultConsTel.jsonBody ?? ''),
      ) ==
      'PARVAZ') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar telefone:${'\n\n'}Código: PARVAZ'),
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
    return FunctionsServerSupabaseGroup.consultarTelefoneCall.result(
      (apiResultConsTel.jsonBody ?? ''),
    )!;
  } else if (FunctionsServerSupabaseGroup.consultarTelefoneCall.result(
        (apiResultConsTel.jsonBody ?? ''),
      ) ==
      'TOKINV') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar telefone:${'\n\n'}Código: TOKINV'),
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
    return FunctionsServerSupabaseGroup.consultarTelefoneCall.result(
      (apiResultConsTel.jsonBody ?? ''),
    )!;
  } else if (!(apiResultConsTel.succeeded ?? true)) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao consultar telefone:${'\n\n'}Código: Sucess False'),
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
    return 'ERRO';
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao consultar telefone:${'\n\n'}Código: Indefinido ${(apiResultConsTel?.statusCode ?? 200).toString()}'),
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
    return 'ERRO';
  }
}

Future<String> acConsultarUsername(
  BuildContext context, {
  required String? paramUsername,
  required String? paramTabela,
  required int? paramID,
}) async {
  String? acBlockRecultCriptMD5ConsUsername;
  ApiCallResponse? apiResultConsUsernamex;

  acBlockRecultCriptMD5ConsUsername =
      await action_blocks.acCriptografarStringMD5(
    context,
    paramString: '${paramUsername}89${paramTabela}',
  );
  apiResultConsUsernamex =
      await FunctionsServerSupabaseGroup.consultarUsernameCall.call(
    paramData: FFAppState().varDataCriptoBlock,
    paramDv: FFAppState().VarTblDispositivoInformacoes.deviceId,
    paramKey: FFAppState().varKeyCriptoBlock,
    paramTabela: paramTabela,
    paramToken: acBlockRecultCriptMD5ConsUsername,
    paramUserId: currentUserUid,
    paramUsername: functions.fcConverterStringMinusculo(paramUsername!),
  );

  if (FunctionsServerSupabaseGroup.consultarUsernameCall.result(
        (apiResultConsUsernamex.jsonBody ?? ''),
      ) ==
      'True') {
    if (FunctionsServerSupabaseGroup.consultarUsernameCall.id(
          (apiResultConsUsernamex.jsonBody ?? ''),
        ) ==
        paramID) {
      return 'False';
    }

    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Esse username  ${paramUsername} Já está cadastrado no sistema.'),
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
    return 'True';
  } else if (FunctionsServerSupabaseGroup.consultarUsernameCall.result(
        (apiResultConsUsernamex.jsonBody ?? ''),
      ) ==
      'False') {
    return 'False';
  } else if (FunctionsServerSupabaseGroup.consultarUsernameCall.result(
        (apiResultConsUsernamex.jsonBody ?? ''),
      ) ==
      'PARVAZ') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar username:${'\n\n'}Código: PARVAZ'),
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
    return 'PARVAZ';
  } else if (FunctionsServerSupabaseGroup.consultarUsernameCall.result(
        (apiResultConsUsernamex.jsonBody ?? ''),
      ) ==
      'TOKINV') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar username:${'\n\n'}Código: TOKINV'),
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
    return 'TOKINV';
  } else if (!(apiResultConsUsernamex.succeeded ?? true)) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao consultar username:${'\n\n'}Código: Sucess False'),
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
    return 'ERRO';
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao consultar username:${'\n\n'}Código: Indefinido ${(apiResultConsUsernamex?.statusCode ?? 200).toString()}'),
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
    return 'ERRO';
  }
}

Future acAtualizarPlanos(
  BuildContext context, {
  required int? paramIDAfiliadoApp,
}) async {
  List<ViewTblAppPlanosPeriodosRow>? queryConsPlanosPeriodo;
  List<ViewTblAppPlanosRow>? queryConsTblAppPlanos;

  queryConsPlanosPeriodo = await ViewTblAppPlanosPeriodosTable().queryRows(
    queryFn: (q) => q
        .eqOrNull(
          'situacao',
          true,
        )
        .order('tempo', ascending: true),
  );
  queryConsTblAppPlanos = await ViewTblAppPlanosTable().queryRows(
    queryFn: (q) => q
        .eqOrNull(
          'situacao',
          true,
        )
        .eqOrNull(
          'situacao_periodo',
          true,
        )
        .eqOrNull(
          'id_afiliado_app',
          paramIDAfiliadoApp,
        ),
  );
  FFAppState().VarContadorBlock = 0;
  FFAppState().varTblPlanosPeriodos = [];
  while (FFAppState().VarContadorBlock < queryConsPlanosPeriodo.length) {
    FFAppState().addToVarTblPlanosPeriodos(TblPlanosPeriodosXTfeZ1cStruct(
      id: queryConsPlanosPeriodo
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.id,
      nome: queryConsPlanosPeriodo
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.nome,
      tempo: queryConsPlanosPeriodo
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.tempo,
      observacao: queryConsPlanosPeriodo
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.observacao,
      maisComprado: queryConsPlanosPeriodo
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.maisComprado,
      parcelamentoSjuros: queryConsPlanosPeriodo
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.parcelamentoSjuros,
      maxParcSjuros: queryConsPlanosPeriodo
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.maxParcSjuros,
      periodoMesDia: queryConsPlanosPeriodo
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.periodoMesDia,
    ));
    FFAppState().VarContadorBlock = FFAppState().VarContadorBlock + 1;
  }
  FFAppState().VarContadorBlock = 0;
  FFAppState().varTblPlanos = [];
  while (FFAppState().VarContadorBlock < queryConsTblAppPlanos.length) {
    FFAppState().addToVarTblPlanos(TblPlanosDXve3yNStruct(
      nomePlanoPeriodos: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.nomePlanoPeriodos,
      nomePlano: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.nomePlano,
      parcelamentoSjuros: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.parcelamentoSjuros,
      maxParcSjuros: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.maxParcSjuros,
      tempo: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.tempo,
      id: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.id,
      idPlanoPeriodo: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.idPlanoPeriodo,
      descricao: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.descricao,
      preco: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.preco,
      porcentagemDesconto: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.porcentagemDesconto,
      quantProfissionaisMin: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.quantProfissionaisMin,
      quantProfissionaisMax: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.quantProfissionaisMax,
      quantAgendamentosMax: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.quantAgendamentosMax,
      idPlanoNome: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.idPlanoNome
          ?.toString(),
      situacao: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.situacao,
      precoAssinatura: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.precoAssinatura,
      percDescontoAss: queryConsTblAppPlanos
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.percDescontoAss
          ?.toDouble(),
    ));
    FFAppState().VarContadorBlock = FFAppState().VarContadorBlock + 1;
  }
  if (FFAppState().VarEmDesenvolvimento) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'PLANOS ATUALIZADOS...',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 1000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  }
}

Future<String> acConsultarCupom(
  BuildContext context, {
  required String? paramCupom,
  required String? paramTipoConsulta,
  required int? paramid,
}) async {
  String? acBlockRecultCriptMD5ConsCupom;
  ApiCallResponse? apiResultConsCupom;

  acBlockRecultCriptMD5ConsCupom = await action_blocks.acCriptografarStringMD5(
    context,
    paramString: '${functions.fcConverterStringMaiusculo(paramCupom!)}89CUP',
  );
  apiResultConsCupom =
      await FunctionsServerSupabaseGroup.consultarCupomCall.call(
    paramCupom: functions.fcConverterStringMaiusculo(paramCupom),
    paramData: FFAppState().varDataCriptoBlock,
    paramDv: FFAppState().VarTblDispositivoInformacoes.deviceId,
    paramKey: FFAppState().varKeyCriptoBlock,
    paramToken: acBlockRecultCriptMD5ConsCupom,
    paramUserId: currentUserUid,
    paramUserIdCli: '0',
    paramIdAfApp: '1',
  );

  FFAppState().varTblAfiliadoCupom = TblAfiliadoCupomFeTy2GibStruct();
  if (FunctionsServerSupabaseGroup.consultarCupomCall.result(
        (apiResultConsCupom.jsonBody ?? ''),
      ) ==
      'True') {
    if (paramTipoConsulta == 'NAOCAD') {
      if (((paramid! > 0) &&
              (paramid ==
                  FunctionsServerSupabaseGroup.consultarCupomCall.id(
                    (apiResultConsCupom.jsonBody ?? ''),
                  ))) ||
          (FFAppState().varIDAfiliadoLogado ==
              FunctionsServerSupabaseGroup.consultarCupomCall.idafiliado(
                (apiResultConsCupom.jsonBody ?? ''),
              ))) {
        return 'False';
      }

      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Esse cupom já está cadastrado no sistema.'),
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
    } else {
      FFAppState().updateVarTblAfiliadoCupomStruct(
        (e) => e
          ..id = FunctionsServerSupabaseGroup.consultarCupomCall.id(
            (apiResultConsCupom?.jsonBody ?? ''),
          )
          ..idAfiliado =
              FunctionsServerSupabaseGroup.consultarCupomCall.idafiliado(
            (apiResultConsCupom?.jsonBody ?? ''),
          )
          ..idEstabelecimento =
              FunctionsServerSupabaseGroup.consultarCupomCall.idestabelecimento(
            (apiResultConsCupom?.jsonBody ?? ''),
          )
          ..descrio = FunctionsServerSupabaseGroup.consultarCupomCall.descricao(
            (apiResultConsCupom?.jsonBody ?? ''),
          )
          ..tipoCupom =
              FunctionsServerSupabaseGroup.consultarCupomCall.tipocupom(
            (apiResultConsCupom?.jsonBody ?? ''),
          )
          ..tempo = FunctionsServerSupabaseGroup.consultarCupomCall.tempo(
            (apiResultConsCupom?.jsonBody ?? ''),
          )
          ..percDesconto = FunctionsServerSupabaseGroup.consultarCupomCall
              .percdesconto(
                (apiResultConsCupom?.jsonBody ?? ''),
              )
              ?.toDouble()
          ..aceitoNaRenovacao =
              FunctionsServerSupabaseGroup.consultarCupomCall.aceitonarenovacao(
            (apiResultConsCupom?.jsonBody ?? ''),
          )
          ..idPlanosPeriodosLiberados =
              FunctionsServerSupabaseGroup.consultarCupomCall
                  .idplanosperiodosliberados(
                    (apiResultConsCupom?.jsonBody ?? ''),
                  )!
                  .toList()
          ..idPlanosNomesLiberados =
              FunctionsServerSupabaseGroup.consultarCupomCall
                  .idplanosnomesliberados(
                    (apiResultConsCupom?.jsonBody ?? ''),
                  )!
                  .toList()
          ..result = FunctionsServerSupabaseGroup.consultarCupomCall.result(
            (apiResultConsCupom?.jsonBody ?? ''),
          )
          ..vencido = FunctionsServerSupabaseGroup.consultarCupomCall.vencido(
            (apiResultConsCupom?.jsonBody ?? ''),
          )
          ..usado = FunctionsServerSupabaseGroup.consultarCupomCall.usado(
            (apiResultConsCupom?.jsonBody ?? ''),
          )
          ..userId = FunctionsServerSupabaseGroup.consultarCupomCall.userid(
            (apiResultConsCupom?.jsonBody ?? ''),
          ),
      );
    }

    return 'True';
  } else if (FunctionsServerSupabaseGroup.consultarCupomCall.result(
        (apiResultConsCupom.jsonBody ?? ''),
      ) ==
      'False') {
    if (paramTipoConsulta == 'CAD') {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text(
                  'Cupom não localizado, verifique se digitou corretamente'),
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
    }
    return 'False';
  } else if (FunctionsServerSupabaseGroup.consultarCupomCall.result(
        (apiResultConsCupom.jsonBody ?? ''),
      ) ==
      'PARVAZ') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar cupom:${'\n\n'}Código: PARVAZ'),
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
    return 'PARVAZ';
  } else if (FunctionsServerSupabaseGroup.consultarCupomCall.result(
        (apiResultConsCupom.jsonBody ?? ''),
      ) ==
      'TOKINV') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar cupom:${'\n\n'}Código: TOKINV'),
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
    return 'TOKINV';
  } else if (!(apiResultConsCupom.succeeded ?? true)) {
    if (FunctionsServerSupabaseGroup.consultarCupomCall.message(
          (apiResultConsCupom.jsonBody ?? ''),
        ) ==
        'Cupom não encontrado') {
      if (paramTipoConsulta == 'CAD') {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return WebViewAware(
              child: AlertDialog(
                title: Text('Atenção!'),
                content: Text(
                    'Cupom não localizado, verifique se digitou corretamente'),
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
      }
      return 'False';
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text(
                  'Erro ao consultar cupom:${'\n\n'}Código: Indefinido ${(apiResultConsCupom?.statusCode ?? 200).toString()}'),
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
    }

    return 'ERRO';
  } else {
    return 'ERRO';
  }
}

Future<String> acConsultarNomeTabs(
  BuildContext context, {
  required String? paramNome,
  required String? paramTabela,
  required int? paramID,
}) async {
  String? acBlockRecultCriptMD5ConsNome;
  ApiCallResponse? apiResultConsNome;

  acBlockRecultCriptMD5ConsNome = await action_blocks.acCriptografarStringMD5(
    context,
    paramString:
        '${functions.fcConverterStringMaiusculo(paramNome!)}89${paramTabela}',
  );
  apiResultConsNome =
      await FunctionsServerSupabaseGroup.consultarNomeTabsCall.call(
    paramNome: functions.fcConverterStringMaiusculo(paramNome),
    paramData: FFAppState().varDataCriptoBlock,
    paramDv: FFAppState().VarTblDispositivoInformacoes.deviceId,
    paramKey: FFAppState().varKeyCriptoBlock,
    paramTabela: paramTabela,
    paramToken: acBlockRecultCriptMD5ConsNome,
    paramUserId: currentUserUid,
  );

  if (FunctionsServerSupabaseGroup.consultarNomeTabsCall.result(
        (apiResultConsNome.jsonBody ?? ''),
      ) ==
      'True') {
    if (FunctionsServerSupabaseGroup.consultarNomeTabsCall.id(
          (apiResultConsNome.jsonBody ?? ''),
        ) ==
        paramID) {
      return 'False';
    }

    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('O nome ${paramNome} já está cadastrado no sistema.'),
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
    return 'True';
  } else if (FunctionsServerSupabaseGroup.consultarNomeTabsCall.result(
        (apiResultConsNome.jsonBody ?? ''),
      ) ==
      'False') {
    return 'False';
  } else if (FunctionsServerSupabaseGroup.consultarNomeTabsCall.result(
        (apiResultConsNome.jsonBody ?? ''),
      ) ==
      'PARVAZ') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar nome:${'\n\n'}Código: PARVAZ'),
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
    return 'PARVAZ';
  } else if (FunctionsServerSupabaseGroup.consultarNomeTabsCall.result(
        (apiResultConsNome.jsonBody ?? ''),
      ) ==
      'TOKINV') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar nome:${'\n\n'}Código: TOKINV'),
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
    return 'TOKINV';
  } else if (!(apiResultConsNome.succeeded ?? true)) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content:
                Text('Erro ao consultar nome:${'\n\n'}Código: Sucess False'),
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
    return 'ERRO';
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao consultar nome:${'\n\n'}Código: Indefinido ${(apiResultConsNome?.statusCode ?? 200).toString()}'),
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
    return 'ERRO';
  }
}

Future<String> acConsultarEmail(
  BuildContext context, {
  required String? paramEmail,
}) async {
  String? acBlockRecultCriptMD5ConsEmail;
  ApiCallResponse? apiResultConsEmailCad;

  acBlockRecultCriptMD5ConsEmail = await action_blocks.acCriptografarStringMD5(
    context,
    paramString: '${paramEmail}89email',
  );
  apiResultConsEmailCad =
      await FunctionsServerSupabaseGroup.consultarEmailCall.call(
    paramData: FFAppState().varDataCriptoBlock,
    paramDv: FFAppState().VarTblDispositivoInformacoes.deviceId,
    paramEmail: paramEmail,
    paramKey: FFAppState().varKeyCriptoBlock,
    paramToken: acBlockRecultCriptMD5ConsEmail,
    paramUserId: currentUserUid,
  );

  if (FunctionsServerSupabaseGroup.consultarEmailCall.result(
        (apiResultConsEmailCad.jsonBody ?? ''),
      ) ==
      'True') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Este E-mail ${paramEmail} já está cadastrado no sitema. '),
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
    return 'True';
  } else if (FunctionsServerSupabaseGroup.consultarEmailCall.result(
        (apiResultConsEmailCad.jsonBody ?? ''),
      ) ==
      'False') {
    return 'False';
  } else if (FunctionsServerSupabaseGroup.consultarEmailCall.result(
        (apiResultConsEmailCad.jsonBody ?? ''),
      ) ==
      'PARVAZ') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar E-mail:${'\n\n'}Código: PARVAZ'),
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
    return 'PARVAZ';
  } else if (FunctionsServerSupabaseGroup.consultarEmailCall.result(
        (apiResultConsEmailCad.jsonBody ?? ''),
      ) ==
      'TOKINV') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar E-mail:${'\n\n'}Código: TOKINV'),
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
    return 'TOKINV';
  } else if (!(apiResultConsEmailCad.succeeded ?? true)) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content:
                Text('Erro ao consultar E-mail:${'\n\n'}Código: Sucess False'),
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
    return 'ERRO';
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao consultar E-mail:${'\n\n'}Código: Indefinido ${(apiResultConsEmailCad?.statusCode ?? 200).toString()}'),
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
    return 'ERRO';
  }
}

Future<String?> acConsultarCPFHubDev(
  BuildContext context, {
  required String? paramCPF,
  required String? paramDataNascimento,
}) async {
  ApiCallResponse? apiConsCPFResult;

  apiConsCPFResult = await ConsultasHubDevGroup.cpfCall.call(
    tipoDoRetorno: 'JSON',
    cpf: functions.fcRemoverCaracteresELetrasString(paramCPF!),
    token: '169848360ZCeyImvKUX306656064',
    dataDeNascimento: paramDataNascimento,
  );

  if ((apiConsCPFResult.succeeded ?? true)) {
    if (ConsultasHubDevGroup.cpfCall.status(
          (apiConsCPFResult.jsonBody ?? ''),
        ) ==
        true) {
      FFAppState().updateVarTblAfiliadoStruct(
        (e) => e
          ..nome = ConsultasHubDevGroup.cpfCall.resultnomedapf(
            (apiConsCPFResult?.jsonBody ?? ''),
          )
          ..dataNascimento = functions.fcConverterStringPData2(
              ConsultasHubDevGroup.cpfCall.resultdatanascimento(
            (apiConsCPFResult?.jsonBody ?? ''),
          )!),
      );
      return ConsultasHubDevGroup.cpfCall.resultnomedapf(
        (apiConsCPFResult.jsonBody ?? ''),
      );
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text(
                  'CPF não localizado, verifique se o CPF e data de nascimento informados estão corretos.'),
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
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Falha ao consultar CPF, tente novamente, se o problema persistir entre em contato com o suporte.${'\n\n'}${(apiConsCPFResult?.bodyText ?? '')}'),
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
    return 'erro';
  }
}

Future<String> acConsultarCPF(
  BuildContext context, {
  required String? paramCPF,
  required String? paramDataNascimento,
  required String? paramTabela,
}) async {
  ApiCallResponse? apiResultWebApi;
  ApiCallResponse? apiConsCPFResultSptb;

  apiResultWebApi = await ConsultarCPFWebapiDraftplazaCall.call(
    cpf: functions.fcRemoverCaracteresELetrasString(paramCPF!),
  );

  if ((apiResultWebApi.succeeded ?? true)) {
    if (paramTabela == 'tbl_afiliados') {
      FFAppState().updateVarTblAfiliadoStruct(
        (e) => e
          ..nome = '${ConsultarCPFWebapiDraftplazaCall.inputFieldsfirstname(
            (apiResultWebApi?.jsonBody ?? ''),
          )} ${ConsultarCPFWebapiDraftplazaCall.inputFieldslastname(
            (apiResultWebApi?.jsonBody ?? ''),
          )}'
          ..dataNascimento = functions.fcConverterStringPData(
              ConsultarCPFWebapiDraftplazaCall.inputFieldsbirthDate(
            (apiResultWebApi?.jsonBody ?? ''),
          )!)
          ..docCpfCnpj = paramCPF
          ..genero = functions.fcConverterStringMaiusculo(
              ConsultarCPFWebapiDraftplazaCall.inputFieldsgender(
            (apiResultWebApi?.jsonBody ?? ''),
          )!),
      );
    } else if (paramTabela == 'tbl_estabelecimento') {
      FFAppState().updateVarTblEstabelecimentoLogadoStruct(
        (e) => e
          ..docCpfCnpj = paramCPF
          ..dataNascimento = functions.fcConverterStringPData(
              ConsultarCPFWebapiDraftplazaCall.inputFieldsbirthDate(
            (apiResultWebApi?.jsonBody ?? ''),
          )!)
          ..nomePfisicaRazsocial =
              '${ConsultarCPFWebapiDraftplazaCall.inputFieldsfirstname(
            (apiResultWebApi?.jsonBody ?? ''),
          )} ${ConsultarCPFWebapiDraftplazaCall.inputFieldslastname(
            (apiResultWebApi?.jsonBody ?? ''),
          )}'
          ..genero = functions.fcConverterStringMaiusculo(
              ConsultarCPFWebapiDraftplazaCall.inputFieldsgender(
            (apiResultWebApi?.jsonBody ?? ''),
          )!),
      );
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text('Tabela inválida'),
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
      return 'False';
    }

    return '${ConsultarCPFWebapiDraftplazaCall.inputFieldsfirstname(
      (apiResultWebApi.jsonBody ?? ''),
    )} ${ConsultarCPFWebapiDraftplazaCall.inputFieldslastname(
      (apiResultWebApi.jsonBody ?? ''),
    )}';
  } else {
    if (paramDataNascimento != null && paramDataNascimento != '') {
      apiConsCPFResultSptb =
          await EdgeFunctionsSupabaseGroup.consultarCpfSpbtCall.call(
        paramDataNascimento: paramDataNascimento,
        paramCPF: functions.fcRemoverCaracteresELetrasString(paramCPF),
      );

      if ((apiConsCPFResultSptb.succeeded ?? true)) {
        if (EdgeFunctionsSupabaseGroup.consultarCpfSpbtCall.result(
              (apiConsCPFResultSptb.jsonBody ?? ''),
            ) ==
            false) {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return WebViewAware(
                child: AlertDialog(
                  title: Text('Atenção!'),
                  content: Text(
                      'Erro  ao consultar CPF, tente novamente, se o problema persistir entre em contato com o suporte.${'\n\n'}${(apiConsCPFResultSptb?.bodyText ?? '')}'),
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
          return 'False';
        }
        if (EdgeFunctionsSupabaseGroup.consultarCpfSpbtCall.error(
              (apiConsCPFResultSptb.jsonBody ?? ''),
            ) ==
            false) {
          if (paramTabela == 'tbl_afiliados') {
            FFAppState().updateVarTblAfiliadoStruct(
              (e) => e
                ..nome =
                    EdgeFunctionsSupabaseGroup.consultarCpfSpbtCall.dataname(
                  (apiConsCPFResultSptb?.jsonBody ?? ''),
                )
                ..dataNascimento =
                    functions.fcConverterStringPData2(paramDataNascimento)
                ..docCpfCnpj = paramCPF
                ..genero = null,
            );
          } else if (paramTabela == 'tbl_estabelecimento') {
            FFAppState().updateVarTblEstabelecimentoLogadoStruct(
              (e) => e
                ..docCpfCnpj = paramCPF
                ..dataNascimento =
                    functions.fcConverterStringPData2(paramDataNascimento)
                ..nomePfisicaRazsocial =
                    EdgeFunctionsSupabaseGroup.consultarCpfSpbtCall.dataname(
                  (apiConsCPFResultSptb?.jsonBody ?? ''),
                )
                ..genero = null,
            );
          } else {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return WebViewAware(
                  child: AlertDialog(
                    title: Text('Atenção!'),
                    content: Text('Tabela inválida'),
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
            return 'False';
          }

          return EdgeFunctionsSupabaseGroup.consultarCpfSpbtCall.dataname(
            (apiConsCPFResultSptb.jsonBody ?? ''),
          )!;
        } else {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return WebViewAware(
                child: AlertDialog(
                  title: Text('Atenção!'),
                  content: Text(
                      'CPF não localizado, verifique se o CPF e data de nascimento informados estão corretos.'),
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
          return 'False';
        }
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return WebViewAware(
              child: AlertDialog(
                title: Text('Atenção!'),
                content: Text(
                    'Falha ao consultar CPF, tente novamente, se o problema persistir entre em contato com o suporte.${'\n\n'}${(apiConsCPFResultSptb?.bodyText ?? '')}'),
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
        return 'False';
      }
    } else {
      return 'False';
    }
  }
}

Future<String> acConsultarCPFCNPJCad(
  BuildContext context, {
  required String? paramCPFCNPJ,
  required String? paramTabela,
}) async {
  String? acBlockRecultCriptMD5ConsCPF;
  ApiCallResponse? apiResultConsCPF;

  acBlockRecultCriptMD5ConsCPF = await action_blocks.acCriptografarStringMD5(
    context,
    paramString: '${paramCPFCNPJ}89cpf',
  );
  apiResultConsCPF =
      await FunctionsServerSupabaseGroup.consultarDocCadCPFOuCNPJCall.call(
    paramData: FFAppState().varDataCriptoBlock,
    paramDv: FFAppState().VarTblDispositivoInformacoes.deviceId,
    paramKey: FFAppState().varKeyCriptoBlock,
    paramCpfCnpj: paramCPFCNPJ,
    paramToken: acBlockRecultCriptMD5ConsCPF,
    paramUserId: currentUserUid,
    token: currentJwtToken,
  );

  if (FunctionsServerSupabaseGroup.consultarDocCadCPFOuCNPJCall.result(
        (apiResultConsCPF.jsonBody ?? ''),
      ) ==
      'True') {
    if (FunctionsServerSupabaseGroup.consultarDocCadCPFOuCNPJCall.cadastrado(
          (apiResultConsCPF.jsonBody ?? ''),
        ) ==
        'True') {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: Text('Atenção!'),
              content: Text(
                  'Esse documento ${paramCPFCNPJ} já está cadastrado no sistema${'\n\n'}${() {
                if ((FunctionsServerSupabaseGroup.consultarDocCadCPFOuCNPJCall
                            .idestab(
                          (apiResultConsCPF?.jsonBody ?? ''),
                        ) !=
                        null) &&
                    (FunctionsServerSupabaseGroup.consultarDocCadCPFOuCNPJCall
                            .idafiliado(
                          (apiResultConsCPF?.jsonBody ?? ''),
                        ) !=
                        null)) {
                  return 'Cadastrado em outro estabelecimento e afiliado.';
                } else if (FunctionsServerSupabaseGroup
                        .consultarDocCadCPFOuCNPJCall
                        .idestab(
                      (apiResultConsCPF?.jsonBody ?? ''),
                    ) !=
                    null) {
                  return 'Cadastrado em outro estabelecimento';
                } else if (FunctionsServerSupabaseGroup
                        .consultarDocCadCPFOuCNPJCall
                        .idafiliado(
                      (apiResultConsCPF?.jsonBody ?? ''),
                    ) !=
                    null) {
                  return 'Cadastrado em outro afiliado.';
                } else {
                  return '';
                }
              }()}'),
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
      return 'True';
    } else {
      return 'False';
    }
  } else if (FunctionsServerSupabaseGroup.consultarDocCadCPFOuCNPJCall.result(
        (apiResultConsCPF.jsonBody ?? ''),
      ) ==
      'False') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao consultar CPF/CNPJ:${'\n\n'}Usuário não localizado'),
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
    return 'NaoLocalizado';
  } else if (FunctionsServerSupabaseGroup.consultarDocCadCPFOuCNPJCall.result(
        (apiResultConsCPF.jsonBody ?? ''),
      ) ==
      'PARVAZ') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar CPF/CNPJ:${'\n\n'}Código: PARVAZ'),
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
    return 'True';
  } else if (FunctionsServerSupabaseGroup.consultarDocCadCPFOuCNPJCall.result(
        (apiResultConsCPF.jsonBody ?? ''),
      ) ==
      'TOKINV') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar CPF/CNPJ:${'\n\n'}Código: TOKINV'),
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
    return 'TOKINV';
  } else if ((apiResultConsCPF.succeeded ?? true)) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao consultar CPF/CNPJ:${'\n\n'}Código: Sucess False'),
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
    return 'ERRO';
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao consultar CPF/CNPJ:${'\n\n'}Código: Indefinido ${(apiResultConsCPF?.statusCode ?? 200).toString()}'),
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
    return 'ERRO';
  }
}

Future acAtualizarModelosBanners(BuildContext context) async {
  List<TblAppModelosBannerRow>? queryConsModBanners;

  queryConsModBanners = await TblAppModelosBannerTable().queryRows(
    queryFn: (q) => q
        .eqOrNull(
          'situacao',
          true,
        )
        .order('nome', ascending: true),
  );
  FFAppState().VarContadorBlock = 0;
  FFAppState().varTblModelosBanners = [];
  while (FFAppState().VarContadorBlock < queryConsModBanners.length) {
    FFAppState().addToVarTblModelosBanners(TblModelosBannersXTfv1c8Struct(
      id: queryConsModBanners
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.id,
      nome: queryConsModBanners
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.nome,
      situacao: queryConsModBanners
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.situacao,
      escuro: queryConsModBanners
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.escuro,
      foto: queryConsModBanners
          .elementAtOrNull(FFAppState().VarContadorBlock)
          ?.foto,
    ));
    FFAppState().VarContadorBlock = FFAppState().VarContadorBlock + 1;
  }
  if (FFAppState().VarEmDesenvolvimento) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'MODELOS BANNERS CARREGADOS...',
          style: TextStyle(),
        ),
        duration: Duration(milliseconds: 1000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  }
}

Future acConsultarCNPJBrasilAPI(
  BuildContext context, {
  required String? paramCNPJ,
  required String? paramTabela,
}) async {
  ApiCallResponse? apiResultConsCNPJ;

  apiResultConsCNPJ = await BrasilAPIGroup.consultarCNPJCall.call(
    cnpj: functions.fcRemoverCaracteresELetrasString(paramCNPJ!),
  );

  if ((apiResultConsCNPJ.succeeded ?? true)) {
    if (paramTabela == 'tbl_estabelecimento') {
      FFAppState().updateVarTblEstabelecimentoLogadoStruct(
        (e) => e
          ..nomePfisicaRazsocial = BrasilAPIGroup.consultarCNPJCall.razaosocial(
            (apiResultConsCNPJ?.jsonBody ?? ''),
          )
          ..cep = BrasilAPIGroup.consultarCNPJCall.cep(
            (apiResultConsCNPJ?.jsonBody ?? ''),
          ),
      );
    }
  }
}

Future<String> acDeletarCupons(BuildContext context) async {
  String? acBlockRecultCriptMD5AddCupons;
  ApiCallResponse? apiResultAddCupons;

  acBlockRecultCriptMD5AddCupons = await action_blocks.acCriptografarStringMD5(
    context,
    paramString: '${FFAppState().varIDAfiliadoLogado.toString()}89cupons',
  );
  apiResultAddCupons =
      await FunctionsServerSupabaseGroup.deletarCuponsAfiliadoCall.call(
    paramData: FFAppState().varDataCriptoBlock,
    paramDv: FFAppState().VarTblDispositivoInformacoes.deviceId,
    paramKey: FFAppState().varKeyCriptoBlock,
    paramIdAfiliado: FFAppState().varIDAfiliadoLogado.toString(),
    paramToken: acBlockRecultCriptMD5AddCupons,
    paramUserId: currentUserUid,
    paramIdEstabelecimento: FFAppState().VarIDEstabelecimentoLogado.toString(),
    paramNome: FFAppState().varTblAfiliado.username,
    token: currentJwtToken,
  );

  if (FunctionsServerSupabaseGroup.deletarCuponsAfiliadoCall.result(
        (apiResultAddCupons.jsonBody ?? ''),
      ) ==
      'True') {
    return 'True';
  } else if (FunctionsServerSupabaseGroup.deletarCuponsAfiliadoCall.result(
        (apiResultAddCupons.jsonBody ?? ''),
      ) ==
      'False') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao deletar cupons${'\n\n'}Código: False'),
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
    return 'False';
  } else if (FunctionsServerSupabaseGroup.deletarCuponsAfiliadoCall.result(
        (apiResultAddCupons.jsonBody ?? ''),
      ) ==
      'PARVAZ') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao deletar cupons${'\n\n'}Código: PARVAZ'),
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
    return 'PARVAZ';
  } else if (FunctionsServerSupabaseGroup.deletarCuponsAfiliadoCall.result(
        (apiResultAddCupons.jsonBody ?? ''),
      ) ==
      'TOKINV') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao deletar cupons${'\n\n'}Código: TOKINV'),
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
    return 'TOKINV';
  } else if (!(apiResultAddCupons.succeeded ?? true)) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content:
                Text('Erro ao deletar cupons${'\n\n'}Código: Sucess False'),
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
    return 'ERRO';
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao deletar cupons${'\n\n'}Código: Indefinido ${(apiResultAddCupons?.statusCode ?? 200).toString()}'),
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
    return 'ERRO';
  }
}

Future<String> acConsAfiliadoDaschboard(
  BuildContext context, {
  required int? paramIDAfiliado,
  int? paramIDEstabelecimento,
  String? paramUserID,
}) async {
  String? acBlockRecultCriptMD5ConsAfilDashboard;
  ApiCallResponse? apiResultConsAfidash;

  acBlockRecultCriptMD5ConsAfilDashboard =
      await action_blocks.acCriptografarStringMD5(
    context,
    paramString:
        '${paramIDAfiliado?.toString()}89${paramIDEstabelecimento?.toString()}',
  );
  apiResultConsAfidash =
      await FunctionsServerSupabaseGroup.fcafiliadodashboardCall.call(
    paramData: FFAppState().varDataCriptoBlock,
    paramDv: FFAppState().VarTblDispositivoInformacoes.deviceId,
    paramKey: FFAppState().varKeyCriptoBlock,
    paramIdAfiliado: paramIDAfiliado?.toString(),
    paramToken: acBlockRecultCriptMD5ConsAfilDashboard,
    paramUserId: paramUserID,
    paramIdEstabelecimento: paramIDEstabelecimento?.toString(),
    token: currentJwtToken,
  );

  FFAppState().varTblAfiliadosDashboard =
      TblAfiliadosDashboardGveB12fBVStruct();
  FFAppState().update(() {});
  if (FunctionsServerSupabaseGroup.fcafiliadodashboardCall.result(
        (apiResultConsAfidash.jsonBody ?? ''),
      ) ==
      'True') {
    FFAppState().varTblAfiliadosDashboard =
        TblAfiliadosDashboardGveB12fBVStruct(
      id: FunctionsServerSupabaseGroup.fcafiliadodashboardCall.id(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      nome: FunctionsServerSupabaseGroup.fcafiliadodashboardCall.nome(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      comissaoDia:
          FunctionsServerSupabaseGroup.fcafiliadodashboardCall.comissaodia(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      comissao7dias:
          FunctionsServerSupabaseGroup.fcafiliadodashboardCall.comissao7dias(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      comissaoMes:
          FunctionsServerSupabaseGroup.fcafiliadodashboardCall.comissaomes(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      comissaoDisponivel: FunctionsServerSupabaseGroup.fcafiliadodashboardCall
          .comissaodisponivel(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      comissaoPendente:
          FunctionsServerSupabaseGroup.fcafiliadodashboardCall.comissaopendente(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      quantIndicacoes:
          FunctionsServerSupabaseGroup.fcafiliadodashboardCall.quantindicacoes(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      quantSubAfiliados: FunctionsServerSupabaseGroup.fcafiliadodashboardCall
          .quantsubafiliados(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      quantIndicacoesAtivos: FunctionsServerSupabaseGroup
          .fcafiliadodashboardCall
          .quantindicacoesativos(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      quantSubAfiliadosAtivos: FunctionsServerSupabaseGroup
          .fcafiliadodashboardCall
          .quantsubafiliadosativos(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      valorMeta: FunctionsServerSupabaseGroup.fcafiliadodashboardCall.valormeta(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      sistema: FunctionsServerSupabaseGroup.fcafiliadodashboardCall.sistema(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      result: true,
      vlrVdEstabDia:
          FunctionsServerSupabaseGroup.fcafiliadodashboardCall.vlrvdestabdia(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      vlrVdAfilDia:
          FunctionsServerSupabaseGroup.fcafiliadodashboardCall.vlrvdafildia(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      vlrVdCancEstabDia: FunctionsServerSupabaseGroup.fcafiliadodashboardCall
          .vlrvdcancestabdia(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      vlrVdCancAfilDia:
          FunctionsServerSupabaseGroup.fcafiliadodashboardCall.vlrvdcancafildia(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      vlrVdEstab7dia:
          FunctionsServerSupabaseGroup.fcafiliadodashboardCall.vlrvdestab7dia(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      vlrVdAfil7dia:
          FunctionsServerSupabaseGroup.fcafiliadodashboardCall.vlrvdafil7dia(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      vlrVdCancEstab7dia: FunctionsServerSupabaseGroup.fcafiliadodashboardCall
          .vlrvdcancestab7dia(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      vlrVdCancAfil7dia: FunctionsServerSupabaseGroup.fcafiliadodashboardCall
          .vlrvdcancafil7dia(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      vlrVdEstabMes:
          FunctionsServerSupabaseGroup.fcafiliadodashboardCall.vlrvdestabmes(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      vlrVdAfilMes:
          FunctionsServerSupabaseGroup.fcafiliadodashboardCall.vlrvdafilmes(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      vlrVdCancEstabMes: FunctionsServerSupabaseGroup.fcafiliadodashboardCall
          .vlrvdcancestabmes(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      vlrVdCancAfilMes:
          FunctionsServerSupabaseGroup.fcafiliadodashboardCall.vlrvdcancafilmes(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      vlrComissaoDisponivelHoje: FunctionsServerSupabaseGroup
          .fcafiliadodashboardCall
          .vlrcomissaodisponivelhoje(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
      vlrSaquesHoje:
          FunctionsServerSupabaseGroup.fcafiliadodashboardCall.vlrsaqueshoje(
        (apiResultConsAfidash.jsonBody ?? ''),
      ),
    );
    FFAppState().update(() {});
    return 'True';
  } else if (FunctionsServerSupabaseGroup.fcafiliadodashboardCall.result(
        (apiResultConsAfidash.jsonBody ?? ''),
      ) ==
      'False') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar Dashborad${'\n\n'}Código: False'),
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
    return 'False';
  } else if (FunctionsServerSupabaseGroup.fcafiliadodashboardCall.result(
        (apiResultConsAfidash.jsonBody ?? ''),
      ) ==
      'PARVAZ') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar Dashborad${'\n\n'}Código: PARVAZ'),
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
    return 'PARVAZ';
  } else if (FunctionsServerSupabaseGroup.fcafiliadodashboardCall.result(
        (apiResultConsAfidash.jsonBody ?? ''),
      ) ==
      'TOKINV') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar Dashborad${'\n\n'}Código: TOKINV'),
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
    return 'TOKINV';
  } else if (!(apiResultConsAfidash.succeeded ?? true)) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao consultar Dashborad${'\n\n'}Código: Sucess False'),
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
    return 'ERRO';
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao consultar Dashborad${'\n\n'}Código: Indefinido ${(apiResultConsAfidash?.bodyText ?? '')}'),
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
    return 'ERRO';
  }
}

Future acAtualizarQuantNotificacoes(BuildContext context) async {
  List<ViewTblNotificacoesQuantRow>? queryConsNotificacoes;

  queryConsNotificacoes = await ViewTblNotificacoesQuantTable().queryRows(
    queryFn: (q) => q.eqOrNull(
      'user_id',
      currentUserUid,
    ),
  );
  if (queryConsNotificacoes.length > 0) {
    FFAppState().varQuantNotificacoes =
        queryConsNotificacoes.firstOrNull!.quant!;
    FFAppState().update(() {});
  } else {
    FFAppState().varQuantNotificacoes = 0;
    FFAppState().update(() {});
  }
}

Future acHomeCadastrarEstabelecimento(
  BuildContext context, {
  required String? paramNomeEstabelecimento,
  required String? paramNomeContato,
  required String? paramTelefone,
  int? paramIDPlanoPeriodo,
  int? paramIDPlanoPreco,
  TblPlanosPeriodosXTfeZ1cStruct? paramTblPlanoPeriodosRow,
  bool? paramCupomAplicado,
  String? paramNomeCupom,
  TblPlanosDXve3yNStruct? paramTblPlanos,

  /// Estabelecimento ou afiliado
  required String? paramTipoCadastro,
  required bool? paramAbrirCheckout,
  required String? paramAssinatura,
}) async {
  TblEstabelecimentoRow? supaCadEstabelecimentoBlock;
  TblUsuariosRow? supaCadUsuarioBlock;
  TblClientesRow? reultInsertCliente;
  ApiCallResponse? apiResulEmailCadastro;
  String? acResultCriarPgPlanoEstabCad;

  unawaited(
    () async {}(),
  );
  if (paramCupomAplicado == false) {
    await action_blocks.acConsultarCupom(
      context,
      paramCupom: 'AGENDASUPER',
      paramTipoConsulta: 'CAD',
      paramid: 0,
    );
  }
  supaCadEstabelecimentoBlock = await TblEstabelecimentoTable().insert({
    'nome': paramNomeEstabelecimento,
    'email': currentUserEmail,
    'situacao': true,
    'telefone': paramTelefone,
    'email_verificado': false,
    'telefone_verificado': false,
    'nome_contato': paramNomeContato,
    'cf_perc_entrada_agend': 0.0,
    'user_id': currentUserUid,
    'id_segmento': 8,
    'id_plano_preco': paramIDPlanoPreco,
    'data_ultima_atualizacao': supaSerialize<DateTime>(getCurrentTimestamp),
    'id_afiliado_indicador': FFAppState().varTblAfiliadoCupom.idAfiliado,
    'user_id_afiliado_indicador': FFAppState().varTblAfiliadoCupom.userId,
    'id_modelo_banner': 27,
    'tipo_banner': 'MODELO',
    'texto_banner': '   ',
    'data_ultima_atualizacao_agend':
        supaSerialize<DateTime>(getCurrentTimestamp),
    'data_ultima_atualizacao_hr_func':
        supaSerialize<DateTime>(getCurrentTimestamp),
    'data_ultima_atualizacao_banners':
        supaSerialize<DateTime>(getCurrentTimestamp),
    'data_ultima_atualizacao_servicos':
        supaSerialize<DateTime>(getCurrentTimestamp),
    'data_ultima_atualizacao_profissionais':
        supaSerialize<DateTime>(getCurrentTimestamp),
  });
  supaCadUsuarioBlock = await TblUsuariosTable().insert({
    'nome': paramNomeEstabelecimento,
    'email': currentUserEmail,
    'situacao': true,
    'telefone': paramTelefone,
    'email_verificado': false,
    'telefone_verificado': false,
    'user_id': currentUserUid,
    'id_estabelecimento': supaCadEstabelecimentoBlock.id,
    'bloqueado': false,
    'data_senha': supaSerialize<DateTime>(getCurrentTimestamp),
    'id_tipo_usuario': 4,
  });
  reultInsertCliente = await TblClientesTable().insert({
    'nome': paramNomeContato,
    'situacao': true,
    'user_id': currentUserUid,
    'origem_cadastro': 'ESTABELECIMENTO',
  });
  await TblEstabelecimentoTable().update(
    data: {
      'id_usuario': supaCadUsuarioBlock.id,
      'id_cliente': reultInsertCliente.id,
    },
    matchingRows: (rows) => rows.eqOrNull(
      'id',
      supaCadEstabelecimentoBlock?.id,
    ),
  );
  await TblAfiliadosAtivDashTable().insert({
    'user_id_afiliado_indicador': FFAppState().varTblAfiliadoCupom.userId,
    'id_afiliado_indicador': FFAppState().varTblAfiliadoCupom.idAfiliado,
    'id_estabelecimento': supaCadEstabelecimentoBlock.id,
    'user_id': currentUserUid,
    'situacao': true,
    'status_pag': 'PENDENTE',
    'id_cupom':
        paramCupomAplicado! ? FFAppState().varTblAfiliadoCupom.id : null,
    'nome_cupom': paramCupomAplicado
        ? functions.fcConverterStringMaiusculo(paramNomeCupom!)
        : null,
    'tipo': 'ADDEST',
    'tipo2': 'CAD',
    'tipo3': 'EST',
  });
  FFAppState().varTblVerificarSenha = TblVerificarSenhaStruct();
  FFAppState().VarIDEstabelecimentoLogado = supaCadEstabelecimentoBlock.id;
  FFAppState().updateVarTblEstabelecimentoLogadoStruct(
    (e) => e..userId = currentUserUid,
  );
  await action_blocks.acCadastrarHrFuncionamento(context);
  if (!kDebugMode) {
    unawaited(
      () async {
        apiResulEmailCadastro = await BrevoGroup.enivarEmailCall.call(
          emailSender: FFAppState().VarEmailContatoAgendaSuper,
          assunto: 'Bem vindo ao Aplicativo',
          textoConteudo:
              '<h2>Ol&aacute; ${paramNomeContato}</h2>  <p>&nbsp;</p>  <p>Obrigado por utilizar o aplicativo Agenda Super.&nbsp;</p>  <p>Agora voc&ecirc; pode gerenciar os agendamentos do seu estabelecimento com praticidade, rapidez e seguran&ccedil;a.</p>  <p>Conclua os cadastros e configura&ccedil;&otilde;es necess&aacute;rias e qualquer d&uacute;vida entre em contato conosco para auxili&aacute;-lo(a)</p>  <p>&nbsp;</p>  <blockquote> <p><span style=\'font-family:arial,helvetica,sans-serif\'>Atencisamente Agenda Super.</span></p>  <p><span style=\'font-family:arial,helvetica,sans-serif\'>Site: www.agendasuper.com</span></p>  <p><span style=\'font-family:arial,helvetica,sans-serif\'>E-mail: contato@agendasuper.com</span></p> </blockquote>',
          nomeSender: 'Agenda Super',
          nomeTo: 'to',
          emailTo: currentUserEmail,
        );
      }(),
    );
  }
  if (!kDebugMode) {
    unawaited(
      () async {
        await action_blocks.acWhatsAppEnviarMensagem(
          context,
          paramNumeroWhatsApp:
              '+55${functions.fcRemoverCaracteresELetrasString(paramTelefone!)}',
          paramMensagem:
              'Olá! ${functions.fcRetornarPrimeiroNomePessoa(paramNomeContato!)}\\n\\nObrigado por utilizar o aplicativo Agenda Super.\\n\\nAgora você pode gerenciar os agendamentos do seu estabelecimento com praticidade, rapidez e segurança. \\n\\nConclua os cadastros e configurações necessárias e qualquer dúvida entre em contato conosco para auxiliá-lo(a)   \\n\\n\\n\\n  Atenciosamente Agenda Super.\\n  Site: www.agendasuper.com \\n  E-mail: contato@agendasuper.com',
          paramEnviarDoEstabelecimento: false,
        );
      }(),
    );
  }
  if (paramTipoCadastro == 'ESTABELECIMENTO') {
    acResultCriarPgPlanoEstabCad =
        await action_blocks.acCriarPagamentoPlanoEstab(
      context,
      paramidplanopreco: paramIDPlanoPreco?.toString(),
      paramidcupom:
          paramCupomAplicado && (FFAppState().varTblAfiliadoCupom.id != null)
              ? FFAppState().varTblAfiliadoCupom.id.toString()
              : '0',
      paramrenovacao: 'false',
      paramcheckout: paramAbrirCheckout?.toString(),
      paramAssinatura: paramAssinatura,
      paramRecriar: 'false',
      paramdiastry:
          paramCupomAplicado && (FFAppState().varTblAfiliadoCupom.id != null)
              ? FFAppState().varTblAfiliadoCupom.tempo.toString()
              : '3',
    );
  } else if (paramTipoCadastro == 'AFILIADO') {}

  FFAppState().varCarregouPrimeiraPagina = true;
  FFAppState().varAssistenteCadastroAberto = false;
  unawaited(
    () async {}(),
  );

  context.goNamed(PgDashboardWidget.routeName);
}

Future<String> acSolicitarSaque(BuildContext context) async {
  String? acBlockRecultCriptMD5SolSaque;
  ApiCallResponse? apiResultSolicitarSaque;

  acBlockRecultCriptMD5SolSaque = await action_blocks.acCriptografarStringMD5(
    context,
    paramString:
        '${FFAppState().varIDAfiliadoLogado.toString()}89${FFAppState().VarIDEstabelecimentoLogado.toString()}',
  );
  apiResultSolicitarSaque =
      await FunctionsServerSupabaseGroup.fcsolicitarsaqueCall.call(
    paramData: FFAppState().varDataCriptoBlock,
    paramDv: FFAppState().VarTblDispositivoInformacoes.deviceId,
    paramKey: FFAppState().varKeyCriptoBlock,
    paramIdAfiliado: FFAppState().varIDAfiliadoLogado.toString(),
    paramToken: acBlockRecultCriptMD5SolSaque,
    paramUserId: currentUserUid,
    paramIdEstabelecimento: FFAppState().VarIDEstabelecimentoLogado.toString(),
    token: currentJwtToken,
  );

  if (FunctionsServerSupabaseGroup.fcsolicitarsaqueCall.result(
        (apiResultSolicitarSaque.jsonBody ?? ''),
      ) ==
      'True') {
    return 'True';
  } else if (FunctionsServerSupabaseGroup.fcsolicitarsaqueCall.result(
        (apiResultSolicitarSaque.jsonBody ?? ''),
      ) ==
      'False') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao solicitar saque${'\n\n'}Código: False'),
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
    return 'False';
  } else if (FunctionsServerSupabaseGroup.fcsolicitarsaqueCall.result(
        (apiResultSolicitarSaque.jsonBody ?? ''),
      ) ==
      'PARVAZ') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao solicitar saque${'\n\n'}Código: PARVAZ'),
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
    return 'PARVAZ';
  } else if (FunctionsServerSupabaseGroup.fcsolicitarsaqueCall.result(
        (apiResultSolicitarSaque.jsonBody ?? ''),
      ) ==
      'TOKINV') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao solicitar saque${'\n\n'}Código: TOKINV'),
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
    return 'TOKINV';
  } else if (!(apiResultSolicitarSaque.succeeded ?? true)) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                '${FunctionsServerSupabaseGroup.fcsolicitarsaqueCall.message(
              (apiResultSolicitarSaque?.jsonBody ?? ''),
            )}'),
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
    return 'ERRO';
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao solicitar saque, Código: Indefinido ${'\n\n'}${(apiResultSolicitarSaque?.bodyText ?? '')}${'\n\n'}${FunctionsServerSupabaseGroup.fcsolicitarsaqueCall.message(
              (apiResultSolicitarSaque?.jsonBody ?? ''),
            )}'),
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
    return 'ERRO';
  }
}

Future<bool> acVerificarUserLogado(BuildContext context) async {
  if (currentUserUid != '') {
    unawaited(
      () async {
        await action_blocks.acAtualizarInicializacaoSistema(context);
      }(),
    );
    unawaited(
      () async {
        await action_blocks.acAtualizarEstabelecimentoLogado(context);
      }(),
    );

    context.goNamed(PgDashboardWidget.routeName);

    return true;
  } else {
    return false;
  }
}

Future<bool> acConsultarModelosServicos(
  BuildContext context, {
  required int? paramIDSegmento,
}) async {
  String? acBlockRecultCriptMD5ConsModServ;
  ApiCallResponse? apiResultConsModServ;

  acBlockRecultCriptMD5ConsModServ =
      await action_blocks.acCriptografarStringMD5(
    context,
    paramString:
        '${FFAppState().varIDAfiliadoLogado.toString()}89${FFAppState().VarIDEstabelecimentoLogado.toString()}15${paramIDSegmento?.toString()}',
  );
  apiResultConsModServ =
      await FunctionsServerSupabaseGroup.consultarModelosServicosCall.call(
    paramData: FFAppState().varDataCriptoBlock,
    paramDv: FFAppState().VarTblDispositivoInformacoes.deviceId,
    paramIdAfiliado: '0',
    paramKey: FFAppState().varKeyCriptoBlock,
    paramToken: acBlockRecultCriptMD5ConsModServ,
    paramUserId: currentUserUid,
    paramIdEstabelecimento: FFAppState().VarIDEstabelecimentoLogado.toString(),
    paramIdSegmento: paramIDSegmento?.toString(),
    token: currentJwtToken,
  );

  FFAppState().VarContadorBlock = 0;
  FFAppState().varTblModelosServicos = [];
  if (FunctionsServerSupabaseGroup.consultarModelosServicosCall
          .result(
            (apiResultConsModServ.jsonBody ?? ''),
          )
          ?.firstOrNull ==
      'True') {
    while (FFAppState().VarContadorBlock <
        FunctionsServerSupabaseGroup.consultarModelosServicosCall
            .idmodelo(
              (apiResultConsModServ.jsonBody ?? ''),
            )!
            .length) {
      FFAppState().addToVarTblModelosServicos(TblModelosServicosTbc8BaB5Struct(
        idServico: FunctionsServerSupabaseGroup.consultarModelosServicosCall
            .idservico(
              (apiResultConsModServ.jsonBody ?? ''),
            )
            ?.elementAtOrNull(FFAppState().VarContadorBlock),
        idModelo: FunctionsServerSupabaseGroup.consultarModelosServicosCall
            .idmodelo(
              (apiResultConsModServ.jsonBody ?? ''),
            )
            ?.elementAtOrNull(FFAppState().VarContadorBlock),
        nome: FunctionsServerSupabaseGroup.consultarModelosServicosCall
            .nome(
              (apiResultConsModServ.jsonBody ?? ''),
            )
            ?.elementAtOrNull(FFAppState().VarContadorBlock),
        foto: FunctionsServerSupabaseGroup.consultarModelosServicosCall
            .foto(
              (apiResultConsModServ.jsonBody ?? ''),
            )
            ?.elementAtOrNull(FFAppState().VarContadorBlock),
        cadastrado: FunctionsServerSupabaseGroup.consultarModelosServicosCall
            .cadastrado(
              (apiResultConsModServ.jsonBody ?? ''),
            )
            ?.elementAtOrNull(FFAppState().VarContadorBlock),
        valor: FunctionsServerSupabaseGroup.consultarModelosServicosCall
            .valor(
              (apiResultConsModServ.jsonBody ?? ''),
            )
            ?.elementAtOrNull(FFAppState().VarContadorBlock),
        tempo: FunctionsServerSupabaseGroup.consultarModelosServicosCall
            .tempo(
              (apiResultConsModServ.jsonBody ?? ''),
            )
            ?.elementAtOrNull(FFAppState().VarContadorBlock),
        valorSobConsulta:
            FunctionsServerSupabaseGroup.consultarModelosServicosCall
                .valorsobconsulta(
                  (apiResultConsModServ.jsonBody ?? ''),
                )
                ?.elementAtOrNull(FFAppState().VarContadorBlock),
      ));
      FFAppState().VarContadorBlock = FFAppState().VarContadorBlock + 1;
    }

    FFAppState().update(() {});
    return true;
  } else if (FunctionsServerSupabaseGroup.consultarModelosServicosCall
          .result(
            (apiResultConsModServ.jsonBody ?? ''),
          )
          ?.firstOrNull ==
      'False') {
    return false;
  } else if (FunctionsServerSupabaseGroup.consultarModelosServicosCall
          .result(
            (apiResultConsModServ.jsonBody ?? ''),
          )
          ?.firstOrNull ==
      'PARVAZ') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar Serviços:${'\n\n'}Código: PARVAZ'),
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
    return false;
  } else if (FunctionsServerSupabaseGroup.consultarModelosServicosCall
          .result(
            (apiResultConsModServ.jsonBody ?? ''),
          )
          ?.firstOrNull ==
      'TOKINV') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar Serviços:${'\n\n'}Código: TOKINV'),
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
    return false;
  } else if (!(apiResultConsModServ.succeeded ?? true)) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                '${FunctionsServerSupabaseGroup.consultarModelosServicosCall.message(
                      (apiResultConsModServ?.jsonBody ?? ''),
                    ) != null && FunctionsServerSupabaseGroup.consultarModelosServicosCall.message(
                      (apiResultConsModServ?.jsonBody ?? ''),
                    ) != '' ? FunctionsServerSupabaseGroup.consultarModelosServicosCall.message(
                    (apiResultConsModServ?.jsonBody ?? ''),
                  ) : 'ERRO! ${(apiResultConsModServ?.bodyText ?? '')}'}'),
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
    return false;
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao consultar Serviços:${'\n\n'}${(apiResultConsModServ?.bodyText ?? '')}'),
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
    return false;
  }
}

Future<String> acConsEstabDashboard(BuildContext context) async {
  String? acBlockRecultCriptMD5ConsEstabDashboard;
  ApiCallResponse? apiResultConsEstabdash;

  acBlockRecultCriptMD5ConsEstabDashboard =
      await action_blocks.acCriptografarStringMD5(
    context,
    paramString:
        '${FFAppState().varIDAfiliadoLogado.toString()}89${FFAppState().VarIDEstabelecimentoLogado.toString()}',
  );
  apiResultConsEstabdash =
      await FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall.call(
    paramData: FFAppState().varDataCriptoBlock,
    paramDv: FFAppState().VarTblDispositivoInformacoes.deviceId,
    paramKey: FFAppState().varKeyCriptoBlock,
    paramIdAfiliado: FFAppState().varIDAfiliadoLogado.toString(),
    paramToken: acBlockRecultCriptMD5ConsEstabDashboard,
    paramUserId: currentUserUid,
    paramIdEstabelecimento: FFAppState().VarIDEstabelecimentoLogado.toString(),
    token: currentJwtToken,
  );

  FFAppState().varTblEstabelecimentoDashboard =
      TblEstabelecimentoDashboardFeB31K3Struct();
  FFAppState().update(() {});
  if (FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall.result(
        (apiResultConsEstabdash.jsonBody ?? ''),
      ) ==
      'True') {
    FFAppState().varTblEstabelecimentoDashboard =
        TblEstabelecimentoDashboardFeB31K3Struct(
      id: FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall.id(
        (apiResultConsEstabdash.jsonBody ?? ''),
      ),
      nome: FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall.nome(
        (apiResultConsEstabdash.jsonBody ?? ''),
      ),
      valorVdDia: FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall
          .valorvddia(
            (apiResultConsEstabdash.jsonBody ?? ''),
          )
          ?.toDouble(),
      valorVd7dias: FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall
          .valorvd7dias(
            (apiResultConsEstabdash.jsonBody ?? ''),
          )
          ?.toDouble(),
      valorVdMes: FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall
          .valorvdmes(
            (apiResultConsEstabdash.jsonBody ?? ''),
          )
          ?.toDouble(),
      quantVdDia: FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall
          .quantvddia(
        (apiResultConsEstabdash.jsonBody ?? ''),
      ),
      quantVd7dias: FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall
          .quantvd7dias(
        (apiResultConsEstabdash.jsonBody ?? ''),
      ),
      quantVdMes: FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall
          .quantvdmes(
        (apiResultConsEstabdash.jsonBody ?? ''),
      ),
      valorMeta: FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall
          .valormeta(
            (apiResultConsEstabdash.jsonBody ?? ''),
          )
          ?.toDouble(),
      sistema:
          FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall.sistema(
        (apiResultConsEstabdash.jsonBody ?? ''),
      ),
      valorVdGeral: FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall
          .valorvdgeral(
            (apiResultConsEstabdash.jsonBody ?? ''),
          )
          ?.toDouble(),
      quantVdGeral: FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall
          .quantvdgeral(
        (apiResultConsEstabdash.jsonBody ?? ''),
      ),
    );
    FFAppState().update(() {});
    return 'True';
  } else if (FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall.result(
        (apiResultConsEstabdash.jsonBody ?? ''),
      ) ==
      'False') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar Dashborad${'\n\n'}Código: False'),
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
    return 'False';
  } else if (FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall.result(
        (apiResultConsEstabdash.jsonBody ?? ''),
      ) ==
      'PARVAZ') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar Dashborad${'\n\n'}Código: PARVAZ'),
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
    return 'PARVAZ';
  } else if (FunctionsServerSupabaseGroup.fcestabelecimentodashboardCall.result(
        (apiResultConsEstabdash.jsonBody ?? ''),
      ) ==
      'TOKINV') {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text('Erro ao consultar Dashborad${'\n\n'}Código: TOKINV'),
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
    return 'TOKINV';
  } else if (!(apiResultConsEstabdash.succeeded ?? true)) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao consultar Dashborad${'\n\n'}Código: Sucess False'),
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
    return 'ERRO';
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                'Erro ao consultar Dashborad${'\n\n'}Código: Indefinido ${(apiResultConsEstabdash?.bodyText ?? '')}'),
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
    return 'ERRO';
  }
}

Future<bool> acOneSignalAPPInicializarNotificacoes(BuildContext context) async {
  bool? resultVerifyNotificationPermission;
  String? resultGetOneSignalUserID;

  if ((isAndroid || isiOS) &&
      (currentUserUid != '')) {
    await actions.caAPPOneSignalInicializa();
    await Future.delayed(
      Duration(
        milliseconds: 500,
      ),
    );
    await actions.caAPPOneSignalRequestNotificationPermissions();
    await Future.delayed(
      Duration(
        milliseconds: 100,
      ),
    );
    resultVerifyNotificationPermission =
        await actions.caAPPOneSignalverifyNotificationPermission();
    await Future.delayed(
      Duration(
        milliseconds: 100,
      ),
    );
    if ((resultVerifyNotificationPermission != null) &&
        (resultVerifyNotificationPermission == true)) {
      resultGetOneSignalUserID = await actions.caAPPOneSignalgetUserId();
      await Future.delayed(
        Duration(
          milliseconds: 10,
        ),
      );
      await actions.caAPPOneSignalUpdateExternalId(
        currentUserUid,
      );
      await Future.delayed(
        Duration(
          milliseconds: 10,
        ),
      );
      FFAppState().varAPPIDOneSignal = resultGetOneSignalUserID!;
      FFAppState().varAPPOneSignalInicializado = true;
      FFAppState().update(() {});
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Notificações atualizadas...',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).info,
              fontWeight: FontWeight.bold,
            ),
          ),
          duration: Duration(milliseconds: 1000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
      if (FFAppState().VarEmDesenvolvimento) {
        unawaited(
          () async {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return WebViewAware(
                  child: AlertDialog(
                    title: Text('TEste'),
                    content: Text('One Signal Inicializado'),
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
          }(),
        );
      }
      return true;
    } else {
      FFAppState().varAPPOneSignalInicializado = false;
      FFAppState().update(() {});
      return false;
    }
  } else {
    return false;
  }
}

Future<bool?> acOneSignalWebAtualizarOptions(BuildContext context) async {
  List<String>? resultOneSignalStorageData;
  String? resultcaOneSignalWebStatus;

  if (!(isWeb && (currentUserUid != ''))) {
    return false;
  }
  resultOneSignalStorageData =
      await actions.caWebOneSignalGetLocalStorageData();
  FFAppState().varWebOneSignalContadorAtzOptions =
      FFAppState().varWebOneSignalContadorAtzOptions + 1;
  if (functions.fcConverterListaPString(resultOneSignalStorageData.toList()) ==
      functions.fcConverterListaPString(
          FFAppState().varWebOneSignalOptions.toList())) {
    return false;
  }

  await actions.caWebOneSignalatualizarVarTbllOptions();
  resultcaOneSignalWebStatus = await actions.caWebOneSignalStatus();
  await action_blocks.acOneSignalWebCarregarNotificacoes(
    context,
    paramFuncao: 'ATZ',
  );
  FFAppState().varWebOneSignalOptions =
      resultOneSignalStorageData.toList().cast<String>();
  FFAppState().varWebOneSignalWebStatusNotificacao =
      resultcaOneSignalWebStatus;
  FFAppState().update(() {});
  return true;
}

Future<bool?> acOneSignalWebCarregarNotificacoes(
  BuildContext context, {
  required String? paramFuncao,
}) async {
  String? acResultSetOneSignalEsternalUserIdLogoff;
  String? resultRequestPermissaox4;
  String? acResultSetOneSignalEsternalUserId;

  if ((paramFuncao == 'SETIDINI') ||
      (paramFuncao == 'ENTRAR') ||
      (paramFuncao == 'CAD')) {
    await Future.delayed(
      Duration(
        milliseconds: 3000,
      ),
    );
  }
  if ((currentUserUid == '') ||
      (paramFuncao == 'DESATIVAR') ||
      (paramFuncao == 'LOGOFF')) {
    if (FFAppState().varWebOneSignalStatusSetIDExterno == 'LOGOFF') {
      return true;
    } else if ((currentUserUid == '') &&
        (FFAppState().varUltimaSenhaLogada != '')) {
      return true;
    }

    acResultSetOneSignalEsternalUserIdLogoff =
        await actions.caWebOneSignalSetExternalUserId(
      '${paramFuncao}${FFAppState().VarTblDispositivoInformacoes.deviceId}',
    );
    FFAppState().varWebOneSignalResultSetExternID =
        acResultSetOneSignalEsternalUserIdLogoff;
    FFAppState().varWebOneSignalStatusSetIDExterno =
        acResultSetOneSignalEsternalUserIdLogoff ==
                'success: ${paramFuncao}${FFAppState().VarTblDispositivoInformacoes.deviceId}'
            ? 'SUCESSO'
            : 'TENTANDOSET';
    FFAppState().update(() {});
    if (acResultSetOneSignalEsternalUserIdLogoff ==
        'success: ${paramFuncao}${FFAppState().VarTblDispositivoInformacoes.deviceId}') {
      return true;
    }

    return false;
  } else {
    resultRequestPermissaox4 = await actions.caWebOneSignalRequestPermission(
      FFAppState().VarTblEstabelecimentoLogado.username,
    );
    acResultSetOneSignalEsternalUserId =
        await actions.caWebOneSignalSetExternalUserId(
      currentUserUid,
    );
    FFAppState().varWebOneSignalResultSetExternID =
        acResultSetOneSignalEsternalUserId;
    FFAppState().varWebOneSignalStatusSetIDExterno =
        acResultSetOneSignalEsternalUserId == 'success: ${currentUserUid}'
            ? 'SUCESSO'
            : 'TENTANDOSET';
    FFAppState().update(() {});
    if (FFAppState().varWebOneSignalStatusSetIDExterno == 'SUCESSO') {
      return true;
    } else {
      return false;
    }
  }
}

Future<String> acCriarPagamentoPlanoEstab(
  BuildContext context, {
  required String? paramidplanopreco,
  required String? paramidcupom,
  required String? paramrenovacao,
  required String? paramcheckout,
  required String? paramAssinatura,
  required String? paramRecriar,
  required String? paramdiastry,
  String? paramDownUp,
}) async {
  String? acBlockRecultCriptMD5CriarPgPlanoEstab;
  ApiCallResponse? apiResultCriarPgPlanoEstab;

  acBlockRecultCriptMD5CriarPgPlanoEstab =
      await action_blocks.acCriptografarStringMD5(
    context,
    paramString: '${paramidplanopreco}28${paramidcupom}89pag',
  );
  apiResultCriarPgPlanoEstab =
      await FunctionsServerSupabaseGroup.fccriarpagamentoCall.call(
    paramData: FFAppState().varDataCriptoBlock,
    paramDv: FFAppState().VarTblDispositivoInformacoes.deviceId,
    paramIdPlanoPreco: paramidplanopreco,
    paramKey: FFAppState().varKeyCriptoBlock,
    paramToken: acBlockRecultCriptMD5CriarPgPlanoEstab,
    paramUserId: currentUserUid,
    paramIdCupom: paramidcupom,
    paramRenovacao: paramrenovacao,
    paramCheckout: paramcheckout,
    token: currentJwtToken,
    paramAss: paramAssinatura,
    paramRec: paramRecriar,
    paramDiasTry: paramdiastry,
    paramDownUp: paramDownUp,
  );

  if (FunctionsServerSupabaseGroup.fccriarpagamentoCall.result(
        (apiResultCriarPgPlanoEstab.jsonBody ?? ''),
      ) ==
      'true') {
    return FunctionsServerSupabaseGroup.fccriarpagamentoCall.idpg(
      (apiResultCriarPgPlanoEstab.jsonBody ?? ''),
    )!;
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                '${FunctionsServerSupabaseGroup.fccriarpagamentoCall.message(
              (apiResultCriarPgPlanoEstab?.jsonBody ?? ''),
            )}'),
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
    return 'ERRO';
  }
}

Future<bool> acEdgeFuncDesfazCancAssinatura(
  BuildContext context, {
  required String? paramSubscriptionID,
}) async {
  ApiCallResponse? apiResultDesfazCancAssinatura;

  apiResultDesfazCancAssinatura =
      await EdgeFunctionsSupabaseGroup.stripedesfazcancelassinaturaCall.call(
    subscriptionId: paramSubscriptionID,
    token: currentJwtToken,
  );

  if ((apiResultDesfazCancAssinatura.succeeded ?? true)) {
    return true;
  }

  await showDialog(
    context: context,
    builder: (alertDialogContext) {
      return WebViewAware(
        child: AlertDialog(
          title: Text('Atenção!'),
          content: Text(
              'Erro ao desfazer cancelamento, tente novamente.${'\n'}${EdgeFunctionsSupabaseGroup.stripedesfazcancelassinaturaCall.error(
            (apiResultDesfazCancAssinatura?.jsonBody ?? ''),
          )}'),
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
  return false;
}

Future<String> acStripePortalURL(
  BuildContext context, {
  required String? paramCustomerID,
}) async {
  ApiCallResponse? apiStripePostalUrlResult;

  apiStripePostalUrlResult =
      await EdgeFunctionsSupabaseGroup.stripeportalurlCall.call(
    customerId: paramCustomerID,
    token: currentJwtToken,
  );

  if ((apiStripePostalUrlResult.succeeded ?? true)) {
    return EdgeFunctionsSupabaseGroup.stripeportalurlCall.url(
      (apiStripePostalUrlResult.jsonBody ?? ''),
    )!;
  }

  await showDialog(
    context: context,
    builder: (alertDialogContext) {
      return WebViewAware(
        child: AlertDialog(
          title: Text('Atenção!'),
          content: Text(
              'Erro ao gerar url: ${EdgeFunctionsSupabaseGroup.stripeportalurlCall.message(
            (apiStripePostalUrlResult?.jsonBody ?? ''),
          )}'),
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

Future<String> acCriarPagamentoAfiliacao(
  BuildContext context, {
  required String? paramidplanopreco,
  required String? paramidcupom,
  required String? paramrenovacao,
  required String? paramcheckout,
  required String? paramAssinatura,
  required String? paramRecriar,
  required String? paramdiastry,
  String? paramDownUp,
}) async {
  String? acBlockRecultCriptMD5CriarPgPlanoAfiliacao;
  ApiCallResponse? apiResultCriarPgPlanoAfiliacao;

  acBlockRecultCriptMD5CriarPgPlanoAfiliacao =
      await action_blocks.acCriptografarStringMD5(
    context,
    paramString: '${paramidplanopreco}28${paramidcupom}89pag',
  );
  apiResultCriarPgPlanoAfiliacao =
      await FunctionsServerSupabaseGroup.fcCriarPagamentoAfiliacaoCall.call(
    paramData: FFAppState().varDataCriptoBlock,
    paramDv: FFAppState().VarTblDispositivoInformacoes.deviceId,
    paramIdPlanoPreco: paramidplanopreco,
    paramKey: FFAppState().varKeyCriptoBlock,
    paramToken: acBlockRecultCriptMD5CriarPgPlanoAfiliacao,
    paramUserId: currentUserUid,
    paramIdCupom: paramidcupom,
    paramRenovacao: paramrenovacao,
    paramCheckout: paramcheckout,
    paramAss: paramAssinatura,
    paramRec: paramRecriar,
    paramDiasTry: paramdiastry,
    paramDownUp: paramDownUp,
    token: currentJwtToken,
  );

  if (FunctionsServerSupabaseGroup.fcCriarPagamentoAfiliacaoCall.result(
        (apiResultCriarPgPlanoAfiliacao.jsonBody ?? ''),
      ) ==
      'true') {
    return FunctionsServerSupabaseGroup.fcCriarPagamentoAfiliacaoCall.idpg(
      (apiResultCriarPgPlanoAfiliacao.jsonBody ?? ''),
    )!;
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            title: Text('Atenção!'),
            content: Text(
                '${FunctionsServerSupabaseGroup.fcCriarPagamentoAfiliacaoCall.message(
              (apiResultCriarPgPlanoAfiliacao?.jsonBody ?? ''),
            )}'),
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
    return 'ERRO';
  }
}

Future<bool> acAtualizarPlanosJson(BuildContext context) async {
  ApiCallResponse? apiResultConsPlanos;

  apiResultConsPlanos =
      await FunctionsServerSupabaseGroup.fcconsultarplanoslandpgCall.call(
    paramIdAfApp: FFAppState().varIDAPPAfiliado.toString(),
  );

  if ((apiResultConsPlanos.succeeded ?? true)) {
    FFAppState().varTblPlanosJson =
        (apiResultConsPlanos.jsonBody ?? '').toList().cast<dynamic>();
    FFAppState().update(() {});
    return true;
  } else {
    return false;
  }
}
