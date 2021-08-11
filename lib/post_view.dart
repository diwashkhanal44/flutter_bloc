import 'package:bloc_practice/posts_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'post.dart';

class PostView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('posts')),
        ),
        body: BlocBuilder<PostsCubit, List<Post>>(builder: (context, posts) {
          context.read<PostsCubit>().getPosts();
          if (posts.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(itemBuilder: (context, index) {
            return Card(
              child: ListTile(title: Text((posts[index].title).toString())),
            );
          });
        }));
  }
}
