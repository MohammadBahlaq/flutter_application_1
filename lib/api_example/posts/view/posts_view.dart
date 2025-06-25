import 'package:flutter/material.dart';

class PostsView extends StatelessWidget {
  const PostsView({super.key});

  @override
  Widget build(BuildContext _) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts')),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: 100,
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('title', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('body'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
