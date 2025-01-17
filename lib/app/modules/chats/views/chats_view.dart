import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chats_controller.dart';

class ChatsView extends GetView<ChatsController> {
  const ChatsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ChatsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
