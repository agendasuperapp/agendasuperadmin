import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _varIDAPPAfiliado = await secureStorage.getInt('ff_varIDAPPAfiliado') ??
          _varIDAPPAfiliado;
    });
    await _safeInitAsync(() async {
      _VarIDEstabelecimentoLogado =
          await secureStorage.getInt('ff_VarIDEstabelecimentoLogado') ??
              _VarIDEstabelecimentoLogado;
    });
    await _safeInitAsync(() async {
      _varIDClienteLogado =
          await secureStorage.getInt('ff_varIDClienteLogado') ??
              _varIDClienteLogado;
    });
    await _safeInitAsync(() async {
      _varTblCarrinho = (await secureStorage.getStringList('ff_varTblCarrinho'))
              ?.map((x) {
                try {
                  return TblCarrinhoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _varTblCarrinho;
    });
    await _safeInitAsync(() async {
      _VarEmDesenvolvimento =
          await secureStorage.getBool('ff_VarEmDesenvolvimento') ??
              _VarEmDesenvolvimento;
    });
    await _safeInitAsync(() async {
      _varContadorInicializacoesDesenv =
          await secureStorage.getInt('ff_varContadorInicializacoesDesenv') ??
              _varContadorInicializacoesDesenv;
    });
    await _safeInitAsync(() async {
      _VarUltimoTelLogado =
          await secureStorage.getString('ff_VarUltimoTelLogado') ??
              _VarUltimoTelLogado;
    });
    await _safeInitAsync(() async {
      _VarUltimoEmailLogado =
          await secureStorage.getString('ff_VarUltimoEmailLogado') ??
              _VarUltimoEmailLogado;
    });
    await _safeInitAsync(() async {
      _VarDarkMode =
          await secureStorage.getString('ff_VarDarkMode') ?? _VarDarkMode;
    });
    await _safeInitAsync(() async {
      _VarPreencherHrPadraoAutoMinutos =
          await secureStorage.getInt('ff_VarPreencherHrPadraoAutoMinutos') ??
              _VarPreencherHrPadraoAutoMinutos;
    });
    await _safeInitAsync(() async {
      _varUltCupomUsado =
          await secureStorage.getString('ff_varUltCupomUsado') ??
              _varUltCupomUsado;
    });
    await _safeInitAsync(() async {
      _varAPPNotificacoesAtivas =
          await secureStorage.getBool('ff_varAPPNotificacoesAtivas') ??
              _varAPPNotificacoesAtivas;
    });
    await _safeInitAsync(() async {
      _varWebOneSignalNotificacoesAtivas =
          await secureStorage.getBool('ff_varWebOneSignalNotificacoesAtivas') ??
              _varWebOneSignalNotificacoesAtivas;
    });
    await _safeInitAsync(() async {
      _varWebOneSignalContadorAtzOptions =
          await secureStorage.getInt('ff_varWebOneSignalContadorAtzOptions') ??
              _varWebOneSignalContadorAtzOptions;
    });
    await _safeInitAsync(() async {
      _varUltimaSenhaLogada =
          await secureStorage.getString('ff_varUltimaSenhaLogada') ??
              _varUltimaSenhaLogada;
    });
    await _safeInitAsync(() async {
      _varTextoConcluirCad =
          await secureStorage.getString('ff_varTextoConcluirCad') ??
              _varTextoConcluirCad;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _VarVersaoSistema = '4.1.47';
  String get VarVersaoSistema => _VarVersaoSistema;
  set VarVersaoSistema(String value) {
    _VarVersaoSistema = value;
  }

  int _varIDAPPAfiliado = 91234567890;
  int get varIDAPPAfiliado => _varIDAPPAfiliado;
  set varIDAPPAfiliado(int value) {
    _varIDAPPAfiliado = value;
    secureStorage.setInt('ff_varIDAPPAfiliado', value);
  }

  void deleteVarIDAPPAfiliado() {
    secureStorage.delete(key: 'ff_varIDAPPAfiliado');
  }

  int _VarIDEstabelecimentoLogado = 0;
  int get VarIDEstabelecimentoLogado => _VarIDEstabelecimentoLogado;
  set VarIDEstabelecimentoLogado(int value) {
    _VarIDEstabelecimentoLogado = value;
    secureStorage.setInt('ff_VarIDEstabelecimentoLogado', value);
  }

  void deleteVarIDEstabelecimentoLogado() {
    secureStorage.delete(key: 'ff_VarIDEstabelecimentoLogado');
  }

  TblEstabelecimentoLogadoStruct _VarTblEstabelecimentoLogado =
      TblEstabelecimentoLogadoStruct();
  TblEstabelecimentoLogadoStruct get VarTblEstabelecimentoLogado =>
      _VarTblEstabelecimentoLogado;
  set VarTblEstabelecimentoLogado(TblEstabelecimentoLogadoStruct value) {
    _VarTblEstabelecimentoLogado = value;
  }

  void updateVarTblEstabelecimentoLogadoStruct(
      Function(TblEstabelecimentoLogadoStruct) updateFn) {
    updateFn(_VarTblEstabelecimentoLogado);
  }

  int _varIDAfiliadoLogado = 0;
  int get varIDAfiliadoLogado => _varIDAfiliadoLogado;
  set varIDAfiliadoLogado(int value) {
    _varIDAfiliadoLogado = value;
  }

  int _varIDClienteLogado = 0;
  int get varIDClienteLogado => _varIDClienteLogado;
  set varIDClienteLogado(int value) {
    _varIDClienteLogado = value;
    secureStorage.setInt('ff_varIDClienteLogado', value);
  }

  void deleteVarIDClienteLogado() {
    secureStorage.delete(key: 'ff_varIDClienteLogado');
  }

  int _VarIDUsuarioLogado = 0;
  int get VarIDUsuarioLogado => _VarIDUsuarioLogado;
  set VarIDUsuarioLogado(int value) {
    _VarIDUsuarioLogado = value;
  }

  TblDispositivoInformacoesStruct _VarTblDispositivoInformacoes =
      TblDispositivoInformacoesStruct();
  TblDispositivoInformacoesStruct get VarTblDispositivoInformacoes =>
      _VarTblDispositivoInformacoes;
  set VarTblDispositivoInformacoes(TblDispositivoInformacoesStruct value) {
    _VarTblDispositivoInformacoes = value;
  }

  void updateVarTblDispositivoInformacoesStruct(
      Function(TblDispositivoInformacoesStruct) updateFn) {
    updateFn(_VarTblDispositivoInformacoes);
  }

  List<TblCalendarioPersonalizadoStruct>
      _VarTblCalendarioPersonalizadoSelecionado = [];
  List<TblCalendarioPersonalizadoStruct>
      get VarTblCalendarioPersonalizadoSelecionado =>
          _VarTblCalendarioPersonalizadoSelecionado;
  set VarTblCalendarioPersonalizadoSelecionado(
      List<TblCalendarioPersonalizadoStruct> value) {
    _VarTblCalendarioPersonalizadoSelecionado = value;
  }

  void addToVarTblCalendarioPersonalizadoSelecionado(
      TblCalendarioPersonalizadoStruct value) {
    VarTblCalendarioPersonalizadoSelecionado.add(value);
  }

  void removeFromVarTblCalendarioPersonalizadoSelecionado(
      TblCalendarioPersonalizadoStruct value) {
    VarTblCalendarioPersonalizadoSelecionado.remove(value);
  }

  void removeAtIndexFromVarTblCalendarioPersonalizadoSelecionado(int index) {
    VarTblCalendarioPersonalizadoSelecionado.removeAt(index);
  }

  void updateVarTblCalendarioPersonalizadoSelecionadoAtIndex(
    int index,
    TblCalendarioPersonalizadoStruct Function(TblCalendarioPersonalizadoStruct)
        updateFn,
  ) {
    VarTblCalendarioPersonalizadoSelecionado[index] =
        updateFn(_VarTblCalendarioPersonalizadoSelecionado[index]);
  }

  void insertAtIndexInVarTblCalendarioPersonalizadoSelecionado(
      int index, TblCalendarioPersonalizadoStruct value) {
    VarTblCalendarioPersonalizadoSelecionado.insert(index, value);
  }

  int _VarCalendarioDiaSelecionado = 0;
  int get VarCalendarioDiaSelecionado => _VarCalendarioDiaSelecionado;
  set VarCalendarioDiaSelecionado(int value) {
    _VarCalendarioDiaSelecionado = value;
  }

  int _VarCalendarioMesSelecionado = 0;
  int get VarCalendarioMesSelecionado => _VarCalendarioMesSelecionado;
  set VarCalendarioMesSelecionado(int value) {
    _VarCalendarioMesSelecionado = value;
  }

  int _VarCalendarioAnoSelecionado = 0;
  int get VarCalendarioAnoSelecionado => _VarCalendarioAnoSelecionado;
  set VarCalendarioAnoSelecionado(int value) {
    _VarCalendarioAnoSelecionado = value;
  }

  List<String> _VarCalendarioListaDiasDisponiveis = [];
  List<String> get VarCalendarioListaDiasDisponiveis =>
      _VarCalendarioListaDiasDisponiveis;
  set VarCalendarioListaDiasDisponiveis(List<String> value) {
    _VarCalendarioListaDiasDisponiveis = value;
  }

  void addToVarCalendarioListaDiasDisponiveis(String value) {
    VarCalendarioListaDiasDisponiveis.add(value);
  }

  void removeFromVarCalendarioListaDiasDisponiveis(String value) {
    VarCalendarioListaDiasDisponiveis.remove(value);
  }

  void removeAtIndexFromVarCalendarioListaDiasDisponiveis(int index) {
    VarCalendarioListaDiasDisponiveis.removeAt(index);
  }

  void updateVarCalendarioListaDiasDisponiveisAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    VarCalendarioListaDiasDisponiveis[index] =
        updateFn(_VarCalendarioListaDiasDisponiveis[index]);
  }

  void insertAtIndexInVarCalendarioListaDiasDisponiveis(
      int index, String value) {
    VarCalendarioListaDiasDisponiveis.insert(index, value);
  }

  int _VarCalendarioIndexCarrocelAtual = 1;
  int get VarCalendarioIndexCarrocelAtual => _VarCalendarioIndexCarrocelAtual;
  set VarCalendarioIndexCarrocelAtual(int value) {
    _VarCalendarioIndexCarrocelAtual = value;
  }

  DateTime? _varCalendarioDataSelecionada;
  DateTime? get varCalendarioDataSelecionada => _varCalendarioDataSelecionada;
  set varCalendarioDataSelecionada(DateTime? value) {
    _varCalendarioDataSelecionada = value;
  }

  List<TblHorariosDisponiveisProfissionalStruct>
      _VarTblHorariosDisponiveisProfissional = [];
  List<TblHorariosDisponiveisProfissionalStruct>
      get VarTblHorariosDisponiveisProfissional =>
          _VarTblHorariosDisponiveisProfissional;
  set VarTblHorariosDisponiveisProfissional(
      List<TblHorariosDisponiveisProfissionalStruct> value) {
    _VarTblHorariosDisponiveisProfissional = value;
  }

  void addToVarTblHorariosDisponiveisProfissional(
      TblHorariosDisponiveisProfissionalStruct value) {
    VarTblHorariosDisponiveisProfissional.add(value);
  }

  void removeFromVarTblHorariosDisponiveisProfissional(
      TblHorariosDisponiveisProfissionalStruct value) {
    VarTblHorariosDisponiveisProfissional.remove(value);
  }

  void removeAtIndexFromVarTblHorariosDisponiveisProfissional(int index) {
    VarTblHorariosDisponiveisProfissional.removeAt(index);
  }

  void updateVarTblHorariosDisponiveisProfissionalAtIndex(
    int index,
    TblHorariosDisponiveisProfissionalStruct Function(
            TblHorariosDisponiveisProfissionalStruct)
        updateFn,
  ) {
    VarTblHorariosDisponiveisProfissional[index] =
        updateFn(_VarTblHorariosDisponiveisProfissional[index]);
  }

  void insertAtIndexInVarTblHorariosDisponiveisProfissional(
      int index, TblHorariosDisponiveisProfissionalStruct value) {
    VarTblHorariosDisponiveisProfissional.insert(index, value);
  }

  int _VarContadorBlock = 0;
  int get VarContadorBlock => _VarContadorBlock;
  set VarContadorBlock(int value) {
    _VarContadorBlock = value;
  }

  int _varIDHoraSelecionada = 0;
  int get varIDHoraSelecionada => _varIDHoraSelecionada;
  set varIDHoraSelecionada(int value) {
    _varIDHoraSelecionada = value;
  }

  String _VarHoraSelecionada = '';
  String get VarHoraSelecionada => _VarHoraSelecionada;
  set VarHoraSelecionada(String value) {
    _VarHoraSelecionada = value;
  }

  List<TblHorariosDisponiveisStruct> _VarTblHorariosDisponiveisEstabelecimento =
      [];
  List<TblHorariosDisponiveisStruct>
      get VarTblHorariosDisponiveisEstabelecimento =>
          _VarTblHorariosDisponiveisEstabelecimento;
  set VarTblHorariosDisponiveisEstabelecimento(
      List<TblHorariosDisponiveisStruct> value) {
    _VarTblHorariosDisponiveisEstabelecimento = value;
  }

  void addToVarTblHorariosDisponiveisEstabelecimento(
      TblHorariosDisponiveisStruct value) {
    VarTblHorariosDisponiveisEstabelecimento.add(value);
  }

  void removeFromVarTblHorariosDisponiveisEstabelecimento(
      TblHorariosDisponiveisStruct value) {
    VarTblHorariosDisponiveisEstabelecimento.remove(value);
  }

  void removeAtIndexFromVarTblHorariosDisponiveisEstabelecimento(int index) {
    VarTblHorariosDisponiveisEstabelecimento.removeAt(index);
  }

  void updateVarTblHorariosDisponiveisEstabelecimentoAtIndex(
    int index,
    TblHorariosDisponiveisStruct Function(TblHorariosDisponiveisStruct)
        updateFn,
  ) {
    VarTblHorariosDisponiveisEstabelecimento[index] =
        updateFn(_VarTblHorariosDisponiveisEstabelecimento[index]);
  }

  void insertAtIndexInVarTblHorariosDisponiveisEstabelecimento(
      int index, TblHorariosDisponiveisStruct value) {
    VarTblHorariosDisponiveisEstabelecimento.insert(index, value);
  }

  int _varQuantHorariosDisponiveisProfissional = 0;
  int get varQuantHorariosDisponiveisProfissional =>
      _varQuantHorariosDisponiveisProfissional;
  set varQuantHorariosDisponiveisProfissional(int value) {
    _varQuantHorariosDisponiveisProfissional = value;
  }

  int _varQuantHorariosDisponiveisEstabelecimento = 0;
  int get varQuantHorariosDisponiveisEstabelecimento =>
      _varQuantHorariosDisponiveisEstabelecimento;
  set varQuantHorariosDisponiveisEstabelecimento(int value) {
    _varQuantHorariosDisponiveisEstabelecimento = value;
  }

  TblCarrinhoStruct _varTblCarrinhoAdd = TblCarrinhoStruct();
  TblCarrinhoStruct get varTblCarrinhoAdd => _varTblCarrinhoAdd;
  set varTblCarrinhoAdd(TblCarrinhoStruct value) {
    _varTblCarrinhoAdd = value;
  }

  void updateVarTblCarrinhoAddStruct(Function(TblCarrinhoStruct) updateFn) {
    updateFn(_varTblCarrinhoAdd);
  }

  List<TblCarrinhoStruct> _varTblCarrinho = [];
  List<TblCarrinhoStruct> get varTblCarrinho => _varTblCarrinho;
  set varTblCarrinho(List<TblCarrinhoStruct> value) {
    _varTblCarrinho = value;
    secureStorage.setStringList(
        'ff_varTblCarrinho', value.map((x) => x.serialize()).toList());
  }

  void deleteVarTblCarrinho() {
    secureStorage.delete(key: 'ff_varTblCarrinho');
  }

  void addToVarTblCarrinho(TblCarrinhoStruct value) {
    varTblCarrinho.add(value);
    secureStorage.setStringList('ff_varTblCarrinho',
        _varTblCarrinho.map((x) => x.serialize()).toList());
  }

  void removeFromVarTblCarrinho(TblCarrinhoStruct value) {
    varTblCarrinho.remove(value);
    secureStorage.setStringList('ff_varTblCarrinho',
        _varTblCarrinho.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromVarTblCarrinho(int index) {
    varTblCarrinho.removeAt(index);
    secureStorage.setStringList('ff_varTblCarrinho',
        _varTblCarrinho.map((x) => x.serialize()).toList());
  }

  void updateVarTblCarrinhoAtIndex(
    int index,
    TblCarrinhoStruct Function(TblCarrinhoStruct) updateFn,
  ) {
    varTblCarrinho[index] = updateFn(_varTblCarrinho[index]);
    secureStorage.setStringList('ff_varTblCarrinho',
        _varTblCarrinho.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInVarTblCarrinho(int index, TblCarrinhoStruct value) {
    varTblCarrinho.insert(index, value);
    secureStorage.setStringList('ff_varTblCarrinho',
        _varTblCarrinho.map((x) => x.serialize()).toList());
  }

  bool _VarAppIniciadoHome = false;
  bool get VarAppIniciadoHome => _VarAppIniciadoHome;
  set VarAppIniciadoHome(bool value) {
    _VarAppIniciadoHome = value;
  }

  bool _VarAbrirJanelasWebAndroid = false;
  bool get VarAbrirJanelasWebAndroid => _VarAbrirJanelasWebAndroid;
  set VarAbrirJanelasWebAndroid(bool value) {
    _VarAbrirJanelasWebAndroid = value;
  }

  bool _VarEmDesenvolvimento = false;
  bool get VarEmDesenvolvimento => _VarEmDesenvolvimento;
  set VarEmDesenvolvimento(bool value) {
    _VarEmDesenvolvimento = value;
    secureStorage.setBool('ff_VarEmDesenvolvimento', value);
  }

  void deleteVarEmDesenvolvimento() {
    secureStorage.delete(key: 'ff_VarEmDesenvolvimento');
  }

  int _varContadorInicializacoesDesenv = 0;
  int get varContadorInicializacoesDesenv => _varContadorInicializacoesDesenv;
  set varContadorInicializacoesDesenv(int value) {
    _varContadorInicializacoesDesenv = value;
    secureStorage.setInt('ff_varContadorInicializacoesDesenv', value);
  }

  void deleteVarContadorInicializacoesDesenv() {
    secureStorage.delete(key: 'ff_varContadorInicializacoesDesenv');
  }

  TblVerificarSenhaStruct _varTblVerificarSenha = TblVerificarSenhaStruct();
  TblVerificarSenhaStruct get varTblVerificarSenha => _varTblVerificarSenha;
  set varTblVerificarSenha(TblVerificarSenhaStruct value) {
    _varTblVerificarSenha = value;
  }

  void updateVarTblVerificarSenhaStruct(
      Function(TblVerificarSenhaStruct) updateFn) {
    updateFn(_varTblVerificarSenha);
  }

  TblClienteLogadoStruct _VarTblClienteLogado = TblClienteLogadoStruct();
  TblClienteLogadoStruct get VarTblClienteLogado => _VarTblClienteLogado;
  set VarTblClienteLogado(TblClienteLogadoStruct value) {
    _VarTblClienteLogado = value;
  }

  void updateVarTblClienteLogadoStruct(
      Function(TblClienteLogadoStruct) updateFn) {
    updateFn(_VarTblClienteLogado);
  }

  String _VarUltimoTelLogado = '';
  String get VarUltimoTelLogado => _VarUltimoTelLogado;
  set VarUltimoTelLogado(String value) {
    _VarUltimoTelLogado = value;
    secureStorage.setString('ff_VarUltimoTelLogado', value);
  }

  void deleteVarUltimoTelLogado() {
    secureStorage.delete(key: 'ff_VarUltimoTelLogado');
  }

  String _VarUltimoEmailLogado = '';
  String get VarUltimoEmailLogado => _VarUltimoEmailLogado;
  set VarUltimoEmailLogado(String value) {
    _VarUltimoEmailLogado = value;
    secureStorage.setString('ff_VarUltimoEmailLogado', value);
  }

  void deleteVarUltimoEmailLogado() {
    secureStorage.delete(key: 'ff_VarUltimoEmailLogado');
  }

  String _VarEmailContatoAgendaSuper = 'contatoagendasuper@gmail.com';
  String get VarEmailContatoAgendaSuper => _VarEmailContatoAgendaSuper;
  set VarEmailContatoAgendaSuper(String value) {
    _VarEmailContatoAgendaSuper = value;
  }

  String _varPaginaSelecionada = '';
  String get varPaginaSelecionada => _varPaginaSelecionada;
  set varPaginaSelecionada(String value) {
    _varPaginaSelecionada = value;
  }

  String _VarDarkMode = '';
  String get VarDarkMode => _VarDarkMode;
  set VarDarkMode(String value) {
    _VarDarkMode = value;
    secureStorage.setString('ff_VarDarkMode', value);
  }

  void deleteVarDarkMode() {
    secureStorage.delete(key: 'ff_VarDarkMode');
  }

  TblWhatsAppStruct _VarTblWhatsApp = TblWhatsAppStruct();
  TblWhatsAppStruct get VarTblWhatsApp => _VarTblWhatsApp;
  set VarTblWhatsApp(TblWhatsAppStruct value) {
    _VarTblWhatsApp = value;
  }

  void updateVarTblWhatsAppStruct(Function(TblWhatsAppStruct) updateFn) {
    updateFn(_VarTblWhatsApp);
  }

  bool _varIrParaCadastroDeUsuarioEmpresa = false;
  bool get varIrParaCadastroDeUsuarioEmpresa =>
      _varIrParaCadastroDeUsuarioEmpresa;
  set varIrParaCadastroDeUsuarioEmpresa(bool value) {
    _varIrParaCadastroDeUsuarioEmpresa = value;
  }

  String _varAPIKeySistemaEvolutionWhatsApp =
      '31wI1bKLxx9hxlFIdMdfy3ePhAaijsdd';
  String get varAPIKeySistemaEvolutionWhatsApp =>
      _varAPIKeySistemaEvolutionWhatsApp;
  set varAPIKeySistemaEvolutionWhatsApp(String value) {
    _varAPIKeySistemaEvolutionWhatsApp = value;
  }

  int _varTamanhoMinimoTelaMenuLateral = 1050;
  int get varTamanhoMinimoTelaMenuLateral => _varTamanhoMinimoTelaMenuLateral;
  set varTamanhoMinimoTelaMenuLateral(int value) {
    _varTamanhoMinimoTelaMenuLateral = value;
  }

  int _VarPreencherHrPadraoAutoMinutos = 60;
  int get VarPreencherHrPadraoAutoMinutos => _VarPreencherHrPadraoAutoMinutos;
  set VarPreencherHrPadraoAutoMinutos(int value) {
    _VarPreencherHrPadraoAutoMinutos = value;
    secureStorage.setInt('ff_VarPreencherHrPadraoAutoMinutos', value);
  }

  void deleteVarPreencherHrPadraoAutoMinutos() {
    secureStorage.delete(key: 'ff_VarPreencherHrPadraoAutoMinutos');
  }

  List<TblHorarioFuncionamentoStruct> _varTblHorarioFuncionamento = [];
  List<TblHorarioFuncionamentoStruct> get varTblHorarioFuncionamento =>
      _varTblHorarioFuncionamento;
  set varTblHorarioFuncionamento(List<TblHorarioFuncionamentoStruct> value) {
    _varTblHorarioFuncionamento = value;
  }

  void addToVarTblHorarioFuncionamento(TblHorarioFuncionamentoStruct value) {
    varTblHorarioFuncionamento.add(value);
  }

  void removeFromVarTblHorarioFuncionamento(
      TblHorarioFuncionamentoStruct value) {
    varTblHorarioFuncionamento.remove(value);
  }

  void removeAtIndexFromVarTblHorarioFuncionamento(int index) {
    varTblHorarioFuncionamento.removeAt(index);
  }

  void updateVarTblHorarioFuncionamentoAtIndex(
    int index,
    TblHorarioFuncionamentoStruct Function(TblHorarioFuncionamentoStruct)
        updateFn,
  ) {
    varTblHorarioFuncionamento[index] =
        updateFn(_varTblHorarioFuncionamento[index]);
  }

  void insertAtIndexInVarTblHorarioFuncionamento(
      int index, TblHorarioFuncionamentoStruct value) {
    varTblHorarioFuncionamento.insert(index, value);
  }

  TblUsuarioLogadoAdminStruct _varTblUsuarios = TblUsuarioLogadoAdminStruct();
  TblUsuarioLogadoAdminStruct get varTblUsuarios => _varTblUsuarios;
  set varTblUsuarios(TblUsuarioLogadoAdminStruct value) {
    _varTblUsuarios = value;
  }

  void updateVarTblUsuariosStruct(
      Function(TblUsuarioLogadoAdminStruct) updateFn) {
    updateFn(_varTblUsuarios);
  }

  String _varUltCupomUsado = '';
  String get varUltCupomUsado => _varUltCupomUsado;
  set varUltCupomUsado(String value) {
    _varUltCupomUsado = value;
    secureStorage.setString('ff_varUltCupomUsado', value);
  }

  void deleteVarUltCupomUsado() {
    secureStorage.delete(key: 'ff_varUltCupomUsado');
  }

  String _VarMercadoPagoAcessToken =
      'APP_USR-8088831434284918-112222-b214ab7da4719f99d739c55153882782-464129418';
  String get VarMercadoPagoAcessToken => _VarMercadoPagoAcessToken;
  set VarMercadoPagoAcessToken(String value) {
    _VarMercadoPagoAcessToken = value;
  }

  String _VarMercadoPagoPublicKey =
      'APP_USR-b54cc92e-a775-4b45-8c40-c3ddd57b2522';
  String get VarMercadoPagoPublicKey => _VarMercadoPagoPublicKey;
  set VarMercadoPagoPublicKey(String value) {
    _VarMercadoPagoPublicKey = value;
  }

  String _varKeyCriptoBlock = '';
  String get varKeyCriptoBlock => _varKeyCriptoBlock;
  set varKeyCriptoBlock(String value) {
    _varKeyCriptoBlock = value;
  }

  String _varDataCriptoBlock = '';
  String get varDataCriptoBlock => _varDataCriptoBlock;
  set varDataCriptoBlock(String value) {
    _varDataCriptoBlock = value;
  }

  String _varStringCriptoBlock = '';
  String get varStringCriptoBlock => _varStringCriptoBlock;
  set varStringCriptoBlock(String value) {
    _varStringCriptoBlock = value;
  }

  bool _varCarregouPrimeiraPagina = true;
  bool get varCarregouPrimeiraPagina => _varCarregouPrimeiraPagina;
  set varCarregouPrimeiraPagina(bool value) {
    _varCarregouPrimeiraPagina = value;
  }

  List<TblSegmentosDxV1cPzStruct> _varTblSegmentos = [];
  List<TblSegmentosDxV1cPzStruct> get varTblSegmentos => _varTblSegmentos;
  set varTblSegmentos(List<TblSegmentosDxV1cPzStruct> value) {
    _varTblSegmentos = value;
  }

  void addToVarTblSegmentos(TblSegmentosDxV1cPzStruct value) {
    varTblSegmentos.add(value);
  }

  void removeFromVarTblSegmentos(TblSegmentosDxV1cPzStruct value) {
    varTblSegmentos.remove(value);
  }

  void removeAtIndexFromVarTblSegmentos(int index) {
    varTblSegmentos.removeAt(index);
  }

  void updateVarTblSegmentosAtIndex(
    int index,
    TblSegmentosDxV1cPzStruct Function(TblSegmentosDxV1cPzStruct) updateFn,
  ) {
    varTblSegmentos[index] = updateFn(_varTblSegmentos[index]);
  }

  void insertAtIndexInVarTblSegmentos(
      int index, TblSegmentosDxV1cPzStruct value) {
    varTblSegmentos.insert(index, value);
  }

  dynamic _varTblAfiliadosJson;
  dynamic get varTblAfiliadosJson => _varTblAfiliadosJson;
  set varTblAfiliadosJson(dynamic value) {
    _varTblAfiliadosJson = value;
  }

  TblAfiliadoFFezX1b2Struct _varTblAfiliado = TblAfiliadoFFezX1b2Struct();
  TblAfiliadoFFezX1b2Struct get varTblAfiliado => _varTblAfiliado;
  set varTblAfiliado(TblAfiliadoFFezX1b2Struct value) {
    _varTblAfiliado = value;
  }

  void updateVarTblAfiliadoStruct(
      Function(TblAfiliadoFFezX1b2Struct) updateFn) {
    updateFn(_varTblAfiliado);
  }

  List<TblPlanosPeriodosXTfeZ1cStruct> _varTblPlanosPeriodos = [];
  List<TblPlanosPeriodosXTfeZ1cStruct> get varTblPlanosPeriodos =>
      _varTblPlanosPeriodos;
  set varTblPlanosPeriodos(List<TblPlanosPeriodosXTfeZ1cStruct> value) {
    _varTblPlanosPeriodos = value;
  }

  void addToVarTblPlanosPeriodos(TblPlanosPeriodosXTfeZ1cStruct value) {
    varTblPlanosPeriodos.add(value);
  }

  void removeFromVarTblPlanosPeriodos(TblPlanosPeriodosXTfeZ1cStruct value) {
    varTblPlanosPeriodos.remove(value);
  }

  void removeAtIndexFromVarTblPlanosPeriodos(int index) {
    varTblPlanosPeriodos.removeAt(index);
  }

  void updateVarTblPlanosPeriodosAtIndex(
    int index,
    TblPlanosPeriodosXTfeZ1cStruct Function(TblPlanosPeriodosXTfeZ1cStruct)
        updateFn,
  ) {
    varTblPlanosPeriodos[index] = updateFn(_varTblPlanosPeriodos[index]);
  }

  void insertAtIndexInVarTblPlanosPeriodos(
      int index, TblPlanosPeriodosXTfeZ1cStruct value) {
    varTblPlanosPeriodos.insert(index, value);
  }

  List<TblPlanosDXve3yNStruct> _varTblPlanos = [];
  List<TblPlanosDXve3yNStruct> get varTblPlanos => _varTblPlanos;
  set varTblPlanos(List<TblPlanosDXve3yNStruct> value) {
    _varTblPlanos = value;
  }

  void addToVarTblPlanos(TblPlanosDXve3yNStruct value) {
    varTblPlanos.add(value);
  }

  void removeFromVarTblPlanos(TblPlanosDXve3yNStruct value) {
    varTblPlanos.remove(value);
  }

  void removeAtIndexFromVarTblPlanos(int index) {
    varTblPlanos.removeAt(index);
  }

  void updateVarTblPlanosAtIndex(
    int index,
    TblPlanosDXve3yNStruct Function(TblPlanosDXve3yNStruct) updateFn,
  ) {
    varTblPlanos[index] = updateFn(_varTblPlanos[index]);
  }

  void insertAtIndexInVarTblPlanos(int index, TblPlanosDXve3yNStruct value) {
    varTblPlanos.insert(index, value);
  }

  TblAfiliadoCupomFeTy2GibStruct _varTblAfiliadoCupom =
      TblAfiliadoCupomFeTy2GibStruct();
  TblAfiliadoCupomFeTy2GibStruct get varTblAfiliadoCupom =>
      _varTblAfiliadoCupom;
  set varTblAfiliadoCupom(TblAfiliadoCupomFeTy2GibStruct value) {
    _varTblAfiliadoCupom = value;
  }

  void updateVarTblAfiliadoCupomStruct(
      Function(TblAfiliadoCupomFeTy2GibStruct) updateFn) {
    updateFn(_varTblAfiliadoCupom);
  }

  List<TblModelosBannersXTfv1c8Struct> _varTblModelosBanners = [];
  List<TblModelosBannersXTfv1c8Struct> get varTblModelosBanners =>
      _varTblModelosBanners;
  set varTblModelosBanners(List<TblModelosBannersXTfv1c8Struct> value) {
    _varTblModelosBanners = value;
  }

  void addToVarTblModelosBanners(TblModelosBannersXTfv1c8Struct value) {
    varTblModelosBanners.add(value);
  }

  void removeFromVarTblModelosBanners(TblModelosBannersXTfv1c8Struct value) {
    varTblModelosBanners.remove(value);
  }

  void removeAtIndexFromVarTblModelosBanners(int index) {
    varTblModelosBanners.removeAt(index);
  }

  void updateVarTblModelosBannersAtIndex(
    int index,
    TblModelosBannersXTfv1c8Struct Function(TblModelosBannersXTfv1c8Struct)
        updateFn,
  ) {
    varTblModelosBanners[index] = updateFn(_varTblModelosBanners[index]);
  }

  void insertAtIndexInVarTblModelosBanners(
      int index, TblModelosBannersXTfv1c8Struct value) {
    varTblModelosBanners.insert(index, value);
  }

  int _varLayoutTamanhoMenuLateral = 250;
  int get varLayoutTamanhoMenuLateral => _varLayoutTamanhoMenuLateral;
  set varLayoutTamanhoMenuLateral(int value) {
    _varLayoutTamanhoMenuLateral = value;
  }

  String _varGrupoBotaoSelecionado = '';
  String get varGrupoBotaoSelecionado => _varGrupoBotaoSelecionado;
  set varGrupoBotaoSelecionado(String value) {
    _varGrupoBotaoSelecionado = value;
  }

  TblAfiliadosDashboardGveB12fBVStruct _varTblAfiliadosDashboard =
      TblAfiliadosDashboardGveB12fBVStruct();
  TblAfiliadosDashboardGveB12fBVStruct get varTblAfiliadosDashboard =>
      _varTblAfiliadosDashboard;
  set varTblAfiliadosDashboard(TblAfiliadosDashboardGveB12fBVStruct value) {
    _varTblAfiliadosDashboard = value;
  }

  void updateVarTblAfiliadosDashboardStruct(
      Function(TblAfiliadosDashboardGveB12fBVStruct) updateFn) {
    updateFn(_varTblAfiliadosDashboard);
  }

  bool _varMostrarAvisoPgPlanoEstab = true;
  bool get varMostrarAvisoPgPlanoEstab => _varMostrarAvisoPgPlanoEstab;
  set varMostrarAvisoPgPlanoEstab(bool value) {
    _varMostrarAvisoPgPlanoEstab = value;
  }

  int _varQuantNotificacoes = 0;
  int get varQuantNotificacoes => _varQuantNotificacoes;
  set varQuantNotificacoes(int value) {
    _varQuantNotificacoes = value;
  }

  List<TblModelosServicosTbc8BaB5Struct> _varTblModelosServicos = [];
  List<TblModelosServicosTbc8BaB5Struct> get varTblModelosServicos =>
      _varTblModelosServicos;
  set varTblModelosServicos(List<TblModelosServicosTbc8BaB5Struct> value) {
    _varTblModelosServicos = value;
  }

  void addToVarTblModelosServicos(TblModelosServicosTbc8BaB5Struct value) {
    varTblModelosServicos.add(value);
  }

  void removeFromVarTblModelosServicos(TblModelosServicosTbc8BaB5Struct value) {
    varTblModelosServicos.remove(value);
  }

  void removeAtIndexFromVarTblModelosServicos(int index) {
    varTblModelosServicos.removeAt(index);
  }

  void updateVarTblModelosServicosAtIndex(
    int index,
    TblModelosServicosTbc8BaB5Struct Function(TblModelosServicosTbc8BaB5Struct)
        updateFn,
  ) {
    varTblModelosServicos[index] = updateFn(_varTblModelosServicos[index]);
  }

  void insertAtIndexInVarTblModelosServicos(
      int index, TblModelosServicosTbc8BaB5Struct value) {
    varTblModelosServicos.insert(index, value);
  }

  TblEstabelecimentoDashboardFeB31K3Struct _varTblEstabelecimentoDashboard =
      TblEstabelecimentoDashboardFeB31K3Struct();
  TblEstabelecimentoDashboardFeB31K3Struct get varTblEstabelecimentoDashboard =>
      _varTblEstabelecimentoDashboard;
  set varTblEstabelecimentoDashboard(
      TblEstabelecimentoDashboardFeB31K3Struct value) {
    _varTblEstabelecimentoDashboard = value;
  }

  void updateVarTblEstabelecimentoDashboardStruct(
      Function(TblEstabelecimentoDashboardFeB31K3Struct) updateFn) {
    updateFn(_varTblEstabelecimentoDashboard);
  }

  String _varAPPIDOneSignal = '';
  String get varAPPIDOneSignal => _varAPPIDOneSignal;
  set varAPPIDOneSignal(String value) {
    _varAPPIDOneSignal = value;
  }

  bool _varAPPNotificacoesAtivas = true;
  bool get varAPPNotificacoesAtivas => _varAPPNotificacoesAtivas;
  set varAPPNotificacoesAtivas(bool value) {
    _varAPPNotificacoesAtivas = value;
    secureStorage.setBool('ff_varAPPNotificacoesAtivas', value);
  }

  void deleteVarAPPNotificacoesAtivas() {
    secureStorage.delete(key: 'ff_varAPPNotificacoesAtivas');
  }

  bool _varAPPOneSignalInicializado = false;
  bool get varAPPOneSignalInicializado => _varAPPOneSignalInicializado;
  set varAPPOneSignalInicializado(bool value) {
    _varAPPOneSignalInicializado = value;
  }

  bool _varWebOneSignalNotificacoesAtivas = true;
  bool get varWebOneSignalNotificacoesAtivas =>
      _varWebOneSignalNotificacoesAtivas;
  set varWebOneSignalNotificacoesAtivas(bool value) {
    _varWebOneSignalNotificacoesAtivas = value;
    secureStorage.setBool('ff_varWebOneSignalNotificacoesAtivas', value);
  }

  void deleteVarWebOneSignalNotificacoesAtivas() {
    secureStorage.delete(key: 'ff_varWebOneSignalNotificacoesAtivas');
  }

  String _varWebOneSignalWebStatusNotificacao = '';
  String get varWebOneSignalWebStatusNotificacao =>
      _varWebOneSignalWebStatusNotificacao;
  set varWebOneSignalWebStatusNotificacao(String value) {
    _varWebOneSignalWebStatusNotificacao = value;
  }

  String _varWebOneSignalResultSetExternID = '';
  String get varWebOneSignalResultSetExternID =>
      _varWebOneSignalResultSetExternID;
  set varWebOneSignalResultSetExternID(String value) {
    _varWebOneSignalResultSetExternID = value;
  }

  String _varWebOneSignalStatusSetIDExterno = '';
  String get varWebOneSignalStatusSetIDExterno =>
      _varWebOneSignalStatusSetIDExterno;
  set varWebOneSignalStatusSetIDExterno(String value) {
    _varWebOneSignalStatusSetIDExterno = value;
  }

  List<String> _varWebOneSignalOptions = [];
  List<String> get varWebOneSignalOptions => _varWebOneSignalOptions;
  set varWebOneSignalOptions(List<String> value) {
    _varWebOneSignalOptions = value;
  }

  void addToVarWebOneSignalOptions(String value) {
    varWebOneSignalOptions.add(value);
  }

  void removeFromVarWebOneSignalOptions(String value) {
    varWebOneSignalOptions.remove(value);
  }

  void removeAtIndexFromVarWebOneSignalOptions(int index) {
    varWebOneSignalOptions.removeAt(index);
  }

  void updateVarWebOneSignalOptionsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    varWebOneSignalOptions[index] = updateFn(_varWebOneSignalOptions[index]);
  }

  void insertAtIndexInVarWebOneSignalOptions(int index, String value) {
    varWebOneSignalOptions.insert(index, value);
  }

  TblOneSignalOptionsXveSve1azStruct _varWebOneSignalTblOptions =
      TblOneSignalOptionsXveSve1azStruct();
  TblOneSignalOptionsXveSve1azStruct get varWebOneSignalTblOptions =>
      _varWebOneSignalTblOptions;
  set varWebOneSignalTblOptions(TblOneSignalOptionsXveSve1azStruct value) {
    _varWebOneSignalTblOptions = value;
  }

  void updateVarWebOneSignalTblOptionsStruct(
      Function(TblOneSignalOptionsXveSve1azStruct) updateFn) {
    updateFn(_varWebOneSignalTblOptions);
  }

  int _varWebOneSignalContadorAtzOptions = 0;
  int get varWebOneSignalContadorAtzOptions =>
      _varWebOneSignalContadorAtzOptions;
  set varWebOneSignalContadorAtzOptions(int value) {
    _varWebOneSignalContadorAtzOptions = value;
    secureStorage.setInt('ff_varWebOneSignalContadorAtzOptions', value);
  }

  void deleteVarWebOneSignalContadorAtzOptions() {
    secureStorage.delete(key: 'ff_varWebOneSignalContadorAtzOptions');
  }

  String _varUltimaSenhaLogada = '';
  String get varUltimaSenhaLogada => _varUltimaSenhaLogada;
  set varUltimaSenhaLogada(String value) {
    _varUltimaSenhaLogada = value;
    secureStorage.setString('ff_varUltimaSenhaLogada', value);
  }

  void deleteVarUltimaSenhaLogada() {
    secureStorage.delete(key: 'ff_varUltimaSenhaLogada');
  }

  bool _varAssistenteCadastroAberto = false;
  bool get varAssistenteCadastroAberto => _varAssistenteCadastroAberto;
  set varAssistenteCadastroAberto(bool value) {
    _varAssistenteCadastroAberto = value;
  }

  List<String> _varGruposBotoesAbertos = [];
  List<String> get varGruposBotoesAbertos => _varGruposBotoesAbertos;
  set varGruposBotoesAbertos(List<String> value) {
    _varGruposBotoesAbertos = value;
  }

  void addToVarGruposBotoesAbertos(String value) {
    varGruposBotoesAbertos.add(value);
  }

  void removeFromVarGruposBotoesAbertos(String value) {
    varGruposBotoesAbertos.remove(value);
  }

  void removeAtIndexFromVarGruposBotoesAbertos(int index) {
    varGruposBotoesAbertos.removeAt(index);
  }

  void updateVarGruposBotoesAbertosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    varGruposBotoesAbertos[index] = updateFn(_varGruposBotoesAbertos[index]);
  }

  void insertAtIndexInVarGruposBotoesAbertos(int index, String value) {
    varGruposBotoesAbertos.insert(index, value);
  }

  List<dynamic> _varTblPlanosJson = [];
  List<dynamic> get varTblPlanosJson => _varTblPlanosJson;
  set varTblPlanosJson(List<dynamic> value) {
    _varTblPlanosJson = value;
  }

  void addToVarTblPlanosJson(dynamic value) {
    varTblPlanosJson.add(value);
  }

  void removeFromVarTblPlanosJson(dynamic value) {
    varTblPlanosJson.remove(value);
  }

  void removeAtIndexFromVarTblPlanosJson(int index) {
    varTblPlanosJson.removeAt(index);
  }

  void updateVarTblPlanosJsonAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    varTblPlanosJson[index] = updateFn(_varTblPlanosJson[index]);
  }

  void insertAtIndexInVarTblPlanosJson(int index, dynamic value) {
    varTblPlanosJson.insert(index, value);
  }

  String _varTextoConcluirCad =
      'CONCLUA SEU CADASTRO PARA LIBERAR TODAS AS FUNÇÕES';
  String get varTextoConcluirCad => _varTextoConcluirCad;
  set varTextoConcluirCad(String value) {
    _varTextoConcluirCad = value;
    secureStorage.setString('ff_varTextoConcluirCad', value);
  }

  void deleteVarTextoConcluirCad() {
    secureStorage.delete(key: 'ff_varTextoConcluirCad');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
