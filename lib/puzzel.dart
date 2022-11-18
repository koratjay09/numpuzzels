import 'dart:math';

import 'package:flutter/material.dart';

class puzzel extends StatefulWidget {
  const puzzel({Key? key}) : super(key: key);

  @override
  State<puzzel> createState() => _puzzelState();
}

class _puzzelState extends State<puzzel> {
  List<String> l = [];
  List<Color> c = List.filled(9, Colors.white70);
  String r = "Game is Running";
  bool t = false;

  @override
  void initState() {
    ran();
  }

  void ran() {
    List<int> a = [];
    for (int i = 0; i < 9;) {

      int min = 0, max = 8;
      int num = min + Random().nextInt(max - min + 1);
      if (!a.contains(num)) {
        a.add(num);
        i++;
      }
    }
    for (int i = 0; i < 9; i++) {
      if (a[i] == 0) {
        l.add("");
      } else {
        l.add("${a[i]}");
      }
    }
  }

  Widget cont(int j) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.indigo,
      margin: EdgeInsets.all(5),
      alignment: Alignment.center,
      child: Text("${l[j]}", style: TextStyle(fontSize: 50, color: c[j])),
    );
  }
  void win() {
    if (l[0] == "1" &&
        l[1] == "2" &&
        l[2] == "3" &&
        l[3] == "4" &&
        l[4] == "5" &&
        l[5] == "6" &&
        l[6] == "7" &&
        l[7] == "8" &&
        l[8] == "") {
      r = "you are winner.";
      t = true;
      color(0, 1, 2, 3, 4, 5, 6, 7);
    }
  }

  void color(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8) {
    c[a1] = Colors.orangeAccent;
    c[a2] = Colors.orangeAccent;
    c[a3] = Colors.orangeAccent;
    c[a4] = Colors.white;
    c[a5] = Colors.white;
    c[a6] = Colors.white;
    c[a7] = Colors.green;
    c[a8] = Colors.green;
  }

  void reset() {
    l.removeRange(0, 9);
    ran();
    c = List.filled(9, Colors.white70);
    r = "Game is Running";
    t = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puzzel"),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: InkWell(
              onTap: () {
                if (l[1] == "" && t == false) {
                  l[1] = l[0];
                  l[0] = "";
                  win();
                } else if (l[3] == "" && t == false) {
                  l[3] = l[0];
                  l[0] = "";
                  win();
                }
                setState(() {});
              },
              child: cont(0),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                if (l[0] == "" && t == false) {
                  l[0] = l[1];
                  l[1] = "";
                  win();
                } else if (l[2] == "" && t == false) {
                  l[2] = l[1];
                  l[1] = "";
                  win();
                } else if (l[4] == "" && t == false) {
                  l[4] = l[1];
                  l[1] = "";
                  win();
                }
                setState(() {});
              },
              child: cont(1),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                if (l[1] == "" && t == false) {
                  l[1] = l[2];
                  l[2] = "";
                  win();
                } else if (l[5] == "" && t == false) {
                  l[5] = l[2];
                  l[2] = "";
                  win();
                }
                setState(() {});
              },
              child: cont(2),
            )),
          ],
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: InkWell(
              onTap: () {
                if (l[0] == "" && t == false) {
                  l[0] = l[3];
                  l[3] = "";
                  win();
                } else if (l[4] == "" && t == false) {
                  l[4] = l[3];
                  l[3] = "";
                  win();
                } else if (l[6] == "" && t == false) {
                  l[6] = l[3];
                  l[3] = "";
                  win();
                }
                setState(() {});
              },
              child: cont(3),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                if (l[1] == "" && t == false) {
                  l[1] = l[4];
                  l[4] = "";
                  win();
                } else if (l[3] == "" && t == false) {
                  l[3] = l[4];
                  l[4] = "";
                  win();
                } else if (l[5] == "" && t == false) {
                  l[5] = l[4];
                  l[4] = "";
                  win();
                } else if (l[7] == "" && t == false) {
                  l[7] = l[4];
                  l[4] = "";
                  win();
                }
                setState(() {});
              },
              child: cont(4),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                if (l[2] == "" && t == false) {
                  l[2] = l[5];
                  l[5] = "";
                  win();
                } else if (l[4] == "" && t == false) {
                  l[4] = l[5];
                  l[5] = "";
                  win();
                } else if (l[8] == "" && t == false) {
                  l[8] = l[5];
                  l[5] = "";
                  win();
                }
                setState(() {});
              },
              child: cont(5),
            )),
          ],
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: InkWell(
              onTap: () {
                if (l[3] == "" && t == false) {
                  l[3] = l[6];
                  l[6] = "";
                  win();
                } else if (l[7] == "" && t == false) {
                  l[7] = l[6];
                  l[6] = "";
                  win();
                }
                setState(() {});
              },
              child: cont(6),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                if (l[4] == "" && t == false) {
                  l[4] = l[7];
                  l[7] = "";
                  win();
                } else if (l[6] == "" && t == false) {
                  l[6] = l[7];
                  l[7] = "";
                  win();
                } else if (l[8] == "" && t == false) {
                  l[8] = l[7];
                  l[7] = "";
                  win();
                }
                setState(() {});
              },
              child: cont(7),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                if (l[5] == "" && t == false) {
                  l[5] = l[8];
                  l[8] = "";
                  win();
                } else if (l[7] == "" && t == false) {
                  l[7] = l[8];
                  l[8] = "";
                  win();
                }
                setState(() {});
              },
              child: cont(8),
            )),
          ],
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.indigo,
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              child: Text(
                r,
                style: TextStyle(fontSize: 30, color: Colors.white70),
              ),
            )),
          ],
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: InkWell(
              onTap: () {
                reset();
                setState(() {});
              },
              child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.indigo,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text(
                    "Reset",
                    style: TextStyle(fontSize: 50, color: Colors.white70),
                  )),
            )),
          ],
        ))
      ]),
      backgroundColor: Colors.black,
    );
  }
}
