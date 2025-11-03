import '../database.dart';

class TblUsuariosTesteTable extends SupabaseTable<TblUsuariosTesteRow> {
  @override
  String get tableName => 'tbl_usuarios_teste';

  @override
  TblUsuariosTesteRow createRow(Map<String, dynamic> data) =>
      TblUsuariosTesteRow(data);
}

class TblUsuariosTesteRow extends SupabaseDataRow {
  TblUsuariosTesteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblUsuariosTesteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idAfiliadoApp => getField<int>('id_afiliado_app');
  set idAfiliadoApp(int? value) => setField<int>('id_afiliado_app', value);

  double? get contador => getField<double>('contador');
  set contador(double? value) => setField<double>('contador', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
