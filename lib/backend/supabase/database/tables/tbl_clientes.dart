import '../database.dart';

class TblClientesTable extends SupabaseTable<TblClientesRow> {
  @override
  String get tableName => 'tbl_clientes';

  @override
  TblClientesRow createRow(Map<String, dynamic> data) => TblClientesRow(data);
}

class TblClientesRow extends SupabaseDataRow {
  TblClientesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblClientesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

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

  bool get situacao => getField<bool>('situacao')!;
  set situacao(bool value) => setField<bool>('situacao', value);

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);

  String? get codigoIbge => getField<String>('codigo_ibge');
  set codigoIbge(String? value) => setField<String>('codigo_ibge', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime? get dataEmail => getField<DateTime>('data_email');
  set dataEmail(DateTime? value) => setField<DateTime>('data_email', value);

  bool get emailAguardConfirm => getField<bool>('email_aguard_confirm')!;
  set emailAguardConfirm(bool value) =>
      setField<bool>('email_aguard_confirm', value);

  String get origemCadastro => getField<String>('origem_cadastro')!;
  set origemCadastro(String value) =>
      setField<String>('origem_cadastro', value);

  DateTime? get dataUltimaAtz => getField<DateTime>('data_ultima_atz');
  set dataUltimaAtz(DateTime? value) =>
      setField<DateTime>('data_ultima_atz', value);

  DateTime? get dataSenha => getField<DateTime>('data_senha');
  set dataSenha(DateTime? value) => setField<DateTime>('data_senha', value);

  bool get excluido => getField<bool>('excluido')!;
  set excluido(bool value) => setField<bool>('excluido', value);
}
