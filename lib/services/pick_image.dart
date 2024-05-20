import 'package:flutter/material.dart';
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

Future<String?> pickImageUsingCamera() async {
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


void insertImage(
    QuillController controller, BuildContext context, String type) async {
  String? imagePath = type == 'gallery'
      ? await pickImageFromGallery()
      : await pickImageUsingCamera();
  if (imagePath != null) {
    final index = controller.selection.baseOffset;

    //image adding on controller
    await controller.document.insert(index, BlockEmbed.image(imagePath));

    controller.updateSelection(
      TextSelection.collapsed(offset: index + 1),
      ChangeSource.local,
    );
    Future.delayed(Duration(milliseconds: 100), () {
      Navigator.of(context).pop();
    });
  }
}
