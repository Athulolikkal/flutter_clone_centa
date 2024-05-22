import 'package:centa_clone/gql/query/post.dart';
import 'package:centa_clone/services/upload_images_nhost.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:get_storage/get_storage.dart';

Future<Map<String, dynamic>> updatePost(QuillController controller) async {
  try {
    final delta = controller.document.toDelta();
    final deltaJson = delta.toJson();
    bool isEmpty = deltaJson.length == 1 &&
        deltaJson[0].containsKey('insert') &&
        (deltaJson[0]['insert'] is String &&
            deltaJson[0]['insert'].trim().isEmpty);

    if (isEmpty) {
      return {'error': true, 'message': 'can\'t share empty','empty':true};
    } else {
      for (var operation in deltaJson) {
        if (operation.containsKey('insert') && operation['insert'] is Map) {
          var insertValue = operation['insert'] as Map;
          if (insertValue.containsKey('image')) {
           
            var imageUrl = await uploadImageNhost(insertValue['image']);
            if (imageUrl == 'error') {
              return {'error': true, 'message': 'unable to upload images','empty':false};
            } else {
              insertValue['image'] = imageUrl;
            }
          }
        }
      }
      print('uploaded all the images');
      final userDetails = GetStorage().read('user');
      final String? userId = userDetails['userId'];
      if (userId != null) {
        final isPostAdded = await GraphQlQueryPostServices()
            .addPost(userId: userId, postDetails: deltaJson);
        if (isPostAdded['error']) {
          return {'error': true, 'message': 'post upload failed','empty':false};
        } else {
          return {'error': false, 'message': 'post uploaded successfully','empty':false};
        }
      } else {
        return {'error': true, 'message': 'user Id is not present','empty':false};
      }
    }
  } catch (err) {
    print(err);
    return {'error': true,'message': 'server error','empty':false};
  }
}
