// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pmi/firstpg.dart';

class MyHomePg extends StatefulWidget {
  const MyHomePg({super.key});

  @override
  State<MyHomePg> createState() => _MyHomePgState();
}

class _MyHomePgState extends State<MyHomePg> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[200],
        title:Text('BMI CALCULATOR',style:TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
        centerTitle: true,
      ),
      body: FirstPg(),
    );
  }
}