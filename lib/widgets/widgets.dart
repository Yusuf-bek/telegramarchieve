import 'package:flutter/material.dart';
import 'package:telegramarchieve/database/base.dart';



 chatCard(
    BuildContext context, {
    @required String? title,
    @required String? subtitle,
    required index,
  }) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (direction) {
        
        chatPageUsers.removeAt(index);
        
      },
      child: Card(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.24,
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.09,
              ),
              title: Text(
                title!,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
              subtitle: Text(subtitle!),
            ),
          ),
        ),
      ),
    );
  }
