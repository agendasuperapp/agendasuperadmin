import '/flutter_flow/flutter_flow_util.dart';
import 'cp_cad_modelos_banners_widget.dart' show CpCadModelosBannersWidget;
import 'package:flutter/material.dart';

class CpCadModelosBannersModel
    extends FlutterFlowModel<CpCadModelosBannersWidget> {
  ///  Local state fields for this component.

  bool varSituacao = true;

  bool varBannerEscuro = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  bool isDataUploading_uploadDataBanner = false;
  FFUploadedFile uploadedLocalFile_uploadDataBanner =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataBanner = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
