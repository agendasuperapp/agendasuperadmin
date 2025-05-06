import '../database.dart';

class ViewTblEstabelecimentosAdminTable
    extends SupabaseTable<ViewTblEstabelecimentosAdminRow> {
  @override
  String get tableName => 'view_tbl_estabelecimentos_admin';

  @override
  ViewTblEstabelecimentosAdminRow createRow(Map<String, dynamic> data) =>
      ViewTblEstabelecimentosAdminRow(data);
}

class ViewTblEstabelecimentosAdminRow extends SupabaseDataRow {
  ViewTblEstabelecimentosAdminRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblEstabelecimentosAdminTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

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

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get nomeContato => getField<String>('nome_contato');
  set nomeContato(String? value) => setField<String>('nome_contato', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get idSegmento => getField<int>('id_segmento');
  set idSegmento(int? value) => setField<int>('id_segmento', value);

  String? get whatsappInstancia => getField<String>('whatsapp_instancia');
  set whatsappInstancia(String? value) =>
      setField<String>('whatsapp_instancia', value);

  bool? get whatsappConectado => getField<bool>('whatsapp_conectado');
  set whatsappConectado(bool? value) =>
      setField<bool>('whatsapp_conectado', value);

  DateTime? get whatsappDataUltVerificacao =>
      getField<DateTime>('whatsapp_data_ult_verificacao');
  set whatsappDataUltVerificacao(DateTime? value) =>
      setField<DateTime>('whatsapp_data_ult_verificacao', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  String? get nomeSegmento => getField<String>('nome_segmento');
  set nomeSegmento(String? value) => setField<String>('nome_segmento', value);

  int? get quantProfissionais => getField<int>('quant_profissionais');
  set quantProfissionais(int? value) =>
      setField<int>('quant_profissionais', value);

  int? get quantServicos => getField<int>('quant_servicos');
  set quantServicos(int? value) => setField<int>('quant_servicos', value);

  int? get quantAgendamentos => getField<int>('quant_agendamentos');
  set quantAgendamentos(int? value) =>
      setField<int>('quant_agendamentos', value);
}
