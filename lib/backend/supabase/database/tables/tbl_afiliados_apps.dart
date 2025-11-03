import '../database.dart';

class TblAfiliadosAppsTable extends SupabaseTable<TblAfiliadosAppsRow> {
  @override
  String get tableName => 'tbl_afiliados_apps';

  @override
  TblAfiliadosAppsRow createRow(Map<String, dynamic> data) =>
      TblAfiliadosAppsRow(data);
}

class TblAfiliadosAppsRow extends SupabaseDataRow {
  TblAfiliadosAppsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAfiliadosAppsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get idPlanoConta => getField<int>('id_plano_conta');
  set idPlanoConta(int? value) => setField<int>('id_plano_conta', value);

  bool get situacao => getField<bool>('situacao')!;
  set situacao(bool value) => setField<bool>('situacao', value);

  String? get idApp => getField<String>('id_app');
  set idApp(String? value) => setField<String>('id_app', value);

  String? get whatsapp => getField<String>('whatsapp');
  set whatsapp(String? value) => setField<String>('whatsapp', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get textoWhatsapp => getField<String>('texto_whatsapp');
  set textoWhatsapp(String? value) => setField<String>('texto_whatsapp', value);

  String? get site => getField<String>('site');
  set site(String? value) => setField<String>('site', value);

  bool? get exibirTelaCupom => getField<bool>('exibir_tela_cupom');
  set exibirTelaCupom(bool? value) =>
      setField<bool>('exibir_tela_cupom', value);

  String? get iconeDark => getField<String>('icone_dark');
  set iconeDark(String? value) => setField<String>('icone_dark', value);

  String? get iconeLight => getField<String>('icone_light');
  set iconeLight(String? value) => setField<String>('icone_light', value);

  bool? get exibirIconePrecos => getField<bool>('exibir_icone_precos');
  set exibirIconePrecos(bool? value) =>
      setField<bool>('exibir_icone_precos', value);

  String? get logoDark => getField<String>('logo_dark');
  set logoDark(String? value) => setField<String>('logo_dark', value);

  String? get logoLight => getField<String>('logo_light');
  set logoLight(String? value) => setField<String>('logo_light', value);

  String? get siteLandpage => getField<String>('site_landpage');
  set siteLandpage(String? value) => setField<String>('site_landpage', value);

  String? get nomeApk => getField<String>('nome_apk');
  set nomeApk(String? value) => setField<String>('nome_apk', value);
}
