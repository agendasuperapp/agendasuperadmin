import '/flutter_flow/flutter_flow_util.dart';
import 'cp_admin_pag_saques_comprovante_widget.dart'
    show CpAdminPagSaquesComprovanteWidget;
import 'package:flutter/material.dart';

class CpAdminPagSaquesComprovanteModel
    extends FlutterFlowModel<CpAdminPagSaquesComprovanteWidget> {
  ///  Local state fields for this component.

  String? varComprovante;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
