import "package:flutter/material.dart";
import "package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart";

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://static.wikia.nocookie.net/sobre/images/6/63/Gasai_Yuno.png/revision/latest?cb=20140916002223&path-prefix=es")),
        ),
        title: const Text("Mi amor 🥰"),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Expanded(
              child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return const MyMessageBubble();
            },
          )),
        ]),
      ),
    );
  }
}
