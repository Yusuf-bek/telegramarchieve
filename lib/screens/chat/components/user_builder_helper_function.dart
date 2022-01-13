import 'package:telegramarchieve/database/base.dart';

userBuilderHelper(int index) {
  for (int i = 0; i < chatPageUsers.length; i++) {
    if (chatPageUsers[i] == chatPageUsers[index]) {
      archievedChatPageUsers.add(chatPageUsers[i]);
      chatPageUsers.removeAt(i);
    }
  }
}
