import 'package:flutter/material.dart';
import 'package:flutter_application_1/api_example/posts/model/comment_model.dart';
import 'package:flutter_application_1/api_example/posts/model/create_post_model.dart';
import 'package:flutter_application_1/api_example/posts/model/post_model.dart';
import 'package:flutter_application_1/core/api_service.dart';
import 'package:flutter_application_1/core/end_points.dart';
import 'package:flutter_application_1/core/enums.dart';

class PostController with ChangeNotifier {
  List<PostModel> posts = [];
  ApiStatus apiStatusPosts = ApiStatus.initial;

  ApiStatus apiStatusComments = ApiStatus.initial;
  List<CommentModel> comments = [];

  ApiStatus apiStatusCreatePost = ApiStatus.initial;

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

  Future<void> getComments(int postId) async {
    apiStatusComments = ApiStatus.loading;
    notifyListeners();

    try {
      List list = await ApiService.get(
        EndPoints.comments,
        parameters: {"postId": "$postId"},
      );

      comments = list.map((e) => CommentModel.fromJson(e)).toList();

      apiStatusComments = ApiStatus.success;
    } catch (e) {
      apiStatusComments = ApiStatus.fail;
    }

    notifyListeners();
  }

  Future<void> createPost(
    NewPostModel newPost,
    Function(String error) onFail,
    VoidCallback onSuccess,
  ) async {
    apiStatusCreatePost = ApiStatus.loading;
    notifyListeners();

    try {
      Map data = await ApiService.post(EndPoints.posts, body: newPost.toJson());

      if (data.isEmpty) {
        throw "Somthing went wrong please try again";
      }

      apiStatusCreatePost = ApiStatus.success;
      onSuccess();
    } catch (e) {
      apiStatusCreatePost = ApiStatus.fail;
      onFail(e.toString());
    }

    notifyListeners();
  }
}
