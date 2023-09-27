import 'package:flutter/material.dart';

import '../widget/chat_widget.dart';
class NotesPage extends StatefulWidget {
   NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width*0.04),
      child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemBuilder: (ctx, i) {
                    return  ChatWidget();//ChatWidget(model: list[i]);
                  },
                  itemCount: 5,
                ),
              ),
              bottomRow(),
            ],
          ),
    ),

    );
  }

  var controller = TextEditingController();

  Widget bottomRow() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12,
              ),
              color: Colors.green,
            ),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Type a message",
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () async {
            var text = controller.text;
            if (text.isEmpty) {
              return;
            }
            controller.text = "";


              // setState(() {
              //   list.add(ChatModel(text, true));
              // });
              //
              // var res = await generateResponse("$text\n Please don't add any unreadable word or letter.");
              //
              // setState(() {
              //   list.add(ChatModel(res, false));
              // });
            },
            child:
            const Icon(
              Icons.send,
              color: Colors.white,
            ),
              ),
          ]
    );
  }
}
