// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'package:copia_insta_tent1/components/utils/post.dart';
import 'package:copia_insta_tent1/data/repositories/store.dart';
import 'package:copia_insta_tent1/models/post.dart';
import 'package:copia_insta_tent1/presentation/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostsHome extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;

  const PostsHome({super.key, this.controller});

  @override
  State<PostsHome> createState() => _PostsHomeState();
}

class _PostsHomeState extends State<PostsHome> {
  late List _cards;

  @override
  void initState() {
    super.initState();
    _cards = [];
    _fetchData();
  }

  Future<void> _fetchData() async {
    List postList = [];
    await Provider.of<Users>(context, listen: false)
        .carregaPost()
        .then((value) {
      postList = value;
      setState(() {
        _cards.addAll(postList);
      });
    }).catchError((error) {
      print(error);
    });
  }

  carregaPost() async {
    var posts = await Store.getMap('posts');
    return posts['posts'];
  }

  Widget projectedWidget() {
    return ListView.builder(
      controller: widget.controller,
      itemCount: _cards.length,
      itemBuilder: ((context, index) {
        var postUsar = PostUser(
          imageURL: _cards[index]['imageURL'],
          user: UserPost(
              avatar: _cards[index]['user']['avatar'] ??
                  'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png',
              email: _cards[index]['user']['email'],
              id: _cards[index]['user']['id'],
              name: _cards[index]['user']['name'],
              password: _cards[index]['user']['password']),
          description: _cards[index]['description'],
          createdt: _cards[index]['created_at'],
        );
        return Post(postUsar);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return projectedWidget();
  }
}
