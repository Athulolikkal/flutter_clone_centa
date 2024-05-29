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

//Get courses tag wise
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

  //fetching courses by using tag, title
  Future<List<dynamic>> getSearchedCourses(String searchValue) async {
    print("search value is $searchValue");
    try {
      QueryResult result = await client.query(
          QueryOptions(fetchPolicy: FetchPolicy.noCache, document: gql('''
query MyQuery @cached {
  course_details(
    where: {
      _or: [
        { title: { _ilike: "%$searchValue%" } },
        { tag: { _ilike: "%$searchValue%" } }
      ]
    }
  ) {
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

        if (allCourses.isNotEmpty) {
          return allCourses;
        }
        return [];
      }
    } catch (err) {
      print("error from query $err");
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
