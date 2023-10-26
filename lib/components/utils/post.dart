import 'package:copia_insta_tent1/shared/themes/app_colors.dart';
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
    return Container(
      decoration: BoxDecoration(
        color: AppColors.body.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16, right: 8, left: 8),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Text(
                    '${post!.userName}:  ',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Container(
                    child: Text(
                      post!.description,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
