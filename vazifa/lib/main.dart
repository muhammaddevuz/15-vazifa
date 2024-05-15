import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vazifa/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[400],
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(top: 80, left: 40, right: 25),
          child: Column(
            children: [
              const TextField(
                cursorColor: Colors.white,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 30),
              Text(
                "$countx : $county",
                style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  button(0),
                  const SizedBox(width: 10),
                  Container(
                    height: 120,
                    width: 5,
                    color: Colors.amber[300],
                  ),
                  const SizedBox(width: 10),
                  button(1),
                  const SizedBox(width: 10),
                  Container(
                    height: 120,
                    width: 5,
                    color: Colors.amber[300],
                  ),
                  const SizedBox(width: 10),
                  button(2),
                ],
              ),
              Container(
                height: 5,
                width: 380,
                color: Colors.amber[300],
              ),
              Row(
                children: [
                  button(3),
                  const SizedBox(width: 10),
                  Container(
                    height: 120,
                    width: 5,
                    color: Colors.amber[300],
                  ),
                  const SizedBox(width: 10),
                  button(4),
                  const SizedBox(width: 10),
                  Container(
                    height: 120,
                    width: 5,
                    color: Colors.amber[300],
                  ),
                  const SizedBox(width: 10),
                  button(5),
                ],
              ),
              Container(
                height: 5,
                width: 380,
                color: Colors.amber[300],
              ),
              Row(
                children: [
                  button(6),
                  const SizedBox(width: 10),
                  Container(
                    height: 120,
                    width: 5,
                    color: Colors.amber[300],
                  ),
                  const SizedBox(width: 10),
                  button(7),
                  const SizedBox(width: 10),
                  Container(
                    height: 120,
                    width: 5,
                    color: Colors.amber[300],
                  ),
                  const SizedBox(width: 10),
                  button(8),
                ],
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  setState(() {
                    checkxy = true;
                    checkstop = false;
                    countx = 0;
                    county = 0;
                    for (var i = 0; i < box.length; i++) {
                      box[i]['check'] = true;
                      box[i]['item_box'] = text;
                    }
                  });
                },
                child: Container(
                  color: Colors.cyan[900],
                  height: 65,
                  width: 300,
                  child: const Center(
                    child: Text(
                      "NEW GAME",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  setState(() {
                    checkxy = true;
                    checkstop = false;
                    for (var i = 0; i < box.length; i++) {
                      box[i]['check'] = true;
                      box[i]['item_box'] = text;
                    }
                  });
                },
                child: Container(
                  color: Colors.cyan[900],
                  height: 65,
                  width: 300,
                  child: const Center(
                    child: Text(
                      "RESET GAME",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget button(int i) {
    return SizedBox(
      height: 110,
      width: 110,
      child: Center(
        child: InkWell(
          onTap: () async {
            setState(() {
              if (checkstop) {
                return;
              }
              if (box[i]['check'] && checkxy) {
                checkxy = false;
                box[i]['check'] = false;
                box[i]['item_box'] = itemx;
              }
              if (box[0]['item_box'] == itemx &&
                  box[1]['item_box'] == itemx &&
                  box[2]['item_box'] == itemx) {
                checkstop = true;
                countx++;
                for (var j = 0; j < box.length; j++) {
                  box[j]["check"] = false;
                }
              } else if (box[3]['item_box'] == itemx &&
                  box[4]['item_box'] == itemx &&
                  box[5]['item_box'] == itemx) {
                countx++;
                checkstop = true;
                for (var j = 0; j < box.length; j++) {
                  box[j]["check"] = false;
                }
              } else if (box[6]['item_box'] == itemx &&
                  box[7]['item_box'] == itemx &&
                  box[8]['item_box'] == itemx) {
                countx++;
                checkstop = true;
                for (var j = 0; j < box.length; j++) {
                  box[j]["check"] = false;
                }
              } else if (box[0]['item_box'] == itemx &&
                  box[3]['item_box'] == itemx &&
                  box[6]['item_box'] == itemx) {
                countx++;
                checkstop = true;
                for (var j = 0; j < box.length; j++) {
                  box[j]["check"] = false;
                }
              } else if (box[1]['item_box'] == itemx &&
                  box[4]['item_box'] == itemx &&
                  box[7]['item_box'] == itemx) {
                countx++;
                checkstop = true;
                for (var j = 0; j < box.length; j++) {
                  box[j]["check"] = false;
                }
              } else if (box[2]['item_box'] == itemx &&
                  box[5]['item_box'] == itemx &&
                  box[8]['item_box'] == itemx) {
                countx++;
                checkstop = true;
                for (var j = 0; j < box.length; j++) {
                  box[j]["check"] = false;
                }
              } else if (box[0]['item_box'] == itemx &&
                  box[4]['item_box'] == itemx &&
                  box[8]['item_box'] == itemx) {
                countx++;
                checkstop = true;
                for (var j = 0; j < box.length; j++) {
                  box[j]["check"] = false;
                }
              } else if (box[2]['item_box'] == itemx &&
                  box[4]['item_box'] == itemx &&
                  box[6]['item_box'] == itemx) {
                countx++;
                checkstop = true;
                for (var j = 0; j < box.length; j++) {
                  box[j]["check"] = false;
                }
              }
            });
            await Future.delayed(const Duration(seconds: 1));
            if (!checkxy && !checkstop) {
              setState(() {
                bool checkbox = false;
                for (var i = 0; i < box.length; i++) {
                  if (box[i]['check'] == true) {
                    checkbox = true;
                  }
                }
                if (!checkbox) {
                  return;
                }
                int a = random.nextInt(9);
                while (true) {
                  if (box[a]['check']) {
                    checkxy = true;
                    box[a]['check'] = false;
                    box[a]['item_box'] = itemy;
                    break;
                  }
                  a = random.nextInt(9);
                }
                if (box[0]['item_box'] == itemy &&
                    box[1]['item_box'] == itemy &&
                    box[2]['item_box'] == itemy) {
                  county++;
                  for (var j = 0; j < box.length; j++) {
                    box[j]["check"] = false;
                  }
                } else if (box[3]['item_box'] == itemy &&
                    box[4]['item_box'] == itemy &&
                    box[5]['item_box'] == itemy) {
                  county++;
                  for (var j = 0; j < box.length; j++) {
                    box[j]["check"] = false;
                  }
                } else if (box[6]['item_box'] == itemy &&
                    box[7]['item_box'] == itemy &&
                    box[8]['item_box'] == itemy) {
                  county++;
                  for (var j = 0; j < box.length; j++) {
                    box[j]["check"] = false;
                  }
                } else if (box[0]['item_box'] == itemy &&
                    box[3]['item_box'] == itemy &&
                    box[6]['item_box'] == itemy) {
                  county++;
                  for (var j = 0; j < box.length; j++) {
                    box[j]["check"] = false;
                  }
                } else if (box[1]['item_box'] == itemy &&
                    box[4]['item_box'] == itemy &&
                    box[7]['item_box'] == itemy) {
                  county++;
                  for (var j = 0; j < box.length; j++) {
                    box[j]["check"] = false;
                  }
                } else if (box[2]['item_box'] == itemy &&
                    box[5]['item_box'] == itemy &&
                    box[8]['item_box'] == itemy) {
                  county++;
                  for (var j = 0; j < box.length; j++) {
                    box[j]["check"] = false;
                  }
                } else if (box[0]['item_box'] == itemy &&
                    box[4]['item_box'] == itemy &&
                    box[8]['item_box'] == itemy) {
                  county++;
                  for (var j = 0; j < box.length; j++) {
                    box[j]["check"] = false;
                  }
                } else if (box[2]['item_box'] == itemy &&
                    box[4]['item_box'] == itemy &&
                    box[6]['item_box'] == itemy) {
                  county++;
                  for (var j = 0; j < box.length; j++) {
                    box[j]["check"] = false;
                  }
                }
              });
            }
          },
          child: box[i]['item_box'],
        ),
      ),
    );
  }
}
