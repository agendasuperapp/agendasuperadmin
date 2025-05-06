import '../database.dart';

class TblWhatsappConsultarTable extends SupabaseTable<TblWhatsappConsultarRow> {
  @override
  String get tableName => 'tbl_whatsapp_consultar';

  @override
  TblWhatsappConsultarRow createRow(Map<String, dynamic> data) =>
      TblWhatsappConsultarRow(data);
}

class TblWhatsappConsultarRow extends SupabaseDataRow {
  TblWhatsappConsultarRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblWhatsappConsultarTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  bool get situacao => getField<bool>('situacao')!;
  set situacao(bool value) => setField<bool>('situacao', value);

  String? get retorno => getField<String>('retorno');
  set retorno(String? value) => setField<String>('retorno', value);

  String? get userIdCliente => getField<String>('user_id_cliente');
  set userIdCliente(String? value) =>
      setField<String>('user_id_cliente', value);

  String get telefone => getField<String>('telefone')!;
  set telefone(String value) => setField<String>('telefone', value);

  String get token => getField<String>('token')!;
  set token(String value) => setField<String>('token', value);

  String? get userIdEstabelecimento =>
      getField<String>('user_id_estabelecimento');
  set userIdEstabelecimento(String? value) =>
      setField<String>('user_id_estabelecimento', value);
}
