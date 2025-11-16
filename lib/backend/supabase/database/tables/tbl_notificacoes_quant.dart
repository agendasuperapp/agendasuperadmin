import '../database.dart';

class TblNotificacoesQuantTable extends SupabaseTable<TblNotificacoesQuantRow> {
  @override
  String get tableName => 'tbl_notificacoes_quant';

  @override
  TblNotificacoesQuantRow createRow(Map<String, dynamic> data) =>
      TblNotificacoesQuantRow(data);
}

class TblNotificacoesQuantRow extends SupabaseDataRow {
  TblNotificacoesQuantRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblNotificacoesQuantTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int? get quant => getField<int>('quant');
  set quant(int? value) => setField<int>('quant', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idCliente => getField<int>('id_cliente');
  set idCliente(int? value) => setField<int>('id_cliente', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  int? get idApp => getField<int>('id_app');
  set idApp(int? value) => setField<int>('id_app', value);
}
