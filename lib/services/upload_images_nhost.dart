import 'dart:io';
import 'dart:typed_data';
import 'package:centa_clone/env_details.dart';
import 'package:nhost_dart/nhost_dart.dart';
import 'package:path/path.dart';
import 'package:image/image.dart' as img;

Future<String> uploadImageNhost(String path) async {
  try {
    //set up the nhost client
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
    // final fileName = 'userImage.jpg';

    //unique file name
    final uniqueFileName = '${DateTime.now().millisecondsSinceEpoch}_$fileName';

    //Decode image
    final image = img.decodeImage(fileBytes);
    if (image == null) {
      return 'error';
    }

    //converting to jpeg format if its not
    // Uint8List finalFileBytes;
    // if (fileName.toLowerCase().endsWith('jpg') ||
    //     fileName.toLowerCase().endsWith('jpeg')) {
    //   finalFileBytes = fileBytes;
    // } else {
    //   finalFileBytes = Uint8List.fromList(img.encodeJpg(image));
    // }

    // //checking the file size and if it is greater than 1.5 mb then then reduce the size
    // if (finalFileBytes.lengthInBytes > 1.5 * 1024 * 1024) {
    //   //compress the image
    //   int quality = 85;
    //   finalFileBytes =
    //       Uint8List.fromList(img.encodeJpg(image, quality: quality));

    //   //if it still size is greater than 1.5 mb then again compressing
    //   while (finalFileBytes.lengthInBytes > 1.5 * 1024 * 1024 && quality > 10) {
    //     quality -= 5;
    //     finalFileBytes =
    //         Uint8List.fromList(img.encodeJpg(image, quality: quality));
    //   }
    // }
    
    //uploading image to nHost
    final response = await nhost.storage.uploadBytes(
        fileName: uniqueFileName,
        fileContents: fileBytes,
        // fileContents: finalFileBytes,
        mimeType: 'image/jpeg');
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
