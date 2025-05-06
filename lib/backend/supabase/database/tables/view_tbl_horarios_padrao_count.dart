import '../database.dart';

class ViewTblHorariosPadraoCountTable
    extends SupabaseTable<ViewTblHorariosPadraoCountRow> {
  @override
  String get tableName => 'view_tbl_horarios_padrao_count';

  @override
  ViewTblHorariosPadraoCountRow createRow(Map<String, dynamic> data) =>
      ViewTblHorariosPadraoCountRow(data);
}

class ViewTblHorariosPadraoCountRow extends SupabaseDataRow {
  ViewTblHorariosPadraoCountRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblHorariosPadraoCountTable();

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idProfissional => getField<int>('id_profissional');
  set idProfissional(int? value) => setField<int>('id_profissional', value);

  int? get quant => getField<int>('quant');
  set quant(int? value) => setField<int>('quant', value);
}
