import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;

  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusnode = FocusNode();

    final inputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(20));
    final inputDecoration = InputDecoration(
        hintText: "End you message with a '?'",
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            final textValue = textController.value.text;
            onValue(textValue);
            textController.clear();
          },
        ));
    return TextFormField(
      onTapOutside: (event) {
        focusnode.unfocus();
      },
      focusNode: focusnode,
      decoration: inputDecoration,
      controller: textController,
      onFieldSubmitted: (value) {
        onValue(value);
        textController.clear();
        focusnode.requestFocus();
      },
    );
  }
}
