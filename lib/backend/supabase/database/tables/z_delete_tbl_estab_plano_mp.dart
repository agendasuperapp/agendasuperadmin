import '../database.dart';

class ZDeleteTblEstabPlanoMpTable
    extends SupabaseTable<ZDeleteTblEstabPlanoMpRow> {
  @override
  String get tableName => 'z_delete_tbl_estab_plano_mp';

  @override
  ZDeleteTblEstabPlanoMpRow createRow(Map<String, dynamic> data) =>
      ZDeleteTblEstabPlanoMpRow(data);
}

class ZDeleteTblEstabPlanoMpRow extends SupabaseDataRow {
  ZDeleteTblEstabPlanoMpRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ZDeleteTblEstabPlanoMpTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get idPagamentoBanco => getField<String>('id_pagamento_banco');
  set idPagamentoBanco(String? value) =>
      setField<String>('id_pagamento_banco', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get statusDetail => getField<String>('status_detail');
  set statusDetail(String? value) => setField<String>('status_detail', value);

  DateTime? get dateCreated => getField<DateTime>('date_created');
  set dateCreated(DateTime? value) => setField<DateTime>('date_created', value);

  DateTime? get dateApproved => getField<DateTime>('date_approved');
  set dateApproved(DateTime? value) =>
      setField<DateTime>('date_approved', value);

  DateTime? get dateLastUpdated => getField<DateTime>('date_last_updated');
  set dateLastUpdated(DateTime? value) =>
      setField<DateTime>('date_last_updated', value);

  String? get externalReference => getField<String>('external_reference');
  set externalReference(String? value) =>
      setField<String>('external_reference', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get paymentMethodId => getField<String>('payment_method_id');
  set paymentMethodId(String? value) =>
      setField<String>('payment_method_id', value);

  String? get paymentTypeId => getField<String>('payment_type_id');
  set paymentTypeId(String? value) =>
      setField<String>('payment_type_id', value);

  String? get bankTransferId => getField<String>('bank_transfer_id');
  set bankTransferId(String? value) =>
      setField<String>('bank_transfer_id', value);

  double? get installmentAmount => getField<double>('installment_amount');
  set installmentAmount(double? value) =>
      setField<double>('installment_amount', value);

  double? get netReceivedAmount => getField<double>('net_received_amount');
  set netReceivedAmount(double? value) =>
      setField<double>('net_received_amount', value);

  double? get totalPaidAmount => getField<double>('total_paid_amount');
  set totalPaidAmount(double? value) =>
      setField<double>('total_paid_amount', value);

  double? get feeDetailsAmount => getField<double>('fee_details_amount');
  set feeDetailsAmount(double? value) =>
      setField<double>('fee_details_amount', value);

  String? get transactionId => getField<String>('transaction_id');
  set transactionId(String? value) => setField<String>('transaction_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
