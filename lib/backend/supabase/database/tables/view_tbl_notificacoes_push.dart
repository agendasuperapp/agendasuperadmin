import '../database.dart';

class ViewTblNotificacoesPushTable
    extends SupabaseTable<ViewTblNotificacoesPushRow> {
  @override
  String get tableName => 'view_tbl_notificacoes_push';

  @override
  ViewTblNotificacoesPushRow createRow(Map<String, dynamic> data) =>
      ViewTblNotificacoesPushRow(data);
}

class ViewTblNotificacoesPushRow extends SupabaseDataRow {
  ViewTblNotificacoesPushRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblNotificacoesPushTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idAfiliado => getField<int>('id_afiliado');
  set idAfiliado(int? value) => setField<int>('id_afiliado', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  bool? get lida => getField<bool>('lida');
  set lida(bool? value) => setField<bool>('lida', value);

  DateTime? get dataLeitura => getField<DateTime>('data_leitura');
  set dataLeitura(DateTime? value) => setField<DateTime>('data_leitura', value);

  String? get texto => getField<String>('texto');
  set texto(String? value) => setField<String>('texto', value);

  bool? get prioridade => getField<bool>('prioridade');
  set prioridade(bool? value) => setField<bool>('prioridade', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  int? get idCliente => getField<int>('id_cliente');
  set idCliente(int? value) => setField<int>('id_cliente', value);

  int? get idCarrinho => getField<int>('id_carrinho');
  set idCarrinho(int? value) => setField<int>('id_carrinho', value);

  int? get idComissao => getField<int>('id_comissao');
  set idComissao(int? value) => setField<int>('id_comissao', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get icone => getField<String>('icone');
  set icone(String? value) => setField<String>('icone', value);

  DateTime? get dataDocumento => getField<DateTime>('data_documento');
  set dataDocumento(DateTime? value) =>
      setField<DateTime>('data_documento', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  bool? get notifPushEnviada => getField<bool>('notif_push_enviada');
  set notifPushEnviada(bool? value) =>
      setField<bool>('notif_push_enviada', value);

  DateTime? get dataNotifPush => getField<DateTime>('data_notif_push');
  set dataNotifPush(DateTime? value) =>
      setField<DateTime>('data_notif_push', value);

  String? get retornoOneSegnal => getField<String>('retorno_one_segnal');
  set retornoOneSegnal(String? value) =>
      setField<String>('retorno_one_segnal', value);

  String? get destino => getField<String>('destino');
  set destino(String? value) => setField<String>('destino', value);

  int? get idConfig => getField<int>('id_config');
  set idConfig(int? value) => setField<int>('id_config', value);

  int? get idApp => getField<int>('id_app');
  set idApp(int? value) => setField<int>('id_app', value);
}
