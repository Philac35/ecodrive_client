import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

@RoutePage()
class Voyages extends StatelessWidget {
  const Voyages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
// Background content
              Container(
                color: Colors
                    .white, // Add a background color for the entire page if needed
              ),
            ]));
  }
}