import 'package:centa_clone/gql/config/graphql_config.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlQueryPostServices {
  static GraphQLConfig graphQLConfig = GraphQLConfig();
  GraphQLClient client = graphQLConfig.clientToQuery();

//To Add Post
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

      if (isAddPost.hasException) {
        return {'error': true, 'message': 'exception not handled properly'};
      } else {
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

//To Get All Active Posts
  Future<List<Map>> fetchAllActivePosts(bool isActive) async {
    try {
      QueryResult result = await client.query(
          QueryOptions(fetchPolicy: FetchPolicy.noCache, document: gql('''
query GetAllActivePosts{
  post(where:{active:{_eq:$isActive}},order_by:{updated_at:desc}){
    id,
    post_content,
    userId,
    likes,
    comments,
    updated_at,
    user_details{
      first_name
      last_name
      profile_image
    }
  }
}
''')));

      List<Map> posts = [];

      if (result.hasException) {
        return [
          {
            'error': true,
            'exception': true,
            'message': result.exception.toString()
          }
        ];
      }
      if (result.data != null) {
        posts = List<Map>.from(result.data!['post']);
      }

      return posts;
    } catch (err) {
      print("$err, error found");
      return [
        {'error': true, 'exception': false, 'message': 'something went wrong'}
      ];
    }
  }
}
