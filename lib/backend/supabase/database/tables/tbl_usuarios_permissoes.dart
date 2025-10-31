import '../database.dart';

class TblUsuariosPermissoesTable
    extends SupabaseTable<TblUsuariosPermissoesRow> {
  @override
  String get tableName => 'tbl_usuarios_permissoes';

  @override
  TblUsuariosPermissoesRow createRow(Map<String, dynamic> data) =>
      TblUsuariosPermissoesRow(data);
}

class TblUsuariosPermissoesRow extends SupabaseDataRow {
  TblUsuariosPermissoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblUsuariosPermissoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  bool get adminSistema => getField<bool>('admin_sistema')!;
  set adminSistema(bool value) => setField<bool>('admin_sistema', value);
}
