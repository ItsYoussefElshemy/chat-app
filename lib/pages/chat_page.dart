import 'package:chat/constance.dart';
import 'package:chat/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatPage extends StatelessWidget {
  static String id = 'ChatPage';
  CollectionReference messages = FirebaseFirestore.instance.collection(
    kMessagesCollections,
  );

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: messages.get(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data!.docs[1]['message']);
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: kPrimaryColor,
              title: Text('Chat', style: TextStyle(color: Colors.white)),
              centerTitle: true,
            ),

            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ChatBubble();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: controller,
                    onSubmitted: (data) {
                      messages.add({'message': data});
                      controller.clear();
                    },
                    decoration: InputDecoration(
                      hintText: 'Send Message',
                      suffixIcon: Icon(Icons.send, color: kPrimaryColor),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: kPrimaryColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: kPrimaryColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Text('loading...');
        }
      },
    );
  }
}
