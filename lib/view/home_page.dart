import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mathlator_website/slider/slider.dart';
import 'package:mathlator_website/view/DownloadPage.dart';
import 'package:spring/spring.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double Elevetion = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          title: Spring.slide(
            slideType: SlideType.slide_in_top,
            child: Text("Mathlator"),
          ),
          actions: [
            Spring.slide(
              delay: Duration(milliseconds: 500),
              slideType: SlideType.slide_in_right,
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {}, child: Text("Make An Account")),
              ),
            ),
            Spring.slide(
              delay: Duration(milliseconds: 500),
                slideType: SlideType.slide_in_right,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {}, child: Text("Store/Credits")),
                )),
            Spring.slide(
                delay: Duration(milliseconds: 1000),
                slideType: SlideType.slide_in_right,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(onPressed: () {}, child: Text("Download")),
                )),
            Spring.slide(
                delay: Duration(milliseconds: 1500),
                slideType: SlideType.slide_in_right,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(onPressed: () {}, child: Text("Donate")),
                )),
            Spring.slide(
                delay: Duration(milliseconds: 2000),
                slideType: SlideType.slide_in_right,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("👑 Premuim")),
                ))
          ],
          leading: Spring.slide(
            slideType: SlideType.slide_in_left,
            child: Image.asset("launcher_icon.png"),),
          backgroundColor: Colors.black87),
      body: ListView(children: [
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black87,
                Colors.transparent,
                Colors.transparent,
                Colors.black
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0, 0.2, 0.8, 1],
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcm0zNzNiYXRjaDEzLTA4Mi1rcHhrOW5nay5qcGc.jpg")),
            gradient: LinearGradient(
              end: const Alignment(0.0, -1),
              begin: const Alignment(0.0, 0.6),
              colors: <Color>[
                const Color(0x8A000000),
                Colors.black12.withOpacity(0.0)
              ],
            ),
          ),
          height: 800,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Align(
                      child: Text("MATHLATOR", style: TextStyle(fontSize: 100)),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Align(
                      child: Text("BEST CALCULATOR FOREVER!",
                          style: TextStyle(
                              fontSize: 25,
                              letterSpacing: 5,
                              color: Colors.white70)),
                      alignment: Alignment.centerLeft,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width >= 1280
                    ? MediaQuery.sizeOf(context).width / 3
                    : MediaQuery.sizeOf(context).width / 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spring.fadeIn(child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Align(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll(Colors.transparent),
                            elevation: MaterialStatePropertyAll(Elevetion)),
                        child: Text(
                          "DOWNLOAD",
                          style: TextStyle(fontSize: 50),
                        ),
                        onPressed: () {Get.to(DownloadPage(),transition: Transition.upToDown);},
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ),),
                  Spring.slide(slideType: SlideType.slide_in_right, child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Align(
                      child: Text("Linux | Windows | IOS",
                          style: TextStyle(
                              fontSize: 25,
                              letterSpacing: 5,
                              color: Colors.white70)),
                      alignment: Alignment.centerLeft,
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Spring.fadeIn(child:  Text(
          "MATHLATOR",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 50),
        ),),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "DISCORD BOT [demo] Added!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                    onPressed: () => null,
                    child:
                        Text("Add Discord Bot", style: TextStyle(fontSize: 30)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.purple),
                        shadowColor:
                            MaterialStatePropertyAll(Colors.purpleAccent))))
          ],
        ),
        Text(
          "___________\nWindows iOS Linux and macOS Version Added!\n___________\nDesign Added Successfuly",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Telegram bot [demo] added!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                    onPressed: () => null,
                    child:
                    Text("Add Telegram Bot", style: TextStyle(fontSize: 30)),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStatePropertyAll(Colors.blue),
                        shadowColor:
                        MaterialStatePropertyAll(Colors.blueAccent))))
          ],
        ),
        SizedBox(
          height: 180,
        ),
        Text(
          "DEVELOPERS [MEM]",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 50),
        ),
        Container(
          height: 1500,
          child: Column(
            children: [
              Text(
                "APP & WEB",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                    fontSize: 100),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.code_rounded,
                        size: 200,
                        shadows: [Shadow(color: Colors.green, blurRadius: 15)]),
                  ),
                  Center(
                    child: Spring.blink(
                      animDuration: Duration(seconds: 2),
                      child: Text(
                        "Developers : Matin Sharifian & Ermia Zahmatkesh",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
              Text(
                "DESIGNER",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                    fontSize: 100),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.mode_edit_rounded, size: 200, shadows: [
                      Shadow(color: Colors.deepPurple, blurRadius: 15)
                    ]),
                  ),
                  Center(
                    child: Spring.blink(
                      animDuration: Duration(seconds: 2),
                      child: Text(
                        "MOEIN SHARIFIAN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
              Text(
                "STAFFS",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                    fontSize: 100),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.admin_panel_settings_rounded,
                        size: 200,
                        shadows: [Shadow(color: Colors.red, blurRadius: 15)]),
                  ),
                  Center(
                    child: Spring.blink(
                      animDuration: Duration(seconds: 2),
                      child: Text(
                        "MASKEDBOYFOUND\nMASKEDBOYNOTFOUND\nJACK",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 20),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          decoration: BoxDecoration(),
        ),
        Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Image.asset("logo.png",width: 150,height: 150,)
              ),
              Text("©2023 MEM Company all rights reserved"),
              Row(
                children: [
                  IconButton(
                      iconSize: 50,
                      onPressed: () {},
                      icon: Icon(
                        Icons.discord_rounded,
                        shadows: [
                          Shadow(
                              color: Colors.purpleAccent,
                              blurRadius: 10,
                              offset: Offset(0, 0))
                        ],
                      )),
                  IconButton(
                      iconSize: 50,
                      onPressed: () {},
                      icon: Icon(
                        Icons.telegram_rounded,
                        shadows: [
                          Shadow(
                              color: Colors.lightBlue,
                              blurRadius: 10,
                              offset: Offset(0, 0))
                        ],
                      )),
                  IconButton(
                      iconSize: 50,
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.youtube,
                        shadows: [
                          Shadow(
                              color: Colors.redAccent,
                              blurRadius: 10,
                              offset: Offset(0, 0))
                        ],
                      ))
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )
            ],
          ),
          height: 300,
          decoration: BoxDecoration(color: Colors.white10),
        )
      ]),
    );
  }
}
