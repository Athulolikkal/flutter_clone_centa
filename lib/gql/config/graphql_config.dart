import 'package:centa_clone/env_details.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLConfig {
  static HttpLink httpLink = HttpLink(graphQlBaseUrl, defaultHeaders: {
    'content-type': "application/json",
    'x-hasura-admin-secret': hasuraAdminSecret,
  });

  GraphQLClient clientToQuery() =>
      GraphQLClient(link: httpLink, cache: GraphQLCache());
}
