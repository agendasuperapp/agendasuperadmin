import '../database.dart';

class TblAppConfiguracoesTable extends SupabaseTable<TblAppConfiguracoesRow> {
  @override
  String get tableName => 'tbl_app_configuracoes';

  @override
  TblAppConfiguracoesRow createRow(Map<String, dynamic> data) =>
      TblAppConfiguracoesRow(data);
}

class TblAppConfiguracoesRow extends SupabaseDataRow {
  TblAppConfiguracoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAppConfiguracoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nomeSistema => getField<String>('nome_sistema');
  set nomeSistema(String? value) => setField<String>('nome_sistema', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get versaoAdmin => getField<String>('versao_admin');
  set versaoAdmin(String? value) => setField<String>('versao_admin', value);

  DateTime? get dataVersaoAdmin => getField<DateTime>('data_versao_admin');
  set dataVersaoAdmin(DateTime? value) =>
      setField<DateTime>('data_versao_admin', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String? get mensagemManutencao => getField<String>('mensagem_manutencao');
  set mensagemManutencao(String? value) =>
      setField<String>('mensagem_manutencao', value);

  bool? get limiteAgendamentosAcumulativos =>
      getField<bool>('limite_agendamentos_acumulativos');
  set limiteAgendamentosAcumulativos(bool? value) =>
      setField<bool>('limite_agendamentos_acumulativos', value);

  int? get diasCarencia => getField<int>('dias_carencia');
  set diasCarencia(int? value) => setField<int>('dias_carencia', value);

  int? get diasDesbloqueioConfianca =>
      getField<int>('dias_desbloqueio_confianca');
  set diasDesbloqueioConfianca(int? value) =>
      setField<int>('dias_desbloqueio_confianca', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get versaoCliente => getField<String>('versao_cliente');
  set versaoCliente(String? value) => setField<String>('versao_cliente', value);

  DateTime? get dataVersaoCliente => getField<DateTime>('data_versao_cliente');
  set dataVersaoCliente(DateTime? value) =>
      setField<DateTime>('data_versao_cliente', value);
}
