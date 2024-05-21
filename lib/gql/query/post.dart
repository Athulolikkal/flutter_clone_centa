import 'dart:convert';

import 'package:centa_clone/gql/config/graphql_config.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlQueryPostServices {
  static GraphQLConfig graphQLConfig = GraphQLConfig();
  GraphQLClient client = graphQLConfig.clientToQuery();

  Future<Map<String, dynamic>> addPost(
      {required String userId, required List<Map> postDetails}) async {
    try {
      QueryResult isAddPost = await client.mutate(
        MutationOptions(
          fetchPolicy: FetchPolicy.noCache,
          document: gql('''
mutation addPost(\$userId: uuid!, \$postContent: jsonb!) {
  insert_post_one(object: {userId: \$userId, post_content: \$postContent}) {
    id
  }
}
'''),
          variables: {
            'userId': userId,
            'postContent': postDetails,
          },
        ),
      );

      print("$isAddPost is add post");
      if (isAddPost.hasException) {
        print('has exception, ${isAddPost.exception.toString()}');
        return {'error': true, 'message': 'exception not handled properly'};
      } else {
        print(
            "${isAddPost.data!['insert_post_one']['id']}, is add post is this");

        if (isAddPost.data?['insert_post_one']['id'] != null) {
          return {'error': false, 'message': 'Post added successfully'};
        } else {
          return {'error': true, 'message': 'something went wrong'};
        }
      }
    } catch (err) {
      print("$err error");
      return {'error': true, 'message': 'Error happend'};
    }
  }
}
