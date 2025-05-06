import '../database.dart';

class TblUsuariosTiposTable extends SupabaseTable<TblUsuariosTiposRow> {
  @override
  String get tableName => 'tbl_usuarios_tipos';

  @override
  TblUsuariosTiposRow createRow(Map<String, dynamic> data) =>
      TblUsuariosTiposRow(data);
}

class TblUsuariosTiposRow extends SupabaseDataRow {
  TblUsuariosTiposRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblUsuariosTiposTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);
}
