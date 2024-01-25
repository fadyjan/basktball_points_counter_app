// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  num TeamAPoints = 0;
  num TeamBPoints = 0;

  void _add(point, team) {
    if (team == 'A') {
      TeamAPoints = TeamAPoints + point;
    } else {
      TeamBPoints = TeamBPoints + point;
    }
  }

  void _newGame() {
    TeamAPoints = 0;
    TeamBPoints = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Points Counter'),
            backgroundColor: Colors.amber,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Team A', style: TextStyle(fontSize: 32)),
                      Text('$TeamAPoints', style: TextStyle(fontSize: 140)),
                      SizedBox(
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _add(1, 'A');
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber,
                                  minimumSize: Size(150, 60)),
                              child: Text(
                                'Add 1 Point',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _add(2, 'A');
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber,
                                    minimumSize: Size(150, 60)),
                                child: Text('Add 2 Point',
                                    style: TextStyle(color: Colors.black))),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _add(3, 'A');
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber,
                                    minimumSize: Size(150, 60)),
                                child: Text('Add 3 Point',
                                    style: TextStyle(color: Colors.black))),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 400,
                    child: VerticalDivider(
                      color: Colors
                          .grey, // Choose a color that contrasts with the background
                      thickness: 1,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Team B', style: TextStyle(fontSize: 32)),
                      Text('$TeamBPoints', style: TextStyle(fontSize: 140)),
                      SizedBox(
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _add(1, 'B');
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber,
                                  minimumSize: Size(150, 60)),
                              child: Text(
                                'Add 1 Point',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _add(2, 'B');
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber,
                                    minimumSize: Size(150, 60)),
                                child: Text('Add 2 Point',
                                    style: TextStyle(color: Colors.black))),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _add(3, 'B');
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber,
                                    minimumSize: Size(150, 60)),
                                child: Text('Add 3 Point',
                                    style: TextStyle(color: Colors.black))),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 65,
                width: 150,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _newGame();
                      });
                    },
                    child: Text("New Game")),
              ),
            ],
          )),
    );
  }
}
