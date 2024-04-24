import 'package:bcrypt/bcrypt.dart';
import 'package:centa_clone/gql/config/graphql_config.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlQueryAuthServices {
  static GraphQLConfig graphQlConfig = GraphQLConfig();
  GraphQLClient client = graphQlConfig.clientToQuery();

  Future<Map<String, dynamic>> registerUser({
    required firstName,
    required lastName,
    required email,
    phoneNumber,
    passwrod,
    userRole,
    googleSignedIn,
  }) async {
    try {
      final bool throughGoogle = googleSignedIn != null ? true : false;
      final String hashedPass = BCrypt.hashpw(passwrod, BCrypt.gensalt());
      QueryResult result = await client.query(
          QueryOptions(fetchPolicy: FetchPolicy.noCache, document: gql('''
mutation addUser {
  insert_users_one(object: {email: "$email", first_name: "$firstName", last_name: "$lastName", password: "$hashedPass", phone_number: "$phoneNumber",user_role:"$userRole",google_apple_signd:$throughGoogle,}){
    id
    email  
  }
}

''')));

      if (result.hasException) {
        print(result.exception);
        return {
          'error': true,
          'message':
              'Failed to add details. Please verify that the details do not already exist in the system.'
        };
        // throw Exception(result.exception);
      } else {
        Map? userDetails = result.data?['insert_users_one'];

        if (userDetails != null &&
            userDetails['id'].isNotEmpty &&
            userDetails['id'] != null) {
          return {
            'status': true,
            'error': false,
            'userId': userDetails['id'],
            'email': userDetails['email']
          };
        }
        return {
          'status': false,
          'error': false,
          'messagge': 'Something went wrong please try agin later',
        };
      }
    } catch (err) {
      print('$err :error');
      return {
        'error': true,
        'message': 'Something went wrong',
      };
    }
  }
}
