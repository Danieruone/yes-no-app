import 'package:flutter/material.dart';

void main() => runApp(const MessageFieldBox());

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

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
            print('Button value: $textValue');
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
        print('Submit value $value');
        textController.clear();
        focusnode.requestFocus();
      },
    );
  }
}
