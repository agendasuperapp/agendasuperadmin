import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cp_cad_modelos_fotos_widget.dart' show CpCadModelosFotosWidget;
import 'package:flutter/material.dart';

class CpCadModelosFotosModel extends FlutterFlowModel<CpCadModelosFotosWidget> {
  ///  Local state fields for this component.

  bool varSituacao = true;

  List<int> varIDSegmentosLiberados = [];
  void addToVarIDSegmentosLiberados(int item) =>
      varIDSegmentosLiberados.add(item);
  void removeFromVarIDSegmentosLiberados(int item) =>
      varIDSegmentosLiberados.remove(item);
  void removeAtIndexFromVarIDSegmentosLiberados(int index) =>
      varIDSegmentosLiberados.removeAt(index);
  void insertAtIndexInVarIDSegmentosLiberados(int index, int item) =>
      varIDSegmentosLiberados.insert(index, item);
  void updateVarIDSegmentosLiberadosAtIndex(
          int index, Function(int) updateFn) =>
      varIDSegmentosLiberados[index] = updateFn(varIDSegmentosLiberados[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextFieldID widget.
  FocusNode? textFieldIDFocusNode;
  TextEditingController? textFieldIDTextController;
  String? Function(BuildContext, String?)? textFieldIDTextControllerValidator;
  bool isDataUploading_uploadDataModeloFoto = false;
  FFUploadedFile uploadedLocalFile_uploadDataModeloFoto =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataModeloFoto = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldIDFocusNode?.dispose();
    textFieldIDTextController?.dispose();
  }
}
