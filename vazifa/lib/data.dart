import 'package:flutter/material.dart';

int countx = 0;
int county = 0;

bool checkxy = true;
bool checkstop = false;

SizedBox itemx = SizedBox(
  height: 100,
  width: 100,
  child: Image.asset(
    "assets/xicon.png",
    fit: BoxFit.cover,
  ),
);
SizedBox itemy = SizedBox(
  height: 100,
  width: 100,
  child: Image.asset(
    "assets/0icon.png",
    fit: BoxFit.cover,
  ),
);

Text text =
    const Text('    ', style: TextStyle(fontSize: 50, color: Colors.white));

List box = [
  {
    "check": true,
    "item_box": text,
  },
  {
    "check": true,
    "item_box": text,
  },
  {
    "check": true,
    "item_box": text,
  },
  {
    "check": true,
    "item_box": text,
  },
  {
    "check": true,
    "item_box": text,
  },
  {
    "check": true,
    "item_box": text,
  },
  {
    "check": true,
    "item_box": text,
  },
  {
    "check": true,
    "item_box": text,
  },
  {
    "check": true,
    "item_box": text,
  },
];
