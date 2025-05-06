import '../database.dart';

class ViewTblHorariosDispHorasTable
    extends SupabaseTable<ViewTblHorariosDispHorasRow> {
  @override
  String get tableName => 'view_tbl_horarios_disp_horas';

  @override
  ViewTblHorariosDispHorasRow createRow(Map<String, dynamic> data) =>
      ViewTblHorariosDispHorasRow(data);
}

class ViewTblHorariosDispHorasRow extends SupabaseDataRow {
  ViewTblHorariosDispHorasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblHorariosDispHorasTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idProfissional => getField<int>('id_profissional');
  set idProfissional(int? value) => setField<int>('id_profissional', value);

  String? get diaSemana => getField<String>('dia_semana');
  set diaSemana(String? value) => setField<String>('dia_semana', value);

  String? get hora => getField<String>('hora');
  set hora(String? value) => setField<String>('hora', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  int? get idCliente => getField<int>('id_cliente');
  set idCliente(int? value) => setField<int>('id_cliente', value);

  bool? get situacaoAgendamento => getField<bool>('situacao_agendamento');
  set situacaoAgendamento(bool? value) =>
      setField<bool>('situacao_agendamento', value);

  int? get idServico => getField<int>('id_servico');
  set idServico(int? value) => setField<int>('id_servico', value);

  DateTime? get diaMesData => getField<DateTime>('dia_mes_data');
  set diaMesData(DateTime? value) => setField<DateTime>('dia_mes_data', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  int? get idAgendamento => getField<int>('id_agendamento');
  set idAgendamento(int? value) => setField<int>('id_agendamento', value);

  String? get nomeCliente => getField<String>('nome_cliente');
  set nomeCliente(String? value) => setField<String>('nome_cliente', value);

  String? get nomeServico => getField<String>('nome_servico');
  set nomeServico(String? value) => setField<String>('nome_servico', value);

  bool? get agendamentoConfirmado => getField<bool>('agendamento_confirmado');
  set agendamentoConfirmado(bool? value) =>
      setField<bool>('agendamento_confirmado', value);

  String? get obsAgendamento => getField<String>('obs_agendamento');
  set obsAgendamento(String? value) =>
      setField<String>('obs_agendamento', value);
}
