import 'package:flutter/material.dart';
import 'package:copia_insta_tent1/models/post.dart';

class Post extends StatelessWidget {
  final PostUser? post;

  const Post(
    this.post, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatar = post!.userAvatar.isEmpty
        ? const CircleAvatar(
            child: Icon(Icons.person),
          )
        : CircleAvatar(backgroundImage: NetworkImage(post!.userAvatar));

    final img = post!.imageURL.isEmpty
        ? 'https://sitechecker.pro/wp-content/uploads/2023/06/404-status-code.png'
        : post!.imageURL;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(bottom: 32),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  avatar,
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: Text(
                      post!.userName,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Image.network(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
