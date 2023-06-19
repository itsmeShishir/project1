import 'package:parts/objectbox.g.dart';
import 'package:path_provider/path_provider.dart';
import '../model/user.dart';
import 'dart:io';

class ObjectBoxInstance {
 late final Store _store; //This database
  late final Box<User> _user;
  // Constructor
  ObjectBoxInstance(this._store) {
    _user = Box<User>(_store);
  }
  //---------------- Student Queries ----------------
  int addUser(User user) {
    return _user.put(user);
  }

  List<User> getAllUser() {
    return _user.getAll();
  }

  // Login student
  User? loginUser(String username, String password) {
    return _user
        .query(User_.username.equals(username) &
            User_.password.equals(password))
        .build()
        .findFirst();
  }
}
