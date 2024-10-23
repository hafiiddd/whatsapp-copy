import 'package:flutter/material.dart';

class statusWidget extends StatelessWidget {
  final String nama;
  final String images;
  const statusWidget({super.key, required this.nama, required this.images});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: ExactAssetImage("assets/images/${images}.png"),
            radius: 30,
          ),
          Text(nama,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}