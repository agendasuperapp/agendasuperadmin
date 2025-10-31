import '../database.dart';

class TblPlanosPrecosTable extends SupabaseTable<TblPlanosPrecosRow> {
  @override
  String get tableName => 'tbl_planos_precos';

  @override
  TblPlanosPrecosRow createRow(Map<String, dynamic> data) =>
      TblPlanosPrecosRow(data);
}

class TblPlanosPrecosRow extends SupabaseDataRow {
  TblPlanosPrecosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblPlanosPrecosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int get idPlanoPeriodo => getField<int>('id_plano_periodo')!;
  set idPlanoPeriodo(int value) => setField<int>('id_plano_periodo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  double? get preco => getField<double>('preco');
  set preco(double? value) => setField<double>('preco', value);

  double? get porcentagemDesconto => getField<double>('porcentagem_desconto');
  set porcentagemDesconto(double? value) =>
      setField<double>('porcentagem_desconto', value);

  int? get quantProfissionaisMin => getField<int>('quant_profissionais_min');
  set quantProfissionaisMin(int? value) =>
      setField<int>('quant_profissionais_min', value);

  int? get quantProfissionaisMax => getField<int>('quant_profissionais_max');
  set quantProfissionaisMax(int? value) =>
      setField<int>('quant_profissionais_max', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  int? get quantAgendamentosMax => getField<int>('quant_agendamentos_max');
  set quantAgendamentosMax(int? value) =>
      setField<int>('quant_agendamentos_max', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int get idPlanoNome => getField<int>('id_plano_nome')!;
  set idPlanoNome(int value) => setField<int>('id_plano_nome', value);

  double? get precoAssinatura => getField<double>('preco_assinatura');
  set precoAssinatura(double? value) =>
      setField<double>('preco_assinatura', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  int get idAfiliadoApp => getField<int>('id_afiliado_app')!;
  set idAfiliadoApp(int value) => setField<int>('id_afiliado_app', value);

  int? get idCupomPadrao => getField<int>('id_cupom_padrao');
  set idCupomPadrao(int? value) => setField<int>('id_cupom_padrao', value);

  String? get obsPlano => getField<String>('obs_plano');
  set obsPlano(String? value) => setField<String>('obs_plano', value);

  String? get obsDesconto => getField<String>('obs_desconto');
  set obsDesconto(String? value) => setField<String>('obs_desconto', value);

  double? get precoAnterior => getField<double>('preco_anterior');
  set precoAnterior(double? value) => setField<double>('preco_anterior', value);

  List<String> get detalhes => getListField<String>('detalhes');
  set detalhes(List<String>? value) => setListField<String>('detalhes', value);

  String? get obsCupom => getField<String>('obs_cupom');
  set obsCupom(String? value) => setField<String>('obs_cupom', value);

  int get tempoTrial => getField<int>('tempo_trial')!;
  set tempoTrial(int value) => setField<int>('tempo_trial', value);

  double get percComissao => getField<double>('perc_comissao')!;
  set percComissao(double value) => setField<double>('perc_comissao', value);
}
