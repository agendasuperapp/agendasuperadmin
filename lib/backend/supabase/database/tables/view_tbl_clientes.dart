import '../database.dart';

class ViewTblClientesTable extends SupabaseTable<ViewTblClientesRow> {
  @override
  String get tableName => 'view_tbl_clientes';

  @override
  ViewTblClientesRow createRow(Map<String, dynamic> data) =>
      ViewTblClientesRow(data);
}

class ViewTblClientesRow extends SupabaseDataRow {
  ViewTblClientesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblClientesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  DateTime? get dataNascimento => getField<DateTime>('data_nascimento');
  set dataNascimento(DateTime? value) =>
      setField<DateTime>('data_nascimento', value);

  String? get rua => getField<String>('rua');
  set rua(String? value) => setField<String>('rua', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get whatsapp => getField<String>('whatsapp');
  set whatsapp(String? value) => setField<String>('whatsapp', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);

  String? get codigoIbge => getField<String>('codigo_ibge');
  set codigoIbge(String? value) => setField<String>('codigo_ibge', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get nomeEstado => getField<String>('nome_estado');
  set nomeEstado(String? value) => setField<String>('nome_estado', value);

  bool? get emailAguardConfirm => getField<bool>('email_aguard_confirm');
  set emailAguardConfirm(bool? value) =>
      setField<bool>('email_aguard_confirm', value);
}
