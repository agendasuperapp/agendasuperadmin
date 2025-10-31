import '../database.dart';

class ViewTblAppPlanosNomesFiltrosTable
    extends SupabaseTable<ViewTblAppPlanosNomesFiltrosRow> {
  @override
  String get tableName => 'view_tbl_app_planos_nomes_filtros';

  @override
  ViewTblAppPlanosNomesFiltrosRow createRow(Map<String, dynamic> data) =>
      ViewTblAppPlanosNomesFiltrosRow(data);
}

class ViewTblAppPlanosNomesFiltrosRow extends SupabaseDataRow {
  ViewTblAppPlanosNomesFiltrosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAppPlanosNomesFiltrosTable();

  int? get tipo => getField<int>('tipo');
  set tipo(int? value) => setField<int>('tipo', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);
}
