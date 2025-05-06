import '../database.dart';

class TblAfiliadosSaquesTable extends SupabaseTable<TblAfiliadosSaquesRow> {
  @override
  String get tableName => 'tbl_afiliados_saques';

  @override
  TblAfiliadosSaquesRow createRow(Map<String, dynamic> data) =>
      TblAfiliadosSaquesRow(data);
}

class TblAfiliadosSaquesRow extends SupabaseDataRow {
  TblAfiliadosSaquesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAfiliadosSaquesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idAfiliado => getField<int>('id_afiliado');
  set idAfiliado(int? value) => setField<int>('id_afiliado', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  DateTime? get dataPagamento => getField<DateTime>('data_pagamento');
  set dataPagamento(DateTime? value) =>
      setField<DateTime>('data_pagamento', value);

  String? get comprovante => getField<String>('comprovante');
  set comprovante(String? value) => setField<String>('comprovante', value);

  bool? get nfEmitida => getField<bool>('nf_emitida');
  set nfEmitida(bool? value) => setField<bool>('nf_emitida', value);

  String? get numeroNf => getField<String>('numero_nf');
  set numeroNf(String? value) => setField<String>('numero_nf', value);

  int? get idNf => getField<int>('id_nf');
  set idNf(int? value) => setField<int>('id_nf', value);

  String get idTemp => getField<String>('id_temp')!;
  set idTemp(String value) => setField<String>('id_temp', value);
}
