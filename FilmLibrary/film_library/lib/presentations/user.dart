import 'package:film_library/presentations/annotation.dart';

class User{
  String name;
  String email;
  String password;
  bool currentUser;
  List<Annotation> userHistory;
  List<Annotation> favourity;

  User({
    required this.name,
    required this.email,
    required this.password,
    this.currentUser = false,
    required this.userHistory,
    required this.favourity,
    });
}