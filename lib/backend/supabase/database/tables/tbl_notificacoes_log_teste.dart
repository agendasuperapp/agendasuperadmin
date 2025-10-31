import '../database.dart';

class TblNotificacoesLogTesteTable
    extends SupabaseTable<TblNotificacoesLogTesteRow> {
  @override
  String get tableName => 'tbl_notificacoes_log_teste';

  @override
  TblNotificacoesLogTesteRow createRow(Map<String, dynamic> data) =>
      TblNotificacoesLogTesteRow(data);
}

class TblNotificacoesLogTesteRow extends SupabaseDataRow {
  TblNotificacoesLogTesteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblNotificacoesLogTesteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idNotificacao => getField<int>('id_notificacao');
  set idNotificacao(int? value) => setField<int>('id_notificacao', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);
}
