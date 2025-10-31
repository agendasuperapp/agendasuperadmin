import '../database.dart';

class ViewTblEstabelecimentosFiltroTable
    extends SupabaseTable<ViewTblEstabelecimentosFiltroRow> {
  @override
  String get tableName => 'view_tbl_estabelecimentos_filtro';

  @override
  ViewTblEstabelecimentosFiltroRow createRow(Map<String, dynamic> data) =>
      ViewTblEstabelecimentosFiltroRow(data);
}

class ViewTblEstabelecimentosFiltroRow extends SupabaseDataRow {
  ViewTblEstabelecimentosFiltroRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblEstabelecimentosFiltroTable();

  int? get tipo => getField<int>('tipo');
  set tipo(int? value) => setField<int>('tipo', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get idNome => getField<String>('id_nome');
  set idNome(String? value) => setField<String>('id_nome', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);
}
