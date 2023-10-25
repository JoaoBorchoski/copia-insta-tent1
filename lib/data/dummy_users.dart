// ignore_for_file: constant_identifier_names

import 'package:copia_insta_tent1/models/post.dart';
import 'package:copia_insta_tent1/models/user.dart';
import 'package:copia_insta_tent1/shared/themes/config/app_constants.dart';
import 'package:http/http.dart' as http;

getImages() async {
  final response = await http.get(
    Uri.parse(AppConstants.photosApi),
    headers: {
      'Content-Type': 'application/json',
      'Authorization':
          'bv5kL4iGBl7YapBL61hUh2xNj7vNAlSV72ibBMDPZYrcoMG2hzMiPRET'
    },
  );
  print(response.body[2]);
}

const DUMMY_USERS = {
  '1': User(
    id: '1',
    name: 'Maria',
    email: 'maria@alunos.com.br',
    avatar:
        'https://cdn.pixabay.com/photo/2014/04/03/10/32/user-310807_1280.png',
  ),
  '2': User(
    id: '2',
    name: 'Rafael',
    email: 'rafael@alunos.com.br',
    avatar:
        'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_1280.png',
  ),
  '3': User(
    id: '3',
    name: 'Fernanda',
    email: 'fernanda@zymail.com.br',
    avatar:
        'https://cdn.pixabay.com/photo/2016/03/31/20/27/avatar-1295773_1280.png',
  ),
  '4': User(
    id: '4',
    name: 'Guilherme',
    email: 'guigui@abcmail.com',
    avatar:
        'https://cdn.pixabay.com/photo/2016/03/31/19/58/avatar-1295429_1280.png',
  ),
  '5': User(
    id: '5',
    name: 'Maria',
    email: 'maria@alunos.com.br',
    avatar:
        'https://cdn.pixabay.com/photo/2014/04/03/10/32/user-310807_1280.png',
  ),
  '6': User(
    id: '6',
    name: 'Rafael',
    email: 'rafael@alunos.com.br',
    avatar:
        'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_1280.png',
  ),
  '7': User(
    id: '7',
    name: 'Fernanda',
    email: 'fernanda@zymail.com.br',
    avatar:
        'https://cdn.pixabay.com/photo/2016/03/31/20/27/avatar-1295773_1280.png',
  ),
  '8': User(
    id: '8',
    name: 'Guilherme',
    email: 'guigui@abcmail.com',
    avatar:
        'https://cdn.pixabay.com/photo/2016/03/31/19/58/avatar-1295429_1280.png',
  )
};

const POSTS = {
  "1": PostUser(
      imageURL: '',
      userAvatar:
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_1280.png',
      description: 'Descrição foda hein',
      userName: 'João Borchoski'),
  "2": PostUser(
      imageURL:
          'https://cdn.pixabay.com/photo/2021/10/16/13/32/woman-6715054_1280.jpg',
      userAvatar:
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_1280.png',
      description: 'Descrição foda hein',
      userName: 'João Borchoski'),
  "3": PostUser(
      imageURL:
          'https://cdn.pixabay.com/photo/2021/07/31/18/44/ellipse-6512786_1280.jpg',
      userAvatar:
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_1280.png',
      description: 'Descrição foda hein',
      userName: 'João Borchoski'),
  "4": PostUser(
      imageURL:
          'https://cdn.pixabay.com/photo/2021/07/31/18/44/ellipse-6512786_1280.jpg',
      userAvatar:
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_1280.png',
      description: 'Descrição foda hein',
      userName: 'João Borchoski'),
  "5": PostUser(
      imageURL:
          'https://cdn.pixabay.com/photo/2021/07/31/18/44/ellipse-6512786_1280.jpg',
      userAvatar:
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_1280.png',
      description: 'Descrição foda hein',
      userName: 'João Borchoski'),
  "6": PostUser(
      imageURL:
          'https://cdn.pixabay.com/photo/2021/07/31/18/44/ellipse-6512786_1280.jpg',
      userAvatar:
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_1280.png',
      description: 'Descrição foda hein',
      userName: 'João Borchoski'),
  "7": PostUser(
      imageURL:
          'https://cdn.pixabay.com/photo/2021/10/16/13/32/woman-6715054_1280.jpg',
      userAvatar:
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_1280.png',
      description: 'Descrição foda hein',
      userName: 'João Borchoski'),
  "8": PostUser(
      imageURL:
          'https://cdn.pixabay.com/photo/2021/07/31/18/44/ellipse-6512786_1280.jpg',
      userAvatar:
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_1280.png',
      description: 'Descrição foda hein',
      userName: 'João Borchoski'),
  "9": PostUser(
      imageURL:
          'https://cdn.pixabay.com/photo/2021/07/31/18/44/ellipse-6512786_1280.jpg',
      userAvatar:
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_1280.png',
      description: 'Descrição foda hein',
      userName: 'João Borchoski'),
  "10": PostUser(
      imageURL:
          'https://cdn.pixabay.com/photo/2021/07/31/18/44/ellipse-6512786_1280.jpg',
      userAvatar:
          'https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_1280.png',
      description: 'Descrição foda hein',
      userName: 'João Borchoski'),
};
