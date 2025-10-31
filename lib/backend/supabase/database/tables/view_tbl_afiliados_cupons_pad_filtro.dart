import '../database.dart';

class ViewTblAfiliadosCuponsPadFiltroTable
    extends SupabaseTable<ViewTblAfiliadosCuponsPadFiltroRow> {
  @override
  String get tableName => 'view_tbl_afiliados_cupons_pad_filtro';

  @override
  ViewTblAfiliadosCuponsPadFiltroRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiliadosCuponsPadFiltroRow(data);
}

class ViewTblAfiliadosCuponsPadFiltroRow extends SupabaseDataRow {
  ViewTblAfiliadosCuponsPadFiltroRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadosCuponsPadFiltroTable();

  int? get tipo => getField<int>('tipo');
  set tipo(int? value) => setField<int>('tipo', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  double? get percDesconto => getField<double>('perc_desconto');
  set percDesconto(double? value) => setField<double>('perc_desconto', value);

  bool? get admin => getField<bool>('admin');
  set admin(bool? value) => setField<bool>('admin', value);

  int? get idAfiliadoApp => getField<int>('id_afiliado_app');
  set idAfiliadoApp(int? value) => setField<int>('id_afiliado_app', value);

  String? get nomeDescricao => getField<String>('nome_descricao');
  set nomeDescricao(String? value) => setField<String>('nome_descricao', value);
}
