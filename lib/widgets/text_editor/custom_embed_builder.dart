import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class CustomImageEmbedBuilder extends EmbedBuilder {
  @override
  String get key => BlockEmbed.imageType;

  @override
  Widget build(BuildContext context, QuillController controller, Embed node,
      bool readOnly, bool inline, TextStyle textStyle) {
    final imageUrl = node.value.data;
    print(imageUrl);
    const String imageAddress = 'https://images.unsplash.com/photo-1575936123452-b67c3203c357?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D';
    return _customImageBuilder(context, imageUrl);
  }

  Widget _customImageBuilder(BuildContext context, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Image.file(File(imageUrl)),
      // child: Image.network(imageUrl),
    );
  }
}
