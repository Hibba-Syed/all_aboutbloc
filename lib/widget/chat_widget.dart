
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
   ChatWidget({ Key? key}) : super(key: key);


  bool isMine = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Align(
      alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: isMine ? Colors.blue: Colors.white,
          borderRadius: BorderRadius.circular(12,),
        ),
        constraints: BoxConstraints(
          maxWidth: width * 0.7,
          minHeight: 0,
        ),
        // child: SelectableTextWidget(model.message.trim(),
        //   style: TextStyle(
        //     color: !model.isMine ? Colors.black : Colors.white,
        //   ),
        // ),
      ),
    );
  }

}
