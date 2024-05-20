import 'package:centa_clone/gql/config/graphql_config.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlQueryPostServices {
  static GraphQLConfig graphQLConfig = GraphQLConfig();
  GraphQLClient client = graphQLConfig.clientToQuery();

  Future<Map<String, dynamic>> addPost(
      {required String userId, required List<Map> postDetails}) async {
    try {
      QueryResult isAddPost = await client.query(
          QueryOptions(fetchPolicy: FetchPolicy.noCache, document: gql('''
mutation addPost{
  insert_post_one(object:{userId:"$userId",post_content:$postDetails}){
    id
  }
}
''')));
      if (isAddPost.hasException) {
        return {'error': true, 'message': 'Something went worng'};
      } else {
        return {'error': false, 'message': 'Something went worng'};
      }
    } catch (err) {
      return {'error': true, 'message': 'something went wrong'};
    }
  }
}
