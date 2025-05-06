import '../database.dart';

class ViewTblEmailTable extends SupabaseTable<ViewTblEmailRow> {
  @override
  String get tableName => 'view_tbl_email';

  @override
  ViewTblEmailRow createRow(Map<String, dynamic> data) => ViewTblEmailRow(data);
}

class ViewTblEmailRow extends SupabaseDataRow {
  ViewTblEmailRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblEmailTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String? get retorno => getField<String>('retorno');
  set retorno(String? value) => setField<String>('retorno', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get htmlContent => getField<String>('html_content');
  set htmlContent(String? value) => setField<String>('html_content', value);

  String? get subject => getField<String>('subject');
  set subject(String? value) => setField<String>('subject', value);

  String? get emailSender => getField<String>('email_sender');
  set emailSender(String? value) => setField<String>('email_sender', value);

  String? get varEmailTo => getField<String>('var_email_to');
  set varEmailTo(String? value) => setField<String>('var_email_to', value);
}
