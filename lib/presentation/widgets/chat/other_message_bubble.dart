import 'package:flutter/material.dart';

class OtherMessageBubble extends StatelessWidget {
  const OtherMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Quis sunt laborum est adipisicing pariatur eiusmod esse dolore irure pariatur nostrud magna amet. Esse anim veniam cupidatat quis duis fugiat. Sint ex Lorem pariatur laboris velit anim ut occaecat. Eiusmod Lorem Lorem fugiat ex. Occaecat cupidatat irure ipsum veniam velit mollit anim magna esse.Et aliquip aliqua pariatur ea qui sint fugiat deserunt. Est cillum amet qui voluptate consequat nisi esse duis. Eu cillum velit consequat in dolor aute pariatur in officia. Exercitation ut ipsum sint nulla in veniam sunt.",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: _ImageBubble(),
        )
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          "https://yesno.wtf/assets/yes/3-422e51268d64d78241720a7de52fe121.gif",
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover),
    );
  }
}
