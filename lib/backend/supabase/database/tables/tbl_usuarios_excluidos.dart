import '../database.dart';

class TblUsuariosExcluidosTable extends SupabaseTable<TblUsuariosExcluidosRow> {
  @override
  String get tableName => 'tbl_usuarios_excluidos';

  @override
  TblUsuariosExcluidosRow createRow(Map<String, dynamic> data) =>
      TblUsuariosExcluidosRow(data);
}

class TblUsuariosExcluidosRow extends SupabaseDataRow {
  TblUsuariosExcluidosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblUsuariosExcluidosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  List<String> get motivosExclusao => getListField<String>('motivos_exclusao');
  set motivosExclusao(List<String>? value) =>
      setListField<String>('motivos_exclusao', value);
}
