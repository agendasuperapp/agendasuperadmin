import '../database.dart';

class ViewTblAfiliadosAtividadesTable
    extends SupabaseTable<ViewTblAfiliadosAtividadesRow> {
  @override
  String get tableName => 'view_tbl_afiliados_atividades';

  @override
  ViewTblAfiliadosAtividadesRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiliadosAtividadesRow(data);
}

class ViewTblAfiliadosAtividadesRow extends SupabaseDataRow {
  ViewTblAfiliadosAtividadesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadosAtividadesTable();

  int? get idAtividade => getField<int>('id_atividade');
  set idAtividade(int? value) => setField<int>('id_atividade', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get tipoAtividade => getField<String>('tipo_atividade');
  set tipoAtividade(String? value) => setField<String>('tipo_atividade', value);

  String? get tipo2 => getField<String>('tipo2');
  set tipo2(String? value) => setField<String>('tipo2', value);

  String? get tipo3 => getField<String>('tipo3');
  set tipo3(String? value) => setField<String>('tipo3', value);

  String? get descricaoTipo => getField<String>('descricao_tipo');
  set descricaoTipo(String? value) => setField<String>('descricao_tipo', value);

  String? get nomeApp => getField<String>('nome_app');
  set nomeApp(String? value) => setField<String>('nome_app', value);

  String? get tipoComissao => getField<String>('tipo_comissao');
  set tipoComissao(String? value) => setField<String>('tipo_comissao', value);

  String? get userIdAfiliadoIndicador =>
      getField<String>('user_id_afiliado_indicador');
  set userIdAfiliadoIndicador(String? value) =>
      setField<String>('user_id_afiliado_indicador', value);

  int? get idAfiliadoIndicador => getField<int>('id_afiliado_indicador');
  set idAfiliadoIndicador(int? value) =>
      setField<int>('id_afiliado_indicador', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  String? get nomeSegmento => getField<String>('nome_segmento');
  set nomeSegmento(String? value) => setField<String>('nome_segmento', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  double? get valorPagoCliente => getField<double>('valor_pago_cliente');
  set valorPagoCliente(double? value) =>
      setField<double>('valor_pago_cliente', value);

  int? get percComissao => getField<int>('perc_comissao');
  set percComissao(int? value) => setField<int>('perc_comissao', value);

  double? get valorComissao => getField<double>('valor_comissao');
  set valorComissao(double? value) => setField<double>('valor_comissao', value);

  String? get statusPgComissao => getField<String>('status_pg_comissao');
  set statusPgComissao(String? value) =>
      setField<String>('status_pg_comissao', value);

  DateTime? get dataPagamento => getField<DateTime>('data_pagamento');
  set dataPagamento(DateTime? value) =>
      setField<DateTime>('data_pagamento', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  String? get nomePlano => getField<String>('nome_plano');
  set nomePlano(String? value) => setField<String>('nome_plano', value);

  String? get nomePlanoPeriodos => getField<String>('nome_plano_periodos');
  set nomePlanoPeriodos(String? value) =>
      setField<String>('nome_plano_periodos', value);

  bool? get renovacaoPlano => getField<bool>('renovacao_plano');
  set renovacaoPlano(bool? value) => setField<bool>('renovacao_plano', value);

  DateTime? get dataInicial => getField<DateTime>('data_inicial');
  set dataInicial(DateTime? value) => setField<DateTime>('data_inicial', value);

  DateTime? get dataFinal => getField<DateTime>('data_final');
  set dataFinal(DateTime? value) => setField<DateTime>('data_final', value);

  String? get cupom => getField<String>('cupom');
  set cupom(String? value) => setField<String>('cupom', value);

  bool? get trialPeriod => getField<bool>('trial_period');
  set trialPeriod(bool? value) => setField<bool>('trial_period', value);

  int? get trialPeriodDays => getField<int>('trial_period_days');
  set trialPeriodDays(int? value) => setField<int>('trial_period_days', value);
}
