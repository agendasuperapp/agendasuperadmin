import '../database.dart';

class TblUsuariosTable extends SupabaseTable<TblUsuariosRow> {
  @override
  String get tableName => 'tbl_usuarios';

  @override
  TblUsuariosRow createRow(Map<String, dynamic> data) => TblUsuariosRow(data);
}

class TblUsuariosRow extends SupabaseDataRow {
  TblUsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblUsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int get idEstabelecimento => getField<int>('id_estabelecimento')!;
  set idEstabelecimento(int value) =>
      setField<int>('id_estabelecimento', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String get telefone => getField<String>('telefone')!;
  set telefone(String value) => setField<String>('telefone', value);

  bool? get telefoneVerificado => getField<bool>('telefone_verificado');
  set telefoneVerificado(bool? value) =>
      setField<bool>('telefone_verificado', value);

  DateTime? get dataVerificacaoTelefone =>
      getField<DateTime>('data_verificacao_telefone');
  set dataVerificacaoTelefone(DateTime? value) =>
      setField<DateTime>('data_verificacao_telefone', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  bool? get emailVerificado => getField<bool>('email_verificado');
  set emailVerificado(bool? value) => setField<bool>('email_verificado', value);

  DateTime? get dataVerificacaoEmail =>
      getField<DateTime>('data_verificacao_email');
  set dataVerificacaoEmail(DateTime? value) =>
      setField<DateTime>('data_verificacao_email', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  bool? get bloqueado => getField<bool>('bloqueado');
  set bloqueado(bool? value) => setField<bool>('bloqueado', value);

  DateTime? get dataSenha => getField<DateTime>('data_senha');
  set dataSenha(DateTime? value) => setField<DateTime>('data_senha', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  int get idTipoUsuario => getField<int>('id_tipo_usuario')!;
  set idTipoUsuario(int value) => setField<int>('id_tipo_usuario', value);

  bool? get adminLoja => getField<bool>('admin_loja');
  set adminLoja(bool? value) => setField<bool>('admin_loja', value);

  bool? get adminSistema => getField<bool>('admin_sistema');
  set adminSistema(bool? value) => setField<bool>('admin_sistema', value);
}
