import 'package:flutter/material.dart';
import 'package:flutter_application_1/info.dart';
import 'package:flutter_application_1/widgits/my_message_card.dart';
import 'package:flutter_application_1/widgits/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            return MyMessegeCard(
                message: messages[index]['text'].toString(),
                date: messages[index]['date'].toString());
          }
          return SenderMessegeCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['date'].toString());
        });
  }
}
