import 'package:chat/constance.dart';

class Message {
  final String message;

  Message(this.message);

  factory Message.fromJason(jasonData) {
    return Message(jasonData[kMessage]);
  }
}
