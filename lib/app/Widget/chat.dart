
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class chatWidget extends StatelessWidget {
  final String profile;
  final String nama;
  final String content;
  const chatWidget(
      {super.key,
      required this.profile,
      required this.nama,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 80,
      child: Row(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: ExactAssetImage("assets/images/${profile}.png"),
            radius: 35,
          ),
          SizedBox(
            width: 10,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width * 0.7,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text(
                  nama,
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                ),
                Text(
                  content,
                  style: TextStyle(color: Colors.white),
                  maxLines: null,
                  overflow: TextOverflow.visible,
                  softWrap: true,

                ),
  
              ],
            ),
          )
        ],
      ),
    );
  }
}
