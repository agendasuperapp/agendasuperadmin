import '../database.dart';

class TblVersoesSistemaTable extends SupabaseTable<TblVersoesSistemaRow> {
  @override
  String get tableName => 'tbl_versoes_sistema';

  @override
  TblVersoesSistemaRow createRow(Map<String, dynamic> data) =>
      TblVersoesSistemaRow(data);
}

class TblVersoesSistemaRow extends SupabaseDataRow {
  TblVersoesSistemaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblVersoesSistemaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String get aplicativo => getField<String>('aplicativo')!;
  set aplicativo(String value) => setField<String>('aplicativo', value);

  String get versao => getField<String>('versao')!;
  set versao(String value) => setField<String>('versao', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);

  bool get mostrarBtnAtzWeb => getField<bool>('mostrar_btn_atz_web')!;
  set mostrarBtnAtzWeb(bool value) =>
      setField<bool>('mostrar_btn_atz_web', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  bool get mostrarBtnAtzAndroid => getField<bool>('mostrar_btn_atz_android')!;
  set mostrarBtnAtzAndroid(bool value) =>
      setField<bool>('mostrar_btn_atz_android', value);

  bool get mostrarBtnAtzIos => getField<bool>('mostrar_btn_atz_ios')!;
  set mostrarBtnAtzIos(bool value) =>
      setField<bool>('mostrar_btn_atz_ios', value);
}
