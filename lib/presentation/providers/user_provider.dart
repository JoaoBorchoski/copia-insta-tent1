import 'dart:convert';
import 'package:copia_insta_tent1/data/dummy_users.dart';
import 'package:copia_insta_tent1/models/user.dart';
import 'package:copia_insta_tent1/shared/themes/config/app_constants.dart';
import 'package:copia_insta_tent1/shared/themes/config/exceptions/auth_exeption.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  Future<String> login(String login, String password) async {
    final response = await _authenticate(login, password, 'signInWithPassword');
    return response;
  }

  Future<String> _authenticate(
    String login,
    String password,
    String urlFragment,
  ) async {
    const url = '${AppConstants.apiUrl}/sessions';
    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'login': login,
        'password': password,
      }),
    );

    final body = jsonDecode(response.body);

    String defaultMessage = 'Fale com o Administrador.';

    if (response.statusCode != 200) {
      throw AuthException(body['message']);
    } else {
      if (body['user']['isBlocked'] != null) {
        throw AuthException(
            'Usuário bloqueado!\n${body['user']['blockReasonId'] != null ? body['user']['blockReasonId']['description'] : defaultMessage}');
      }
      if (body['user']['isDisabled'] != null) {
        throw AuthException('Usuário desabilitado!\n$defaultMessage');
      }

      notifyListeners();
    }

    return body['user']['mustChangePassword'] ?? '';
  }
}
