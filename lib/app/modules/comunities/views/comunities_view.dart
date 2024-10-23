import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/comunities_controller.dart';

class ComunitiesView extends GetView<ComunitiesController> {
  const ComunitiesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ComunitiesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ComunitiesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
