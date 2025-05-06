import '../database.dart';

class ViewTblWhatsappConsultarTable
    extends SupabaseTable<ViewTblWhatsappConsultarRow> {
  @override
  String get tableName => 'view_tbl_whatsapp_consultar';

  @override
  ViewTblWhatsappConsultarRow createRow(Map<String, dynamic> data) =>
      ViewTblWhatsappConsultarRow(data);
}

class ViewTblWhatsappConsultarRow extends SupabaseDataRow {
  ViewTblWhatsappConsultarRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblWhatsappConsultarTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String? get retorno => getField<String>('retorno');
  set retorno(String? value) => setField<String>('retorno', value);

  String? get userIdCliente => getField<String>('user_id_cliente');
  set userIdCliente(String? value) =>
      setField<String>('user_id_cliente', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get token => getField<String>('token');
  set token(String? value) => setField<String>('token', value);

  String? get userIdEstabelecimento =>
      getField<String>('user_id_estabelecimento');
  set userIdEstabelecimento(String? value) =>
      setField<String>('user_id_estabelecimento', value);
}
