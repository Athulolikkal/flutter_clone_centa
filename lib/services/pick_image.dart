import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_quill/flutter_quill.dart';

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

// void insertImage(QuillController controller) async {
//   String? imagePath = await pickImageFromGallery();
//   final index = controller.selection.baseOffset;
//   final length = controller.selection.extentOffset - index;
//   if (imagePath != null)
//     controller.replaceText(index, length, BlockEmbed.image(imagePath), null);
// }

void insertImage(QuillController controller, BuildContext context) async {
  String? imagePath = await pickImageFromGallery();
  if (imagePath != null) {
    final index = controller.selection.baseOffset;
    print(index);

    //image adding on controller
    await controller.document.insert(index, BlockEmbed.image(imagePath));
    //   final json = jsonEncode(controller.document.toDelta().toJson());
    // print(json);
    controller.updateSelection(
      TextSelection.collapsed(offset: index + 1),
      ChangeSource.local,
    );
    // Future.delayed(Duration(milliseconds: 100), () {
    //   Navigator.of(context).pop();
    // });
  }
}
