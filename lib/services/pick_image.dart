import 'package:flutter_quill/flutter_quill.dart';
import 'package:image_picker/image_picker.dart';

Future<String?> pickImageFromGallery() async {
  try {
    final resultImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (resultImage == null) return null;
    return resultImage.path;
  } catch (err) {
    print(err);
    return null;
  }
}

Future<String?> pickImageUsingCamera(QuillController controller) async {
  try {
    final resultImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (resultImage == null) return null;
    return resultImage.path;
  } catch (err) {
    print(err);
    return null;
  }
}

void insertImage(QuillController controller) async {
  String? imagePath = await pickImageFromGallery();
  final index = controller.selection.baseOffset;
  final length = controller.selection.extentOffset - index;
  if (imagePath != null)
    controller.replaceText(index, length, BlockEmbed.image(imagePath), null);
}
