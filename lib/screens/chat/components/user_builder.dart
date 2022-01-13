import 'package:flutter/material.dart';

import 'package:telegramarchieve/screens/chat/components/user_builder_helper_function.dart';

userCardBuilder(
  BuildContext context, {
  @required String? title,
  @required String? subtitle,
  required index,
}) {
  return Dismissible(
    key: UniqueKey(),
    onDismissed: (direction) {
      userBuilderHelper(index);
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
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05),
            ),
            subtitle: Text(subtitle!),
          ),
        ),
      ),
    ),
  );
  // : SizedBox();
}
