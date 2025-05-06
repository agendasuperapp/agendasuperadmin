import '../database.dart';

class TblFormaPagamentoTable extends SupabaseTable<TblFormaPagamentoRow> {
  @override
  String get tableName => 'tbl_forma_pagamento';

  @override
  TblFormaPagamentoRow createRow(Map<String, dynamic> data) =>
      TblFormaPagamentoRow(data);
}

class TblFormaPagamentoRow extends SupabaseDataRow {
  TblFormaPagamentoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblFormaPagamentoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  bool? get tipoCartao => getField<bool>('tipo_cartao');
  set tipoCartao(bool? value) => setField<bool>('tipo_cartao', value);

  bool? get aceitaParcelamento => getField<bool>('aceita_parcelamento');
  set aceitaParcelamento(bool? value) =>
      setField<bool>('aceita_parcelamento', value);

  bool? get avista => getField<bool>('avista');
  set avista(bool? value) => setField<bool>('avista', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String? get chave => getField<String>('chave');
  set chave(String? value) => setField<String>('chave', value);
}
