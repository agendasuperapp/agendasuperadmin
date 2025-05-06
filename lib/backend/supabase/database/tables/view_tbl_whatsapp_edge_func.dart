import '../database.dart';

class ViewTblWhatsappEdgeFuncTable
    extends SupabaseTable<ViewTblWhatsappEdgeFuncRow> {
  @override
  String get tableName => 'view_tbl_whatsapp_edge_func';

  @override
  ViewTblWhatsappEdgeFuncRow createRow(Map<String, dynamic> data) =>
      ViewTblWhatsappEdgeFuncRow(data);
}

class ViewTblWhatsappEdgeFuncRow extends SupabaseDataRow {
  ViewTblWhatsappEdgeFuncRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblWhatsappEdgeFuncTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get mensagem => getField<String>('mensagem');
  set mensagem(String? value) => setField<String>('mensagem', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get whatsappApikey => getField<String>('whatsapp_apikey');
  set whatsappApikey(String? value) =>
      setField<String>('whatsapp_apikey', value);

  String? get whatsappInstancia => getField<String>('whatsapp_instancia');
  set whatsappInstancia(String? value) =>
      setField<String>('whatsapp_instancia', value);

  String? get retorno => getField<String>('retorno');
  set retorno(String? value) => setField<String>('retorno', value);
}
