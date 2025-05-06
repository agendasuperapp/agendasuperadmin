import '../database.dart';

class ViewTblDevicesTable extends SupabaseTable<ViewTblDevicesRow> {
  @override
  String get tableName => 'view_tbl_devices';

  @override
  ViewTblDevicesRow createRow(Map<String, dynamic> data) =>
      ViewTblDevicesRow(data);
}

class ViewTblDevicesRow extends SupabaseDataRow {
  ViewTblDevicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblDevicesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get deviceId => getField<String>('device_id');
  set deviceId(String? value) => setField<String>('device_id', value);

  String? get osName => getField<String>('os_name');
  set osName(String? value) => setField<String>('os_name', value);

  String? get deviceName => getField<String>('device_name');
  set deviceName(String? value) => setField<String>('device_name', value);

  String? get applicationType => getField<String>('application_type');
  set applicationType(String? value) =>
      setField<String>('application_type', value);
}
