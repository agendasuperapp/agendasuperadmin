import '../database.dart';

class ViewTblAfiliadosCuponsTable
    extends SupabaseTable<ViewTblAfiliadosCuponsRow> {
  @override
  String get tableName => 'view_tbl_afiliados_cupons';

  @override
  ViewTblAfiliadosCuponsRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiliadosCuponsRow(data);
}

class ViewTblAfiliadosCuponsRow extends SupabaseDataRow {
  ViewTblAfiliadosCuponsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadosCuponsTable();

  int? get idCupomPadrao => getField<int>('id_cupom_padrao');
  set idCupomPadrao(int? value) => setField<int>('id_cupom_padrao', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idAfiliado => getField<int>('id_afiliado');
  set idAfiliado(int? value) => setField<int>('id_afiliado', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  String? get nomeCupomPadrao => getField<String>('nome_cupom_padrao');
  set nomeCupomPadrao(String? value) =>
      setField<String>('nome_cupom_padrao', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get tipoCupom => getField<String>('tipo_cupom');
  set tipoCupom(String? value) => setField<String>('tipo_cupom', value);

  int? get tempo => getField<int>('tempo');
  set tempo(int? value) => setField<int>('tempo', value);

  double? get percDesconto => getField<double>('perc_desconto');
  set percDesconto(double? value) => setField<double>('perc_desconto', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  DateTime? get validade => getField<DateTime>('validade');
  set validade(DateTime? value) => setField<DateTime>('validade', value);

  int? get quant => getField<int>('quant');
  set quant(int? value) => setField<int>('quant', value);

  List<int> get idPlanosPeriodosLiberados =>
      getListField<int>('id_planos_periodos_liberados');
  set idPlanosPeriodosLiberados(List<int>? value) =>
      setListField<int>('id_planos_periodos_liberados', value);

  int? get idEstabelecimentoLiberado =>
      getField<int>('id_estabelecimento_liberado');
  set idEstabelecimentoLiberado(int? value) =>
      setField<int>('id_estabelecimento_liberado', value);

  bool? get aceitoNaRenovacao => getField<bool>('aceito_na_renovacao');
  set aceitoNaRenovacao(bool? value) =>
      setField<bool>('aceito_na_renovacao', value);

  List<int> get idPlanosNomesLiberados =>
      getListField<int>('id_planos_nomes_liberados');
  set idPlanosNomesLiberados(List<int>? value) =>
      setListField<int>('id_planos_nomes_liberados', value);

  bool? get cupomPadrao => getField<bool>('cupom_padrao');
  set cupomPadrao(bool? value) => setField<bool>('cupom_padrao', value);

  int? get quantUsado => getField<int>('quant_usado');
  set quantUsado(int? value) => setField<int>('quant_usado', value);

  int? get idCupom => getField<int>('id_cupom');
  set idCupom(int? value) => setField<int>('id_cupom', value);

  String? get nomeCupom => getField<String>('nome_cupom');
  set nomeCupom(String? value) => setField<String>('nome_cupom', value);

  bool? get situacaoCupom => getField<bool>('situacao_cupom');
  set situacaoCupom(bool? value) => setField<bool>('situacao_cupom', value);

  bool? get excluido => getField<bool>('excluido');
  set excluido(bool? value) => setField<bool>('excluido', value);
}
