import '../database.dart';

class ViewTblAfiliadosEstabelecimentosTable
    extends SupabaseTable<ViewTblAfiliadosEstabelecimentosRow> {
  @override
  String get tableName => 'view_tbl_afiliados_estabelecimentos';

  @override
  ViewTblAfiliadosEstabelecimentosRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiliadosEstabelecimentosRow(data);
}

class ViewTblAfiliadosEstabelecimentosRow extends SupabaseDataRow {
  ViewTblAfiliadosEstabelecimentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadosEstabelecimentosTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  int? get idAfiliado => getField<int>('id_afiliado');
  set idAfiliado(int? value) => setField<int>('id_afiliado', value);

  int? get idAfiliadoIndicador => getField<int>('id_afiliado_indicador');
  set idAfiliadoIndicador(int? value) =>
      setField<int>('id_afiliado_indicador', value);

  String? get userIdAfiliadoIndicador =>
      getField<String>('user_id_afiliado_indicador');
  set userIdAfiliadoIndicador(String? value) =>
      setField<String>('user_id_afiliado_indicador', value);

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

  String? get nomeEstado => getField<String>('nome_estado');
  set nomeEstado(String? value) => setField<String>('nome_estado', value);

  String? get nomeSegmento => getField<String>('nome_segmento');
  set nomeSegmento(String? value) => setField<String>('nome_segmento', value);

  int? get quantIndicacoes => getField<int>('quant_indicacoes');
  set quantIndicacoes(int? value) => setField<int>('quant_indicacoes', value);

  DateTime? get dataInicial => getField<DateTime>('data_inicial');
  set dataInicial(DateTime? value) => setField<DateTime>('data_inicial', value);

  DateTime? get dataFinal => getField<DateTime>('data_final');
  set dataFinal(DateTime? value) => setField<DateTime>('data_final', value);

  String? get nomePlano => getField<String>('nome_plano');
  set nomePlano(String? value) => setField<String>('nome_plano', value);
}
