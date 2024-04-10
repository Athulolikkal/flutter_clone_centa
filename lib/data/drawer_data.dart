import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

final userInfo = GetStorage().read('user');

//Drawer main headers
List<String> names = ['Profile', 'Journey', 'Community', 'Settings'];

//Drawer sub headings for each headers
List<Map<String, dynamic>> getSubItems(String itemName) {
  switch (itemName) {
    case 'Profile':
      return const [
        {
          'icon': Icon(Icons.person_2_outlined),
          'title': 'General',
          'route': null
        },
        {
          'icon': Icon(Icons.contacts_outlined),
          'title': 'Contact',
          'route': null
        },
        {
          'icon': Icon(Icons.school_outlined),
          'title': 'Education',
          'route': null
        },
      ];
    case 'Journey':
      return const [
        {
          'icon': Icon(Icons.book_online_outlined),
          'title': 'My Learning',
          'route': null
        },
        {'icon': Icon(Icons.work_outline), 'title': 'My Jobs', 'route': null},
        {
          'icon': Icon(Icons.person_add_outlined),
          'title': 'Registrations',
          'route': null
        },
      ];
    case 'Community':
      return const [
        {'icon': Icon(Icons.image_outlined), 'title': 'Posts', 'route': null},
        {'icon': Icon(Icons.bookmark_outline), 'title': 'Saved', 'route': null},
      ];
    case 'Settings':
      return [
        {
          'icon':const Icon(Icons.password_outlined),
          'title': 'Change Password',
          'route': null
        },
        {'icon': Icon(userInfo!=null?Icons.logout_outlined:Icons.login_outlined), 'title':userInfo!=null?'Sign Out':'Sign In', 'route': null},
        {
          'icon':const Icon(Icons.delete_outline),
          'title': 'Delete Account',
          'route': null
        },
      ];
    default:
      return [];
  }
}
