import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class channelWidget extends StatelessWidget {
  final String profile;
  final String nama;
  final String content;
  const channelWidget(
      {super.key,
      required this.profile,
      required this.nama,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
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
            child: Container(
              width: 270,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    nama,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    content,
                    style: TextStyle(color: Colors.white),
                    maxLines: null,
                    overflow: TextOverflow.visible,
                    softWrap: true,
                  ),
                  Spacer(),
                  
                ],
              ),
            ),
          ),
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                height: 35,
                child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Follow",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
