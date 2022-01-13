import 'package:flutter/material.dart';
import 'package:telegramarchieve/database/base.dart';

archieveChatCard(
  BuildContext context,
) {
  return archievedChatPageUsers.length > 0
      ? Card(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/archieved');
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.24,
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.09,
                  ),
                  title: Text(
                    "Archieved",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05),
                  ),
                  subtitle: Text("count arch chats"),
                ),
              ),
            ),
          ),
        )
      : SizedBox();
}
