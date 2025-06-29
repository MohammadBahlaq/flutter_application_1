import 'package:flutter/material.dart';
import 'package:flutter_application_1/api_example/posts/controller/post_controller.dart';
import 'package:flutter_application_1/api_example/posts/model/create_post_model.dart';
import 'package:provider/provider.dart';
import 'package:short_navigation/short_navigation.dart';

class CreatePostView extends StatefulWidget {
  const CreatePostView({super.key});

  @override
  State<CreatePostView> createState() => _CreatePostViewState();
}

class _CreatePostViewState extends State<CreatePostView> {
  late TextEditingController titleController;
  late TextEditingController bodyController;

  @override
  void initState() {
    titleController = TextEditingController();
    bodyController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final postCrt2 = context.watch<PostController>(); //true
    final postCrt3 = Provider.of<PostController>(context, listen: true);

    final postCrt = context.read<PostController>(); //false
    final postCrt4 = Provider.of<PostController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: Text('Create new post')),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: bodyController,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Create'),
              onPressed: () {
                GoMessenger.dialog(
                  AlertDialog(
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Loading....'),
                        CircularProgressIndicator(),
                      ],
                    ),
                  ),
                );

                postCrt.createPost(
                  NewPostModel(
                    title: titleController.text,
                    body: bodyController.text,
                    userId: '1',
                  ),
                  (error) {
                    Go.back();
                    GoMessenger.dialog(AlertDialog(content: Text(error)));
                  },
                  () {
                    Go.back();
                    GoMessenger.dialog(AlertDialog(content: Text('Done')));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
