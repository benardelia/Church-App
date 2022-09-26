import 'package:church/pages/message.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  State<ChatBody> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ChatBody> {
  bool isMe = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.name),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => 
                   Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadiusDirectional.circular(10)),
                    child: Message(isMe: isMe, message: 'hello word',),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      
                      decoration: InputDecoration(
                        hintText: 'Type message...',
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    )
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.send))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
