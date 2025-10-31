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

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get nomeNormalizado => getField<String>('nome_normalizado');
  set nomeNormalizado(String? value) =>
      setField<String>('nome_normalizado', value);

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

  DateTime? get dataInicial => getField<DateTime>('data_inicial');
  set dataInicial(DateTime? value) => setField<DateTime>('data_inicial', value);

  DateTime? get dataFinal => getField<DateTime>('data_final');
  set dataFinal(DateTime? value) => setField<DateTime>('data_final', value);

  String? get assinatura => getField<String>('assinatura');
  set assinatura(String? value) => setField<String>('assinatura', value);

  String? get statusAssinatura => getField<String>('status_assinatura');
  set statusAssinatura(String? value) =>
      setField<String>('status_assinatura', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  String? get nomePlanoPeriodos => getField<String>('nome_plano_periodos');
  set nomePlanoPeriodos(String? value) =>
      setField<String>('nome_plano_periodos', value);

  String? get nomePlano => getField<String>('nome_plano');
  set nomePlano(String? value) => setField<String>('nome_plano', value);

  String? get idPlanoNome => getField<String>('id_plano_nome');
  set idPlanoNome(String? value) => setField<String>('id_plano_nome', value);

  bool? get contaTeste => getField<bool>('conta_teste');
  set contaTeste(bool? value) => setField<bool>('conta_teste', value);

  bool? get periodoTeste => getField<bool>('periodo_teste');
  set periodoTeste(bool? value) => setField<bool>('periodo_teste', value);

  String? get tempoTeste => getField<String>('tempo_teste');
  set tempoTeste(String? value) => setField<String>('tempo_teste', value);

  DateTime? get assinaturaInicio => getField<DateTime>('assinatura_inicio');
  set assinaturaInicio(DateTime? value) =>
      setField<DateTime>('assinatura_inicio', value);

  DateTime? get assinaturaFinal => getField<DateTime>('assinatura_final');
  set assinaturaFinal(DateTime? value) =>
      setField<DateTime>('assinatura_final', value);

  String? get statusPlano => getField<String>('status_plano');
  set statusPlano(String? value) => setField<String>('status_plano', value);

  int? get quantPagamentos => getField<int>('quant_pagamentos');
  set quantPagamentos(int? value) => setField<int>('quant_pagamentos', value);

  String? get periodoTesteAtivo => getField<String>('periodo_teste_ativo');
  set periodoTesteAtivo(String? value) =>
      setField<String>('periodo_teste_ativo', value);

  String? get assinaturaCancSolicitado =>
      getField<String>('assinatura_canc_solicitado');
  set assinaturaCancSolicitado(String? value) =>
      setField<String>('assinatura_canc_solicitado', value);
}
