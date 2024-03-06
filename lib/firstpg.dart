// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pmi/sdPg.dart';

class FirstPg extends StatefulWidget {
  const FirstPg({super.key});

  @override
  State<FirstPg> createState() => _FirstPgState();
}

class _FirstPgState extends State<FirstPg> {
  String isMale = "Male";
  double personLenght = 150;
  int personWeight = 50;
  int personAge = 20;
  Color? c1 = Colors.blueGrey;
  Color? c2 = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blueGrey[100]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = "Male";
                      c1 = Colors.green[300];
                      c2 = Colors.blueGrey;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: c1),
                    child: Column(
                      children: [
                        Icon(
                          Icons.male_outlined,
                          size: 100,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("MALE",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 18))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = "FEMALE";
                      c1 = Colors.blueGrey;
                      c2 = Colors.deepOrange;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: c2),
                    child: Column(
                      children: [
                        Icon(
                          Icons.female_outlined,
                          size: 100,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("FEMALE",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 18))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      personLenght.toInt().toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "cm",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 11),
                    ),
                  ],
                ),
                Slider(
                  value: personLenght,
                  min: 0,
                  max: 250,
                  onChanged: (val) {
                    setState(
                      () {
                        personLenght = val;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 12, 30, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey),
                  child: Column(
                    children: [
                      Text(
                        "Weight",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        personWeight.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  personWeight++;
                                });
                              },
                              icon: Icon(
                                Icons.plus_one_rounded,
                                size: 35,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  personWeight--;
                                });
                              },
                              icon: Icon(
                                Icons.exposure_neg_1_outlined,
                                size: 35,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey),
                  child: Column(
                    children: [
                      Text(
                        "AGE",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        personAge.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  personAge++;
                                });
                              },
                              icon: Icon(
                                Icons.plus_one_rounded,
                                size: 35,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  personAge--;
                                });
                              },
                              icon: Icon(
                                Icons.exposure_neg_1_outlined,
                                size: 35,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          GestureDetector(
            onTap:  () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SdPg(
                      sdPgLenght: personLenght,
                      
                      sdPgMale: isMale,

                      sdPgWeight : personWeight ,
                      sdPgAge:personAge
 ,
                    ),
                  ),
                );
              },
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blueGrey),
              child: Text(
                "EVALUTE",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
