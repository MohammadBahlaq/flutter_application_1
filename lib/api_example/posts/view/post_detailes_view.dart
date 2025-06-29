import 'package:flutter/material.dart';
import 'package:flutter_application_1/api_example/posts/controller/post_controller.dart';
import 'package:flutter_application_1/core/enums.dart';
import 'package:provider/provider.dart';

class PostDetailesView extends StatelessWidget {
  const PostDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    final postCrt = context.read<PostController>();

    return Scaffold(
      appBar: AppBar(title: Text('Comments')),
      body: Selector<PostController, ApiStatus>(
        selector: (p0, p1) => p1.apiStatusComments,
        builder: (_, apiStatusComments, _) {
          if (apiStatusComments == ApiStatus.loading) {
            return LinearProgressIndicator();
          }

          if (apiStatusComments == ApiStatus.fail) {
            return Center(
              child: Text(
                'Somthing went wrong\nplease try again',
                textAlign: TextAlign.center,
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.all(10),
            itemCount: postCrt.comments.length,
            separatorBuilder: (context, index) => SizedBox(height: 10),
            itemBuilder: (_, index) {
              return Card(
                color: Colors.black.withAlpha(10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        postCrt.comments[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(postCrt.comments[index].body),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
