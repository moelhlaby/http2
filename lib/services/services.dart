import 'package:http2/models/User.dart';
import 'package:dio/dio.dart';
class UserService {
  String baseUrl = "https://jsonplaceholder.typicode.com/";
  String users = "users";

  Future<List<User>> getUsers() async {
    List<User> usersList = [];
    Dio dio = new Dio();
    Response response = await dio.get("$baseUrl"+"$users");
    var data = response.data;
    data.forEach((userItem) {
      User user = User.fromJson(userItem);
      usersList.add(user);
    });
    return usersList;
  }
}
