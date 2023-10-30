// ignore_for_file: unnecessary_null_comparison

import 'package:copia_insta_tent1/components/utils/post.dart';
import 'package:copia_insta_tent1/data/repositories/store.dart';
import 'package:copia_insta_tent1/models/post.dart';
import 'package:flutter/material.dart';

class PostsHome extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;

  carregaPost() async {
    var posts = await Store.getMap('posts');
    return posts['posts'];
  }

  const PostsHome({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: carregaPost(),
      builder: (context, snapshot) {
        List variavel = (snapshot.data ?? []) as List;

        return ListView.builder(
          controller: controller,
          itemCount: variavel.length,
          itemBuilder: (context, index) {
            var postUsar = PostUser(
              imageURL: variavel[index]['imageURL'],
              user: UserPost(
                  avatar: variavel[index]['user']['avatar'] ??
                      'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png',
                  email: variavel[index]['user']['email'],
                  id: variavel[index]['user']['id'],
                  name: variavel[index]['user']['name'],
                  password: variavel[index]['user']['password']),
              description: variavel[index]['description'],
              createdt: variavel[index]['created_at'],
            );
            return Post(postUsar);
          },
        );
      },
    );
  }
}
