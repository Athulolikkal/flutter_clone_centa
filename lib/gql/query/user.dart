import 'package:centa_clone/gql/config/graphql_config.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlQueryUserServices {
  static GraphQLConfig graphQLConfig = GraphQLConfig();
  GraphQLClient client = graphQLConfig.clientToQuery();
  Future<Map<dynamic, dynamic>> findUserWithEmail({required email}) async {
    try {
     
      QueryResult result = await client.query(
          QueryOptions(fetchPolicy: FetchPolicy.noCache, document: gql('''
            query findUserByEmail {
             users(where: {email: {_eq: "$email"}}) {
                email
                id
                first_name
                last_name
                password
           
                   }
            }
        ''')));

      if (result.hasException) {
        throw Exception(result.exception);
      } else {
        Map? userDetails = result.data?['users'][0];

        if (userDetails != null) {
          return {
            'userInfo': userDetails,
            'status': true,
            'error': false,
          };
        } else {
          return {
            'status': false,
            'error': true,
          };
        }
      }
    } catch (err) {
      return {
        'status': false,
        'error': true,
      };
    }
  }
}
