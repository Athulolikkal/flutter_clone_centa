import 'dart:io';
import 'package:centa_clone/core/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class CustomImageEmbedBuilder extends EmbedBuilder {
  final bool isFileImage;
  CustomImageEmbedBuilder({required this.isFileImage});
  @override
  String get key => BlockEmbed.imageType;

  @override
  Widget build(BuildContext context, QuillController controller, Embed node,
      bool readOnly, bool inline, TextStyle textStyle) {
    final imageUrl = node.value.data;
    return _customImageBuilder(context, imageUrl);
  }

  Widget _customImageBuilder(BuildContext context, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        decoration: BoxDecoration(
            // color: Color.fromARGB(255, 203, 198, 198),
            gradient: CustomColorClass.loadingGradient,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: isFileImage
              ? Image.file(
                  File(imageUrl),
                  fit: BoxFit.cover,
                )
              : Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}
