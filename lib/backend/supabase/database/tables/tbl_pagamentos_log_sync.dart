import '../database.dart';

class TblPagamentosLogSyncTable extends SupabaseTable<TblPagamentosLogSyncRow> {
  @override
  String get tableName => 'tbl_pagamentos_log_sync';

  @override
  TblPagamentosLogSyncRow createRow(Map<String, dynamic> data) =>
      TblPagamentosLogSyncRow(data);
}

class TblPagamentosLogSyncRow extends SupabaseDataRow {
  TblPagamentosLogSyncRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblPagamentosLogSyncTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idPagStripeApp => getField<int>('id_pag_stripe_app');
  set idPagStripeApp(int? value) => setField<int>('id_pag_stripe_app', value);

  int get idAfiliadoApp => getField<int>('id_afiliado_app')!;
  set idAfiliadoApp(int value) => setField<int>('id_afiliado_app', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get stripeSubscriptionId =>
      getField<String>('stripe_subscription_id');
  set stripeSubscriptionId(String? value) =>
      setField<String>('stripe_subscription_id', value);

  bool? get sucesso => getField<bool>('sucesso');
  set sucesso(bool? value) => setField<bool>('sucesso', value);

  String? get result => getField<String>('result');
  set result(String? value) => setField<String>('result', value);

  dynamic get payload => getField<dynamic>('payload');
  set payload(dynamic value) => setField<dynamic>('payload', value);

  String? get statusAssinatura => getField<String>('status_assinatura');
  set statusAssinatura(String? value) =>
      setField<String>('status_assinatura', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  String? get updateEvento => getField<String>('update_evento');
  set updateEvento(String? value) => setField<String>('update_evento', value);

  DateTime? get updateData => getField<DateTime>('update_data');
  set updateData(DateTime? value) => setField<DateTime>('update_data', value);

  int? get updateCount => getField<int>('update_count');
  set updateCount(int? value) => setField<int>('update_count', value);

  DateTime? get deliveredAt => getField<DateTime>('delivered_at');
  set deliveredAt(DateTime? value) => setField<DateTime>('delivered_at', value);
}
