import 'package:flutter/material.dart';
import 'package:telegramarchieve/database/base.dart';
import 'package:telegramarchieve/screens/chat/components/archieved_widget.dart';
import 'package:telegramarchieve/screens/chat/components/user_builder.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Chats"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            archieveChatCard(
              context,
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return userCardBuilder(
                    context,
                    index: index,
                    title: chatPageUsers[index].name,
                    subtitle: chatPageUsers[index].subtitle,
                  );
                },
                itemCount: chatPageUsers.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
      ),
    );
  }
}
