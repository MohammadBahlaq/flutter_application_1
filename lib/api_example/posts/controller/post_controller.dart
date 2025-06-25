import 'package:flutter/material.dart';
import 'package:flutter_application_1/api_example/posts/model/post_model.dart';
import 'package:flutter_application_1/core/api_service.dart';
import 'package:flutter_application_1/core/end_points.dart';
import 'package:flutter_application_1/core/enums.dart';

class PostController with ChangeNotifier {
  List<PostModel> posts = [];
  ApiStatus apiStatusPosts = ApiStatus.initial;

  Future<void> getPosts() async {
    apiStatusPosts = ApiStatus.loading;
    notifyListeners();

    try {
      List list = await ApiService.get(EndPoints.posts);
      posts = list.map((e) => PostModel.fromJson(e)).toList();

      apiStatusPosts = ApiStatus.success;
    } catch (e) {
      apiStatusPosts = ApiStatus.fail;
    }

    notifyListeners();

    // for (var element in list) {
    // posts.add(PostModel.fromJson(element));

    // posts.add(
    //   PostModel(
    //     userId: element['userId'],
    //     id: element['id'],
    //     title: element['title'],
    //     body: element['body'],
    //   ),
    // );
    // }
  }
}
