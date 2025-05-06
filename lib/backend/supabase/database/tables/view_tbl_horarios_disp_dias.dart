import '../database.dart';

class ViewTblHorariosDispDiasTable
    extends SupabaseTable<ViewTblHorariosDispDiasRow> {
  @override
  String get tableName => 'view_tbl_horarios_disp_dias';

  @override
  ViewTblHorariosDispDiasRow createRow(Map<String, dynamic> data) =>
      ViewTblHorariosDispDiasRow(data);
}

class ViewTblHorariosDispDiasRow extends SupabaseDataRow {
  ViewTblHorariosDispDiasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblHorariosDispDiasTable();

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idProfissional => getField<int>('id_profissional');
  set idProfissional(int? value) => setField<int>('id_profissional', value);

  DateTime? get diaMesData => getField<DateTime>('dia_mes_data');
  set diaMesData(DateTime? value) => setField<DateTime>('dia_mes_data', value);

  int? get quantHorarios => getField<int>('quant_horarios');
  set quantHorarios(int? value) => setField<int>('quant_horarios', value);

  int? get quantConfirmados => getField<int>('quant_confirmados');
  set quantConfirmados(int? value) => setField<int>('quant_confirmados', value);

  String? get mes => getField<String>('mes');
  set mes(String? value) => setField<String>('mes', value);

  int? get idServico => getField<int>('id_servico');
  set idServico(int? value) => setField<int>('id_servico', value);
}
