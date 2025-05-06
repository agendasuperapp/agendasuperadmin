import '../database.dart';

class TblAgendamentosStatusTable
    extends SupabaseTable<TblAgendamentosStatusRow> {
  @override
  String get tableName => 'tbl_agendamentos_status';

  @override
  TblAgendamentosStatusRow createRow(Map<String, dynamic> data) =>
      TblAgendamentosStatusRow(data);
}

class TblAgendamentosStatusRow extends SupabaseDataRow {
  TblAgendamentosStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAgendamentosStatusTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String get sigla => getField<String>('sigla')!;
  set sigla(String value) => setField<String>('sigla', value);

  bool get situacao => getField<bool>('situacao')!;
  set situacao(bool value) => setField<bool>('situacao', value);

  String? get cor => getField<String>('cor');
  set cor(String? value) => setField<String>('cor', value);

  bool? get aceitarEdicao => getField<bool>('aceitar_edicao');
  set aceitarEdicao(bool? value) => setField<bool>('aceitar_edicao', value);

  bool? get aceitarCancelamento => getField<bool>('aceitar_cancelamento');
  set aceitarCancelamento(bool? value) =>
      setField<bool>('aceitar_cancelamento', value);

  String? get nomeSecundario => getField<String>('nome_secundario');
  set nomeSecundario(String? value) =>
      setField<String>('nome_secundario', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);
}
