import 'package:flutter/material.dart';
import 'package:telegramarchieve/database/base.dart';
import 'package:telegramarchieve/screens/archieve/components/archieved_user_builder.dart';

class ArchieveChats extends StatefulWidget {
  const ArchieveChats({Key? key}) : super(key: key);

  @override
  State<ArchieveChats> createState() => _ArchieveChatsState();
}

class _ArchieveChatsState extends State<ArchieveChats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Archieved Chats"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.88,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return archiveUserBuilder(
                  context,
                  index: index,
                  title: archievedChatPageUsers[index].name,
                  subtitle: archievedChatPageUsers[index].subtitle,
                );
              },
              itemCount: archievedChatPageUsers.length,
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          
        });
      },),
    );
  }
}
