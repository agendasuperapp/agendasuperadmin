import '../database.dart';

class ViewTblHorariosPadraoCount2Table
    extends SupabaseTable<ViewTblHorariosPadraoCount2Row> {
  @override
  String get tableName => 'view_tbl_horarios_padrao_count_2';

  @override
  ViewTblHorariosPadraoCount2Row createRow(Map<String, dynamic> data) =>
      ViewTblHorariosPadraoCount2Row(data);
}

class ViewTblHorariosPadraoCount2Row extends SupabaseDataRow {
  ViewTblHorariosPadraoCount2Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblHorariosPadraoCount2Table();

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idProfissional => getField<int>('id_profissional');
  set idProfissional(int? value) => setField<int>('id_profissional', value);

  int? get quantHorarios => getField<int>('quant_horarios');
  set quantHorarios(int? value) => setField<int>('quant_horarios', value);
}
