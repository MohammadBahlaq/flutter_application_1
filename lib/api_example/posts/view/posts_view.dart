import 'package:flutter/material.dart';
import 'package:flutter_application_1/api_example/posts/controller/post_controller.dart';
import 'package:flutter_application_1/api_example/posts/view/create_post_view.dart';
import 'package:flutter_application_1/api_example/posts/view/post_detailes_view.dart';
import 'package:flutter_application_1/core/enums.dart';
import 'package:provider/provider.dart';
import 'package:short_navigation/short_navigation.dart';

class PostsView extends StatelessWidget {
  const PostsView({super.key});

  @override
  Widget build(BuildContext context) {
    final postCrt = context.read<PostController>();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: () {
          GoSlide.to(CreatePostView());
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Posts'),
        elevation: 5,
        scrolledUnderElevation: 20,
        shadowColor: Colors.purple,
        backgroundColor: Colors.blue,
        surfaceTintColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Selector<PostController, ApiStatus>(
        selector: (p0, p1) => p1.apiStatusPosts,
        builder: (_, apiStatusPosts, _) {
          if (apiStatusPosts == ApiStatus.loading) {
            return Center(child: CircularProgressIndicator());
          }

          if (apiStatusPosts == ApiStatus.fail) {
            return Center(child: Text('Somthing went wrong\nPlease try again'));
          }

          return ListView.separated(
            padding: const EdgeInsets.all(10),
            itemCount: postCrt.posts.length,
            separatorBuilder: (_, index) => SizedBox(height: 10),
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {
                  // Go.to(
                  //   ChangeNotifierProvider.value(
                  //     value: postCrt,
                  //     child: PostDetailesView(),
                  //   ),
                  // );

                  Go.to(PostDetailesView());

                  postCrt.getComments(postCrt.posts[index].id);
                },
                child: Card(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          postCrt.posts[index].title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(postCrt.posts[index].body),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  // @override
  // Widget build(BuildContext _) {
  //   return ChangeNotifierProvider(
  //     create: (_) => PostController()..getPosts(),
  //     child: Builder(
  //       builder: (context) {
  //         final postCrt = context.read<PostController>();
  //         return Scaffold(
  //           floatingActionButton: FloatingActionButton(
  //             backgroundColor: Colors.blue,
  //             foregroundColor: Colors.white,
  //             onPressed: () {
  //               GoSlide.to(CreatePostView());
  //             },
  //             child: Icon(Icons.add),
  //           ),
  //           appBar: AppBar(
  //             title: Text('Posts'),
  //             elevation: 5,
  //             scrolledUnderElevation: 20,
  //             shadowColor: Colors.purple,
  //             backgroundColor: Colors.blue,
  //             surfaceTintColor: Colors.red,
  //             foregroundColor: Colors.white,
  //           ),
  //           body: Selector<PostController, ApiStatus>(
  //             selector: (p0, p1) => p1.apiStatusPosts,
  //             builder: (_, apiStatusPosts, _) {
  //               if (apiStatusPosts == ApiStatus.loading) {
  //                 return Center(child: CircularProgressIndicator());
  //               }
  //               if (apiStatusPosts == ApiStatus.fail) {
  //                 return Center(
  //                   child: Text('Somthing went wrong\nPlease try again'),
  //                 );
  //               }
  //               return ListView.separated(
  //                 padding: const EdgeInsets.all(10),
  //                 itemCount: postCrt.posts.length,
  //                 separatorBuilder: (_, index) => SizedBox(height: 10),
  //                 itemBuilder: (_, index) {
  //                   return GestureDetector(
  //                     onTap: () {
  //                       // Go.to(
  //                       //   ChangeNotifierProvider.value(
  //                       //     value: postCrt,
  //                       //     child: PostDetailesView(),
  //                       //   ),
  //                       // );
  //                       Go.to(PostDetailesView());
  //                       postCrt.getComments(postCrt.posts[index].id);
  //                     },
  //                     child: Card(
  //                       color: Colors.grey[200],
  //                       child: Padding(
  //                         padding: const EdgeInsets.all(8.0),
  //                         child: Column(
  //                           children: [
  //                             Text(
  //                               postCrt.posts[index].title,
  //                               style: TextStyle(fontWeight: FontWeight.bold),
  //                             ),
  //                             SizedBox(height: 5),
  //                             Text(postCrt.posts[index].body),
  //                           ],
  //                         ),
  //                       ),
  //                     ),
  //                   );
  //                 },
  //               );
  //             },
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }
}
