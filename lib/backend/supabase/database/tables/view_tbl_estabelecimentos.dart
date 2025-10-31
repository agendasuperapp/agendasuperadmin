import '../database.dart';

class ViewTblEstabelecimentosTable
    extends SupabaseTable<ViewTblEstabelecimentosRow> {
  @override
  String get tableName => 'view_tbl_estabelecimentos';

  @override
  ViewTblEstabelecimentosRow createRow(Map<String, dynamic> data) =>
      ViewTblEstabelecimentosRow(data);
}

class ViewTblEstabelecimentosRow extends SupabaseDataRow {
  ViewTblEstabelecimentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblEstabelecimentosTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

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

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get instagran => getField<String>('instagran');
  set instagran(String? value) => setField<String>('instagran', value);

  String? get facebook => getField<String>('facebook');
  set facebook(String? value) => setField<String>('facebook', value);

  List<String> get formasPagamento => getListField<String>('formas_pagamento');
  set formasPagamento(List<String>? value) =>
      setListField<String>('formas_pagamento', value);

  List<String> get comodidades => getListField<String>('comodidades');
  set comodidades(List<String>? value) =>
      setListField<String>('comodidades', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  bool? get emailVerificado => getField<bool>('email_verificado');
  set emailVerificado(bool? value) => setField<bool>('email_verificado', value);

  DateTime? get dataVerificacaoEmail =>
      getField<DateTime>('data_verificacao_email');
  set dataVerificacaoEmail(DateTime? value) =>
      setField<DateTime>('data_verificacao_email', value);

  bool? get telefoneVerificado => getField<bool>('telefone_verificado');
  set telefoneVerificado(bool? value) =>
      setField<bool>('telefone_verificado', value);

  DateTime? get dataVerificacaoTelefone =>
      getField<DateTime>('data_verificacao_telefone');
  set dataVerificacaoTelefone(DateTime? value) =>
      setField<DateTime>('data_verificacao_telefone', value);

  String? get senha => getField<String>('senha');
  set senha(String? value) => setField<String>('senha', value);

  DateTime? get dataSenha => getField<DateTime>('data_senha');
  set dataSenha(DateTime? value) => setField<DateTime>('data_senha', value);

  String? get idTemp => getField<String>('id_temp');
  set idTemp(String? value) => setField<String>('id_temp', value);

  String? get nomeContato => getField<String>('nome_contato');
  set nomeContato(String? value) => setField<String>('nome_contato', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  int? get idSegmento => getField<int>('id_segmento');
  set idSegmento(int? value) => setField<int>('id_segmento', value);

  String? get whatsappInstancia => getField<String>('whatsapp_instancia');
  set whatsappInstancia(String? value) =>
      setField<String>('whatsapp_instancia', value);

  String? get whatsappIdInstancia => getField<String>('whatsapp_id_instancia');
  set whatsappIdInstancia(String? value) =>
      setField<String>('whatsapp_id_instancia', value);

  String? get whatsappNumero => getField<String>('whatsapp_numero');
  set whatsappNumero(String? value) =>
      setField<String>('whatsapp_numero', value);

  String? get whatsappDataConexao => getField<String>('whatsapp_data_conexao');
  set whatsappDataConexao(String? value) =>
      setField<String>('whatsapp_data_conexao', value);

  String? get tiktok => getField<String>('tiktok');
  set tiktok(String? value) => setField<String>('tiktok', value);

  String? get whatsappApikey => getField<String>('whatsapp_apikey');
  set whatsappApikey(String? value) =>
      setField<String>('whatsapp_apikey', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  String? get fotoCapa => getField<String>('foto_capa');
  set fotoCapa(String? value) => setField<String>('foto_capa', value);

  int? get idTema => getField<int>('id_tema');
  set idTema(int? value) => setField<int>('id_tema', value);

  String? get textoBanner => getField<String>('texto_banner');
  set textoBanner(String? value) => setField<String>('texto_banner', value);

  int? get idModeloBanner => getField<int>('id_modelo_banner');
  set idModeloBanner(int? value) => setField<int>('id_modelo_banner', value);

  String? get tipoBanner => getField<String>('tipo_banner');
  set tipoBanner(String? value) => setField<String>('tipo_banner', value);

  String? get whatsappTipoConexao => getField<String>('whatsapp_tipo_conexao');
  set whatsappTipoConexao(String? value) =>
      setField<String>('whatsapp_tipo_conexao', value);

  String? get whatsappTipoWhatsapp =>
      getField<String>('whatsapp_tipo_whatsapp');
  set whatsappTipoWhatsapp(String? value) =>
      setField<String>('whatsapp_tipo_whatsapp', value);

  DateTime? get whatsappDataDadastro =>
      getField<DateTime>('whatsapp_data_dadastro');
  set whatsappDataDadastro(DateTime? value) =>
      setField<DateTime>('whatsapp_data_dadastro', value);

  DateTime? get whatsappDataUltVerificacao =>
      getField<DateTime>('whatsapp_data_ult_verificacao');
  set whatsappDataUltVerificacao(DateTime? value) =>
      setField<DateTime>('whatsapp_data_ult_verificacao', value);

  bool? get whatsappConectado => getField<bool>('whatsapp_conectado');
  set whatsappConectado(bool? value) =>
      setField<bool>('whatsapp_conectado', value);

  bool? get cfCobrarEntradaAgend => getField<bool>('cf_cobrar_entrada_agend');
  set cfCobrarEntradaAgend(bool? value) =>
      setField<bool>('cf_cobrar_entrada_agend', value);

  double? get cfPercEntradaAgend => getField<double>('cf_perc_entrada_agend');
  set cfPercEntradaAgend(double? value) =>
      setField<double>('cf_perc_entrada_agend', value);

  bool? get cfEnvMensWhatsClSalvar =>
      getField<bool>('cf_env_mens_whats_cl_salvar');
  set cfEnvMensWhatsClSalvar(bool? value) =>
      setField<bool>('cf_env_mens_whats_cl_salvar', value);

  bool? get cfEnvMensWhatsAprovar =>
      getField<bool>('cf_env_mens_whats_aprovar');
  set cfEnvMensWhatsAprovar(bool? value) =>
      setField<bool>('cf_env_mens_whats_aprovar', value);

  bool? get cfUsarEstAprovarAgend =>
      getField<bool>('cf_usar_est_aprovar_agend');
  set cfUsarEstAprovarAgend(bool? value) =>
      setField<bool>('cf_usar_est_aprovar_agend', value);

  bool? get cfUsarClConfirmarAgend =>
      getField<bool>('cf_usar_cl_confirmar_agend');
  set cfUsarClConfirmarAgend(bool? value) =>
      setField<bool>('cf_usar_cl_confirmar_agend', value);

  int? get cfMinutosLembreteCl => getField<int>('cf_minutos_lembrete_cl');
  set cfMinutosLembreteCl(int? value) =>
      setField<int>('cf_minutos_lembrete_cl', value);

  bool? get cfEnviarMensLembrete => getField<bool>('cf_enviar_mens_lembrete');
  set cfEnviarMensLembrete(bool? value) =>
      setField<bool>('cf_enviar_mens_lembrete', value);

  String? get cfChavePixEntradaAg =>
      getField<String>('cf_chave_pix_entrada_ag');
  set cfChavePixEntradaAg(String? value) =>
      setField<String>('cf_chave_pix_entrada_ag', value);

  String? get cfTipoChavePixEntAg =>
      getField<String>('cf_tipo_chave_pix_ent_ag');
  set cfTipoChavePixEntAg(String? value) =>
      setField<String>('cf_tipo_chave_pix_ent_ag', value);

  String? get cfNomeTitularPix => getField<String>('cf_nome_titular_pix');
  set cfNomeTitularPix(String? value) =>
      setField<String>('cf_nome_titular_pix', value);

  int? get idUsuario => getField<int>('id_usuario');
  set idUsuario(int? value) => setField<int>('id_usuario', value);

  int? get idAfiliado => getField<int>('id_afiliado');
  set idAfiliado(int? value) => setField<int>('id_afiliado', value);

  int? get idPlanoPreco => getField<int>('id_plano_preco');
  set idPlanoPreco(int? value) => setField<int>('id_plano_preco', value);

  int? get idAfiliadoIndicador => getField<int>('id_afiliado_indicador');
  set idAfiliadoIndicador(int? value) =>
      setField<int>('id_afiliado_indicador', value);

  DateTime? get dataUltimaAtualizacao =>
      getField<DateTime>('data_ultima_atualizacao');
  set dataUltimaAtualizacao(DateTime? value) =>
      setField<DateTime>('data_ultima_atualizacao', value);

  DateTime? get dataUltimaAtualizacaoServicos =>
      getField<DateTime>('data_ultima_atualizacao_servicos');
  set dataUltimaAtualizacaoServicos(DateTime? value) =>
      setField<DateTime>('data_ultima_atualizacao_servicos', value);

  DateTime? get dataUltimaAtualizacaoBanners =>
      getField<DateTime>('data_ultima_atualizacao_banners');
  set dataUltimaAtualizacaoBanners(DateTime? value) =>
      setField<DateTime>('data_ultima_atualizacao_banners', value);

  DateTime? get dataUltimaAtualizacaoProfissionais =>
      getField<DateTime>('data_ultima_atualizacao_profissionais');
  set dataUltimaAtualizacaoProfissionais(DateTime? value) =>
      setField<DateTime>('data_ultima_atualizacao_profissionais', value);

  DateTime? get dataUltimaAtualizacaoHrFunc =>
      getField<DateTime>('data_ultima_atualizacao_hr_func');
  set dataUltimaAtualizacaoHrFunc(DateTime? value) =>
      setField<DateTime>('data_ultima_atualizacao_hr_func', value);

  DateTime? get dataUltimaAtualizacaoAgend =>
      getField<DateTime>('data_ultima_atualizacao_agend');
  set dataUltimaAtualizacaoAgend(DateTime? value) =>
      setField<DateTime>('data_ultima_atualizacao_agend', value);

  String? get userIdAfiliadoIndicador =>
      getField<String>('user_id_afiliado_indicador');
  set userIdAfiliadoIndicador(String? value) =>
      setField<String>('user_id_afiliado_indicador', value);

  int? get idCliente => getField<int>('id_cliente');
  set idCliente(int? value) => setField<int>('id_cliente', value);

  String? get tipoDoc => getField<String>('tipo_doc');
  set tipoDoc(String? value) => setField<String>('tipo_doc', value);

  String? get docCpfCnpj => getField<String>('doc_cpf_cnpj');
  set docCpfCnpj(String? value) => setField<String>('doc_cpf_cnpj', value);

  String? get inscEstadual => getField<String>('insc_estadual');
  set inscEstadual(String? value) => setField<String>('insc_estadual', value);

  DateTime? get dataNascimento => getField<DateTime>('data_nascimento');
  set dataNascimento(DateTime? value) =>
      setField<DateTime>('data_nascimento', value);

  String? get nomePfisicaRazsocial =>
      getField<String>('nome_pfisica_razsocial');
  set nomePfisicaRazsocial(String? value) =>
      setField<String>('nome_pfisica_razsocial', value);

  String? get nomeFantasia => getField<String>('nome_fantasia');
  set nomeFantasia(String? value) => setField<String>('nome_fantasia', value);

  String? get generoPfisica => getField<String>('genero_pfisica');
  set generoPfisica(String? value) => setField<String>('genero_pfisica', value);

  bool? get situacaoPlano => getField<bool>('situacao_plano');
  set situacaoPlano(bool? value) => setField<bool>('situacao_plano', value);

  bool? get assistenteCadConcluido =>
      getField<bool>('assistente_cad_concluido');
  set assistenteCadConcluido(bool? value) =>
      setField<bool>('assistente_cad_concluido', value);

  bool? get excluido => getField<bool>('excluido');
  set excluido(bool? value) => setField<bool>('excluido', value);

  String? get nomeUpper => getField<String>('nome_upper');
  set nomeUpper(String? value) => setField<String>('nome_upper', value);

  String? get nomeEstado => getField<String>('nome_estado');
  set nomeEstado(String? value) => setField<String>('nome_estado', value);

  String? get nomeSegmento => getField<String>('nome_segmento');
  set nomeSegmento(String? value) => setField<String>('nome_segmento', value);

  String? get dia => getField<String>('dia');
  set dia(String? value) => setField<String>('dia', value);

  String? get horario1Inicio => getField<String>('horario_1_inicio');
  set horario1Inicio(String? value) =>
      setField<String>('horario_1_inicio', value);

  String? get horario1Fim => getField<String>('horario_1_fim');
  set horario1Fim(String? value) => setField<String>('horario_1_fim', value);

  String? get horario2Inicio => getField<String>('horario_2_inicio');
  set horario2Inicio(String? value) =>
      setField<String>('horario_2_inicio', value);

  String? get horario2Fim => getField<String>('horario_2_fim');
  set horario2Fim(String? value) => setField<String>('horario_2_fim', value);

  bool? get fechado => getField<bool>('fechado');
  set fechado(bool? value) => setField<bool>('fechado', value);

  bool? get hrFuncionamentoCad => getField<bool>('hr_funcionamento_cad');
  set hrFuncionamentoCad(bool? value) =>
      setField<bool>('hr_funcionamento_cad', value);

  String? get nomeTema => getField<String>('nome_tema');
  set nomeTema(String? value) => setField<String>('nome_tema', value);

  String? get fotoLightMode => getField<String>('foto_light_mode');
  set fotoLightMode(String? value) =>
      setField<String>('foto_light_mode', value);

  String? get fotoDarkMod => getField<String>('foto_dark_mod');
  set fotoDarkMod(String? value) => setField<String>('foto_dark_mod', value);

  String? get fotoBannerModelo => getField<String>('foto_banner_modelo');
  set fotoBannerModelo(String? value) =>
      setField<String>('foto_banner_modelo', value);

  bool? get fotoBannerEscuro => getField<bool>('foto_banner_escuro');
  set fotoBannerEscuro(bool? value) =>
      setField<bool>('foto_banner_escuro', value);

  int? get quantBanners => getField<int>('quant_banners');
  set quantBanners(int? value) => setField<int>('quant_banners', value);

  bool? get planoAtivo => getField<bool>('plano_ativo');
  set planoAtivo(bool? value) => setField<bool>('plano_ativo', value);

  DateTime? get planoVencimento => getField<DateTime>('plano_vencimento');
  set planoVencimento(DateTime? value) =>
      setField<DateTime>('plano_vencimento', value);

  int? get planoDiasRest => getField<int>('plano_dias_rest');
  set planoDiasRest(int? value) => setField<int>('plano_dias_rest', value);

  bool? get planoVencido => getField<bool>('plano_vencido');
  set planoVencido(bool? value) => setField<bool>('plano_vencido', value);

  bool? get planoRenovacao => getField<bool>('plano_renovacao');
  set planoRenovacao(bool? value) => setField<bool>('plano_renovacao', value);

  int? get quantProfissionaisMax => getField<int>('quant_profissionais_max');
  set quantProfissionaisMax(int? value) =>
      setField<int>('quant_profissionais_max', value);

  bool? get assinatura => getField<bool>('assinatura');
  set assinatura(bool? value) => setField<bool>('assinatura', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);
}
