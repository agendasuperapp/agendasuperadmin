import '../database.dart';

class TblPagamentosSyncTable extends SupabaseTable<TblPagamentosSyncRow> {
  @override
  String get tableName => 'tbl_pagamentos_sync';

  @override
  TblPagamentosSyncRow createRow(Map<String, dynamic> data) =>
      TblPagamentosSyncRow(data);
}

class TblPagamentosSyncRow extends SupabaseDataRow {
  TblPagamentosSyncRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblPagamentosSyncTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  int get idPagStripeApp => getField<int>('id_pag_stripe_app')!;
  set idPagStripeApp(int value) => setField<int>('id_pag_stripe_app', value);

  int get idAfiliadoApp => getField<int>('id_afiliado_app')!;
  set idAfiliadoApp(int value) => setField<int>('id_afiliado_app', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  dynamic get payload => getField<dynamic>('payload')!;
  set payload(dynamic value) => setField<dynamic>('payload', value);

  int get attempts => getField<int>('attempts')!;
  set attempts(int value) => setField<int>('attempts', value);

  DateTime get nextRunAt => getField<DateTime>('next_run_at')!;
  set nextRunAt(DateTime value) => setField<DateTime>('next_run_at', value);

  DateTime? get deliveredAt => getField<DateTime>('delivered_at');
  set deliveredAt(DateTime? value) => setField<DateTime>('delivered_at', value);

  String? get lastError => getField<String>('last_error');
  set lastError(String? value) => setField<String>('last_error', value);

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

  int get refresh => getField<int>('refresh')!;
  set refresh(int value) => setField<int>('refresh', value);
}
