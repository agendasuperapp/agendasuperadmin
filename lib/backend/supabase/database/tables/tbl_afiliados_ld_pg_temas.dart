import '../database.dart';

class TblAfiliadosLdPgTemasTable
    extends SupabaseTable<TblAfiliadosLdPgTemasRow> {
  @override
  String get tableName => 'tbl_afiliados_ld_pg_temas';

  @override
  TblAfiliadosLdPgTemasRow createRow(Map<String, dynamic> data) =>
      TblAfiliadosLdPgTemasRow(data);
}

class TblAfiliadosLdPgTemasRow extends SupabaseDataRow {
  TblAfiliadosLdPgTemasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAfiliadosLdPgTemasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String get container => getField<String>('container')!;
  set container(String value) => setField<String>('container', value);

  String? get fillColor => getField<String>('fillColor');
  set fillColor(String? value) => setField<String>('fillColor', value);

  String? get color1 => getField<String>('color1');
  set color1(String? value) => setField<String>('color1', value);

  String? get color2 => getField<String>('color2');
  set color2(String? value) => setField<String>('color2', value);

  bool get situacao => getField<bool>('situacao')!;
  set situacao(bool value) => setField<bool>('situacao', value);

  bool get gradient => getField<bool>('gradient')!;
  set gradient(bool value) => setField<bool>('gradient', value);
}
