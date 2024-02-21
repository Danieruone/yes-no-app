import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: "Hola", fromWho: FromWho.me),
    Message(text: "Cómo estás?", fromWho: FromWho.me),
    Message(text: "Qué onda", fromWho: FromWho.other)
  ];

  Future<void> sendMessage(String text) async {
    // TODO: implement method
  }
}
