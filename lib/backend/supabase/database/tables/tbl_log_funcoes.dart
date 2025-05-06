import '../database.dart';

class TblLogFuncoesTable extends SupabaseTable<TblLogFuncoesRow> {
  @override
  String get tableName => 'tbl_log_funcoes';

  @override
  TblLogFuncoesRow createRow(Map<String, dynamic> data) =>
      TblLogFuncoesRow(data);
}

class TblLogFuncoesRow extends SupabaseDataRow {
  TblLogFuncoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblLogFuncoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get userIdCliente => getField<String>('user_id_cliente');
  set userIdCliente(String? value) =>
      setField<String>('user_id_cliente', value);

  String? get userIdEstabelecimento =>
      getField<String>('user_id_estabelecimento');
  set userIdEstabelecimento(String? value) =>
      setField<String>('user_id_estabelecimento', value);

  DateTime get dataField => getField<DateTime>('data')!;
  set dataField(DateTime value) => setField<DateTime>('data', value);

  String get token => getField<String>('token')!;
  set token(String value) => setField<String>('token', value);

  String? get deviceId => getField<String>('device_id');
  set deviceId(String? value) => setField<String>('device_id', value);

  int get qtResultados => getField<int>('qt_resultados')!;
  set qtResultados(int value) => setField<int>('qt_resultados', value);

  String get result => getField<String>('result')!;
  set result(String value) => setField<String>('result', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get prMes => getField<int>('pr_mes');
  set prMes(int? value) => setField<int>('pr_mes', value);

  int? get prIdServico => getField<int>('pr_id_servico');
  set prIdServico(int? value) => setField<int>('pr_id_servico', value);

  String? get prKey => getField<String>('pr_key');
  set prKey(String? value) => setField<String>('pr_key', value);

  DateTime? get prMesDiaData => getField<DateTime>('pr_mes_dia_data');
  set prMesDiaData(DateTime? value) =>
      setField<DateTime>('pr_mes_dia_data', value);

  int? get prIdProfissional => getField<int>('pr_id_profissional');
  set prIdProfissional(int? value) =>
      setField<int>('pr_id_profissional', value);

  int? get prIdHorario => getField<int>('pr_id_horario');
  set prIdHorario(int? value) => setField<int>('pr_id_horario', value);

  int? get prIdCarrinho => getField<int>('pr_id_carrinho');
  set prIdCarrinho(int? value) => setField<int>('pr_id_carrinho', value);

  String? get prUsername => getField<String>('pr_username');
  set prUsername(String? value) => setField<String>('pr_username', value);

  String? get prTabela => getField<String>('pr_tabela');
  set prTabela(String? value) => setField<String>('pr_tabela', value);

  String? get prTelefone => getField<String>('pr_telefone');
  set prTelefone(String? value) => setField<String>('pr_telefone', value);

  int? get prIdAfiliado => getField<int>('pr_id_afiliado');
  set prIdAfiliado(int? value) => setField<int>('pr_id_afiliado', value);

  int? get prIdEstabelecimento => getField<int>('pr_id_estabelecimento');
  set prIdEstabelecimento(int? value) =>
      setField<int>('pr_id_estabelecimento', value);
}
