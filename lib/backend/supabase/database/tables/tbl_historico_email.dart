import '../database.dart';

class TblHistoricoEmailTable extends SupabaseTable<TblHistoricoEmailRow> {
  @override
  String get tableName => 'tbl_historico_email';

  @override
  TblHistoricoEmailRow createRow(Map<String, dynamic> data) =>
      TblHistoricoEmailRow(data);
}

class TblHistoricoEmailRow extends SupabaseDataRow {
  TblHistoricoEmailRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblHistoricoEmailTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get emailAnterior => getField<String>('email_anterior');
  set emailAnterior(String? value) => setField<String>('email_anterior', value);

  String? get novoEmail => getField<String>('novo_email');
  set novoEmail(String? value) => setField<String>('novo_email', value);

  DateTime? get dataConfirmacao => getField<DateTime>('data_confirmacao');
  set dataConfirmacao(DateTime? value) =>
      setField<DateTime>('data_confirmacao', value);

  bool get confirmado => getField<bool>('confirmado')!;
  set confirmado(bool value) => setField<bool>('confirmado', value);
}
