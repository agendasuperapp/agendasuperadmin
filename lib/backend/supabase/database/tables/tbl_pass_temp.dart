import '../database.dart';

class TblPassTempTable extends SupabaseTable<TblPassTempRow> {
  @override
  String get tableName => 'tbl_pass_temp';

  @override
  TblPassTempRow createRow(Map<String, dynamic> data) => TblPassTempRow(data);
}

class TblPassTempRow extends SupabaseDataRow {
  TblPassTempRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblPassTempTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get senha => getField<String>('senha');
  set senha(String? value) => setField<String>('senha', value);

  String? get idTemp => getField<String>('id_temp');
  set idTemp(String? value) => setField<String>('id_temp', value);

  String? get senhaCript => getField<String>('senha_cript');
  set senhaCript(String? value) => setField<String>('senha_cript', value);

  DateTime? get dataSenha => getField<DateTime>('data_senha');
  set dataSenha(DateTime? value) => setField<DateTime>('data_senha', value);

  int? get idCliente => getField<int>('id_cliente');
  set idCliente(int? value) => setField<int>('id_cliente', value);
}
