import '../database.dart';

class TblAfiliadosTable extends SupabaseTable<TblAfiliadosRow> {
  @override
  String get tableName => 'tbl_afiliados';

  @override
  TblAfiliadosRow createRow(Map<String, dynamic> data) => TblAfiliadosRow(data);
}

class TblAfiliadosRow extends SupabaseDataRow {
  TblAfiliadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAfiliadosTable();

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

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  bool? get telefoneVerificado => getField<bool>('telefone_verificado');
  set telefoneVerificado(bool? value) =>
      setField<bool>('telefone_verificado', value);

  DateTime? get dataVerificacaoTelefone =>
      getField<DateTime>('data_verificacao_telefone');
  set dataVerificacaoTelefone(DateTime? value) =>
      setField<DateTime>('data_verificacao_telefone', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  bool? get bloqueado => getField<bool>('bloqueado');
  set bloqueado(bool? value) => setField<bool>('bloqueado', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  String? get rua => getField<String>('rua');
  set rua(String? value) => setField<String>('rua', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  String? get facebook => getField<String>('facebook');
  set facebook(String? value) => setField<String>('facebook', value);

  String? get tiktok => getField<String>('tiktok');
  set tiktok(String? value) => setField<String>('tiktok', value);

  String? get instagran => getField<String>('instagran');
  set instagran(String? value) => setField<String>('instagran', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get tipoDoc => getField<String>('tipo_doc');
  set tipoDoc(String? value) => setField<String>('tipo_doc', value);

  String get docCpfCnpj => getField<String>('doc_cpf_cnpj')!;
  set docCpfCnpj(String value) => setField<String>('doc_cpf_cnpj', value);

  String? get inscEstadual => getField<String>('insc_estadual');
  set inscEstadual(String? value) => setField<String>('insc_estadual', value);

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);

  DateTime? get dataNascimento => getField<DateTime>('data_nascimento');
  set dataNascimento(DateTime? value) =>
      setField<DateTime>('data_nascimento', value);

  String get statusAfiliacao => getField<String>('status_afiliacao')!;
  set statusAfiliacao(String value) =>
      setField<String>('status_afiliacao', value);

  bool get nfEmitida => getField<bool>('nf_emitida')!;
  set nfEmitida(bool value) => setField<bool>('nf_emitida', value);

  int get idAfiliadoIndicador => getField<int>('id_afiliado_indicador')!;
  set idAfiliadoIndicador(int value) =>
      setField<int>('id_afiliado_indicador', value);

  String get userIdAfiliadoIndicador =>
      getField<String>('user_id_afiliado_indicador')!;
  set userIdAfiliadoIndicador(String value) =>
      setField<String>('user_id_afiliado_indicador', value);

  DateTime get dataBaseSaque => getField<DateTime>('data_base_saque')!;
  set dataBaseSaque(DateTime value) =>
      setField<DateTime>('data_base_saque', value);

  bool get situacaoPlano => getField<bool>('situacao_plano')!;
  set situacaoPlano(bool value) => setField<bool>('situacao_plano', value);
}
