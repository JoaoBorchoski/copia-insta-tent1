import 'package:copia_insta_tent1/data/dummy_users.dart';
import 'package:copia_insta_tent1/models/post.dart';
import 'package:flutter/material.dart';

class Posts with ChangeNotifier {
  final Map<String, PostUser> _items = {...POSTS};

  List<PostUser> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  PostUser byIndex(int i) {
    return _items.values.elementAt(i);
  }
}
