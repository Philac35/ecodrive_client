import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import '../Router/AppRouter.gr.dart';

@RoutePage()
class Accueil extends StatelessWidget {
  const Accueil({Key? key}) : super(key: key);

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

// Space above the MenuBar with color #0051C1
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.25,
// Space above the MenuBar
            child: Container(
                color: Theme.of(context).colorScheme.secondary,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'images/front-bleu.png',
                  ),
                )),
          ),

// Logo positioned inside the colored space
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.05, // Adjust logo position within the space
            left: 20,
            child: Image.asset(
              'images/logo.png',
              width: 64,
              height: 64,
              fit: BoxFit.cover,
            ),
          ),

// MenuBar
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.2, // Position MenuBar below the colored space
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white, // Optional background for the MenuBar
              child: MenuBar(
                children: [
                  SubmenuButton(
                    menuChildren: [
                      /* Submenu items */
                    ],
                    child: InkWell(
                      onTap: () {
                        AutoRouter.of(context).push(Accueil() as PageRouteInfo);
                      },
                      child: Text('Accueil'),
                    ),
                  ),
                  SubmenuButton(
                    menuChildren: [
                      /* Submenu items */
                    ],
                    child: InkWell(
                      onTap: () {
                        AutoRouter.of(context).push(Voyages() as PageRouteInfo);
                      },
                    child: Text('Voyages'),
                  ),),
                  SubmenuButton(
                    menuChildren: [
                      /* Submenu items */
                    ],
                    child: InkWell(
                      onTap: () {
                        AutoRouter.of(context).push(Contact() as PageRouteInfo);
                      },
                    child: Text('Contact'),
                  ),),
                  SubmenuButton(
                    menuChildren: [
                      /* Submenu items */
                    ],
                    child: InkWell(
                      onTap: () {
                        AutoRouter.of(context).push(Connexion() as PageRouteInfo);
                      },
                    child: Text('Connexion'),
                  ),),
                ],
              ),
            ),
          ),

// Content below the MenuBar

          Positioned(
            top: MediaQuery.of(context).size.height * 0.18 + 50,
// Adjust based on MenuBar height
            left: 0,
            right: 0,
            bottom: 200,
            child: Container(
              color: Colors.white, // Example background for content below
// Scrollable content
              child: SingleChildScrollView(
                child: Column(children: []),
              ),
            ),
          ),

// Sticky footer
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              color: Theme.of(context).colorScheme.tertiary,
              child: Center(
                child: Text('Footer Content',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
