import '../database.dart';

class ViewTblPagamentosStripeCancTable
    extends SupabaseTable<ViewTblPagamentosStripeCancRow> {
  @override
  String get tableName => 'view_tbl_pagamentos_stripe_canc';

  @override
  ViewTblPagamentosStripeCancRow createRow(Map<String, dynamic> data) =>
      ViewTblPagamentosStripeCancRow(data);
}

class ViewTblPagamentosStripeCancRow extends SupabaseDataRow {
  ViewTblPagamentosStripeCancRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblPagamentosStripeCancTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idPlanoEstab => getField<int>('id_plano_estab');
  set idPlanoEstab(int? value) => setField<int>('id_plano_estab', value);

  int? get idPlanoAfiliado => getField<int>('id_plano_afiliado');
  set idPlanoAfiliado(int? value) => setField<int>('id_plano_afiliado', value);

  String? get subscriptionId => getField<String>('subscription_id');
  set subscriptionId(String? value) =>
      setField<String>('subscription_id', value);

  String? get chargeId => getField<String>('charge_id');
  set chargeId(String? value) => setField<String>('charge_id', value);

  bool? get cancelAtPeriodEnd => getField<bool>('cancel_at_period_end');
  set cancelAtPeriodEnd(bool? value) =>
      setField<bool>('cancel_at_period_end', value);

  bool? get reembolso => getField<bool>('reembolso');
  set reembolso(bool? value) => setField<bool>('reembolso', value);

  double? get valorReembolso => getField<double>('valor_reembolso');
  set valorReembolso(double? value) =>
      setField<double>('valor_reembolso', value);

  String? get motivo => getField<String>('motivo');
  set motivo(String? value) => setField<String>('motivo', value);

  bool? get concluido => getField<bool>('concluido');
  set concluido(bool? value) => setField<bool>('concluido', value);

  String? get result => getField<String>('result');
  set result(String? value) => setField<String>('result', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get diasRestantes => getField<int>('dias_restantes');
  set diasRestantes(int? value) => setField<int>('dias_restantes', value);

  String? get keyAuthorization => getField<String>('key_authorization');
  set keyAuthorization(String? value) =>
      setField<String>('key_authorization', value);
}
