import 'dart:io';
import 'package:centa_clone/env_details.dart';
import 'package:nhost_dart/nhost_dart.dart';
import 'package:path/path.dart';

Future<String> uploadImageNhost(String path) async {
  try {
    final nhost = NhostClient(
      subdomain: Subdomain(
        subdomain: nhostSubDomain,
        region: nhostRegion,
      ),
    );

    // Read the image file as bytes
    final file = File(path);
    final fileBytes = await file.readAsBytes();
    final fileName = basename(path);
    final response = await nhost.storage.uploadBytes(
        fileName: fileName, fileContents: fileBytes, mimeType: 'image/jpeg');
    final String? imageId = response.id;
    if (imageId != null) {
      final String imageUrl = nhostStorageUrl + imageId;
      return imageUrl;
    } else {
      return 'error';
    }
  } catch (err) {
    return 'error';
  }
}
