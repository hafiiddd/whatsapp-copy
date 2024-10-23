import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whatsapp/app/Widget/Status.dart';
import 'package:whatsapp/app/Widget/channel.dart';
import 'package:whatsapp/app/Widget/chat.dart';

import '../controllers/status_controller.dart';

class StatusView extends GetView<StatusController> {
  const StatusView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 100,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Updates',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    'Status',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Spacer(),
                  Icon(
                    Icons.camera,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dataStatus.length,
                    itemBuilder: (context, index) {
                      return statusWidget(
                          nama: dataStatus[index]["nama"],
                          images: dataStatus[index]["image"]);
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    'Channels',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Spacer(),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Explore",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                
                height: dataChanel.length * 88,
                child: ListView.builder(
                    
                    itemCount: dataChanel.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          chatWidget(
                              profile: dataChanel[index]["profile"],
                              nama: dataChanel[index]["nama"],
                              content: dataChanel[index]["content"]),
                          if (index == dataChanel.length-1)
                           SizedBox()
                          else
                            Divider(
                              thickness: 0.25,
                              indent: 80,
                            )
                        ],
                      );
                    }),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    'Find Channels to follow',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                
                height: dataChanel.length * 120,
                child: ListView.builder(
                    
                    itemCount: dataNewChannel.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          channelWidget(
                              profile: dataNewChannel[index]["profile"],
                              nama: dataNewChannel[index]["nama"],
                              content: dataNewChannel[index]["content"]),
                          if (index == dataChanel.length-1)
                           SizedBox()
                          else
                            Divider(
                              thickness: 0.25,
                              indent: 80,
                            )
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> dataChanel = [
  {
    "profile": "whatsapp",
    "nama": "Mas Narji",
    "content":
        "blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla"
  },
  {
    "profile": "whatsapp",
    "nama": "Mas Narji",
    "content":
        "ablablablablablablablablablablablablablablablablablablablablablablablablablablablabla"
  },
  
  
];
List<Map<String, dynamic>> dataNewChannel = [
  {
    "profile": "whatsapp",
    "nama": "kelompok 1",
    "content":
        "blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla"
  },
  {
    "profile": "whatsapp",
    "nama": "kelompok 2",
    "content":
        "ablablablablablablablablablablablablablablablablablablablablablablablablablablablabla"
  },
  
  
];
List<Map<String, dynamic>> dataStatus = [
  {
    "image": "whatsapp",
    "nama": "Mas Narji",
  },
  {
    "image": "whatsapp",
    "nama": "gina",
  },
  {
    "image": "whatsapp",
    "nama": "Mas Narji",
  },
  {
    "image": "whatsapp",
    "nama": "gina",
  },
  {
    "image": "whatsapp",
    "nama": "Mas Narji",
  },
  {
    "image": "whatsapp",
    "nama": "gina",
  },
  {
    "image": "whatsapp",
    "nama": "Mas Narji",
  },
  {
    "image": "whatsapp",
    "nama": "gina",
  },
];
