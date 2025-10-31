import '../database.dart';

class TblConsultarCpfTable extends SupabaseTable<TblConsultarCpfRow> {
  @override
  String get tableName => 'tbl_consultar_cpf';

  @override
  TblConsultarCpfRow createRow(Map<String, dynamic> data) =>
      TblConsultarCpfRow(data);
}

class TblConsultarCpfRow extends SupabaseDataRow {
  TblConsultarCpfRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblConsultarCpfTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get situation => getField<String>('situation');
  set situation(String? value) => setField<String>('situation', value);

  DateTime? get birthDate => getField<DateTime>('birth_date');
  set birthDate(DateTime? value) => setField<DateTime>('birth_date', value);

  int? get deathYear => getField<int>('death_year');
  set deathYear(int? value) => setField<int>('death_year', value);

  String? get cpfNumber => getField<String>('cpf_number');
  set cpfNumber(String? value) => setField<String>('cpf_number', value);

  String? get registrationDate => getField<String>('registration_date');
  set registrationDate(String? value) =>
      setField<String>('registration_date', value);

  String? get verificationDigit => getField<String>('verification_digit');
  set verificationDigit(String? value) =>
      setField<String>('verification_digit', value);

  String? get emissionTime => getField<String>('emission_time');
  set emissionTime(String? value) => setField<String>('emission_time', value);

  DateTime? get emissionDate => getField<DateTime>('emission_date');
  set emissionDate(DateTime? value) =>
      setField<DateTime>('emission_date', value);

  String? get controlCode => getField<String>('control_code');
  set controlCode(String? value) => setField<String>('control_code', value);

  String? get validationUrl => getField<String>('validation_url');
  set validationUrl(String? value) => setField<String>('validation_url', value);

  String? get validationHtmlUrl => getField<String>('validation_html_url');
  set validationHtmlUrl(String? value) =>
      setField<String>('validation_html_url', value);

  bool get situacao => getField<bool>('situacao')!;
  set situacao(bool value) => setField<bool>('situacao', value);

  dynamic get returnField => getField<dynamic>('return');
  set returnField(dynamic value) => setField<dynamic>('return', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get erro => getField<String>('erro');
  set erro(String? value) => setField<String>('erro', value);
}
