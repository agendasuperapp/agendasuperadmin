import '../database.dart';

class ViewQuantTblProfissionaisTable
    extends SupabaseTable<ViewQuantTblProfissionaisRow> {
  @override
  String get tableName => 'view_quant_tbl_profissionais';

  @override
  ViewQuantTblProfissionaisRow createRow(Map<String, dynamic> data) =>
      ViewQuantTblProfissionaisRow(data);
}

class ViewQuantTblProfissionaisRow extends SupabaseDataRow {
  ViewQuantTblProfissionaisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewQuantTblProfissionaisTable();

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  int? get quant => getField<int>('quant');
  set quant(int? value) => setField<int>('quant', value);
}
