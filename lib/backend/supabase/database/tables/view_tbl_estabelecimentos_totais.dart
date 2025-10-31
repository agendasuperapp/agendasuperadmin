import '../database.dart';

class ViewTblEstabelecimentosTotaisTable
    extends SupabaseTable<ViewTblEstabelecimentosTotaisRow> {
  @override
  String get tableName => 'view_tbl_estabelecimentos_totais';

  @override
  ViewTblEstabelecimentosTotaisRow createRow(Map<String, dynamic> data) =>
      ViewTblEstabelecimentosTotaisRow(data);
}

class ViewTblEstabelecimentosTotaisRow extends SupabaseDataRow {
  ViewTblEstabelecimentosTotaisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblEstabelecimentosTotaisTable();

  int? get quant => getField<int>('quant');
  set quant(int? value) => setField<int>('quant', value);

  bool? get contaTeste => getField<bool>('conta_teste');
  set contaTeste(bool? value) => setField<bool>('conta_teste', value);
}
