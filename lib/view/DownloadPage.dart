import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spring/spring.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black87,
      appBar: AppBar(
          centerTitle: true,
          title: Spring.slide(
            slideType: SlideType.slide_in_top,
            child: Text("Mathlator Download"),
          ),
          leading: Spring.slide(
            slideType: SlideType.slide_in_left,
            child: Image.asset("launcher_icon.png"),
          ),
          backgroundColor: Colors.black87),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.all(Radius.circular(15))),
                height: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Spring.fadeIn(
                            child: Icon(
                          Icons.desktop_windows,
                          size: 150,
                        )),
                        Text("Download For Windows"),
                        ElevatedButton(onPressed: () {
                          Get.snackbar("Hey!","Your Download Will start Soon",backgroundColor: Colors.blue);
                        }, child: Text("Click to DOWNLOAD"),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.transparent)),)
                      ],
                    ),
                    Column(
                      children: [
                        Spring.fadeIn(
                            child: Icon(
                          Icons.apple_rounded,
                          size: 150,
                        )),
                        Text("Download For iOS"),
                        ElevatedButton(onPressed: () {
                          Get.snackbar("Hey!","Your Download Will start Soon",backgroundColor: Colors.blue);
                        }, child: Text("Click to DOWNLOAD"),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.transparent)),)
                      ],
                    ),
                    Column(
                      children: [
                        Spring.fadeIn(
                            child: Icon(
                          Icons.laptop_mac_rounded,
                          size: 150,
                        )),
                        Text("Download For macOS"),
                        ElevatedButton(onPressed: () {
                          Get.snackbar("Hey!","Your Download Will start Soon",backgroundColor: Colors.blue);
                        }, child: Text("Click to DOWNLOAD"),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.transparent)),)
                      ],
                    ),
                    Column(
                      children: [
                        Spring.fadeIn(
                            child: Icon(
                          Icons.person,
                          size: 150,
                        )),
                        Text("Download For linux"),
                        ElevatedButton(onPressed: () {
                          Get.snackbar("Hey!","Your Download Will start Soon",backgroundColor: Colors.blue);
                        }, child: Text("Click to DOWNLOAD"),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.transparent)),)
                      ],
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
