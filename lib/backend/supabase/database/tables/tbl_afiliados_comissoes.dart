import '../database.dart';

class TblAfiliadosComissoesTable
    extends SupabaseTable<TblAfiliadosComissoesRow> {
  @override
  String get tableName => 'tbl_afiliados_comissoes';

  @override
  TblAfiliadosComissoesRow createRow(Map<String, dynamic> data) =>
      TblAfiliadosComissoesRow(data);
}

class TblAfiliadosComissoesRow extends SupabaseDataRow {
  TblAfiliadosComissoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAfiliadosComissoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idAfiliadoIndicador => getField<int>('id_afiliado_indicador');
  set idAfiliadoIndicador(int? value) =>
      setField<int>('id_afiliado_indicador', value);

  int? get idPgStripeApps => getField<int>('id_pg_stripe_apps');
  set idPgStripeApps(int? value) => setField<int>('id_pg_stripe_apps', value);

  int? get idPlanoPreco => getField<int>('id_plano_preco');
  set idPlanoPreco(int? value) => setField<int>('id_plano_preco', value);

  double get valorPagoCliente => getField<double>('valor_pago_cliente')!;
  set valorPagoCliente(double value) =>
      setField<double>('valor_pago_cliente', value);

  double? get percComissao => getField<double>('perc_comissao');
  set percComissao(double? value) => setField<double>('perc_comissao', value);

  double? get valorComissao => getField<double>('valor_comissao');
  set valorComissao(double? value) => setField<double>('valor_comissao', value);

  String get statusPgComissao => getField<String>('status_pg_comissao')!;
  set statusPgComissao(String value) =>
      setField<String>('status_pg_comissao', value);

  DateTime? get dataPgComisao => getField<DateTime>('data_pg_comisao');
  set dataPgComisao(DateTime? value) =>
      setField<DateTime>('data_pg_comisao', value);

  String? get userIdAfiliadoIndicador =>
      getField<String>('user_id_afiliado_indicador');
  set userIdAfiliadoIndicador(String? value) =>
      setField<String>('user_id_afiliado_indicador', value);

  String get idTemp => getField<String>('id_temp')!;
  set idTemp(String value) => setField<String>('id_temp', value);

  bool get situacao => getField<bool>('situacao')!;
  set situacao(bool value) => setField<bool>('situacao', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  int? get idSaque => getField<int>('id_saque');
  set idSaque(int? value) => setField<int>('id_saque', value);

  int get nivel => getField<int>('nivel')!;
  set nivel(int value) => setField<int>('nivel', value);

  DateTime? get dataPagamento => getField<DateTime>('data_pagamento');
  set dataPagamento(DateTime? value) =>
      setField<DateTime>('data_pagamento', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  bool? get renovacao => getField<bool>('renovacao');
  set renovacao(bool? value) => setField<bool>('renovacao', value);

  int? get idPgStripeApp => getField<int>('id_pg_stripe_app');
  set idPgStripeApp(int? value) => setField<int>('id_pg_stripe_app', value);
}
