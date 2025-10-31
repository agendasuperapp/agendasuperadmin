import '../database.dart';

class ViewTblVersoesClienteTable
    extends SupabaseTable<ViewTblVersoesClienteRow> {
  @override
  String get tableName => 'view_tbl_versoes_cliente';

  @override
  ViewTblVersoesClienteRow createRow(Map<String, dynamic> data) =>
      ViewTblVersoesClienteRow(data);
}

class ViewTblVersoesClienteRow extends SupabaseDataRow {
  ViewTblVersoesClienteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblVersoesClienteTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get versao => getField<String>('versao');
  set versao(String? value) => setField<String>('versao', value);

  bool? get mostrarBtnAtz => getField<bool>('mostrar_btn_atz');
  set mostrarBtnAtz(bool? value) => setField<bool>('mostrar_btn_atz', value);
}
