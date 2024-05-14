import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:centa_clone/gql/config/graphql_config.dart';

class GraphQlQueryCourseDetailsServices {
  static GraphQLConfig graphQLConfig = GraphQLConfig();
  GraphQLClient client = graphQLConfig.clientToQuery();
//fetching all the courses
  Future<List<dynamic>> getAllCourses() async {
    try {
      QueryResult result = await client.query(
          QueryOptions(fetchPolicy: FetchPolicy.noCache, document: gql('''
query MyQuery {
  course_details {
    id
    creator
    description
    price
    profile
    searches
    sl_no
    tag
    title
    type
    rating
    date
  }
}
''')));

      if (result.hasException) {
        return [
          {'error': true, "exception": true, 'message': 'exception found'}
        ];
      } else {
        List allCourses = result.data!['course_details'];
        return allCourses;
      }
    } catch (err) {
      print(err);
      return [
        {
          "error": true,
          'message': 'error happend',
          "exception": false,
        }
      ];
    }
  }

//

  Future<List<dynamic>> getCoursesTagWise(String tagDetails) async {
    try {
      final String queryString = '''
query allSelfPacedCourses {
  course_details(where:{tag:{_eq:"$tagDetails"}}){
    id
    creator
    description
    price
    profile
    searches
    sl_no
    tag
    title
    type
    rating
    date
  }
}
''';
      QueryResult result = await client.query(QueryOptions(
          fetchPolicy: FetchPolicy.noCache, document: gql(queryString)));

      if (result.hasException) {
        return [
          {'error': true, "exception": true, 'message': 'exception found'}
        ];
      } else {
        List allCourses = result.data!['course_details'];
        return allCourses;
      }
    } catch (err) {
      print(err);
      return [
        {
          "error": true,
          'message': 'error happend',
          "exception": false,
        }
      ];
    }
  }
}
