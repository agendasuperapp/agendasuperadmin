import '../database.dart';

class ZDeleteTblEstabPlanoAssinaturaTable
    extends SupabaseTable<ZDeleteTblEstabPlanoAssinaturaRow> {
  @override
  String get tableName => 'z_delete_tbl_estab_plano_assinatura';

  @override
  ZDeleteTblEstabPlanoAssinaturaRow createRow(Map<String, dynamic> data) =>
      ZDeleteTblEstabPlanoAssinaturaRow(data);
}

class ZDeleteTblEstabPlanoAssinaturaRow extends SupabaseDataRow {
  ZDeleteTblEstabPlanoAssinaturaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ZDeleteTblEstabPlanoAssinaturaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get invoiceId => getField<String>('invoice_id');
  set invoiceId(String? value) => setField<String>('invoice_id', value);

  int? get amountPaid => getField<int>('amount_paid');
  set amountPaid(int? value) => setField<int>('amount_paid', value);

  DateTime? get created => getField<DateTime>('created');
  set created(DateTime? value) => setField<DateTime>('created', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get paidAt => getField<DateTime>('paid_at');
  set paidAt(DateTime? value) => setField<DateTime>('paid_at', value);

  String? get subscriptionId => getField<String>('subscription_id');
  set subscriptionId(String? value) =>
      setField<String>('subscription_id', value);

  String? get customerId => getField<String>('customer_id');
  set customerId(String? value) => setField<String>('customer_id', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get customerEmail => getField<String>('customer_email');
  set customerEmail(String? value) => setField<String>('customer_email', value);

  DateTime? get periodStart => getField<DateTime>('period_start');
  set periodStart(DateTime? value) => setField<DateTime>('period_start', value);

  DateTime? get periodEnd => getField<DateTime>('period_end');
  set periodEnd(DateTime? value) => setField<DateTime>('period_end', value);
}
