import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:flutter_html/flutter_html.dart';
import '../Router/AppRouter.gr.dart';
import '../Services/Parser/CSSParser.dart';
import 'HTML/TextEffect/OnMouseHoverSubmenuButton.dart';

import 'package:auto_route/auto_route.dart';
@RoutePage()
class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);


  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  String _stylecss = '';
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    loadCSS();
  }

  Future<void> loadCSS() async {
    try {
      _stylecss = await rootBundle.loadString('styles/styles.css');
    } catch (e) {
      print('Error loading CSS: $e');
      // Handle the error appropriately
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var cssfile = CSSParser().parseDeclarations(this._stylecss);

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
                      child: Text(
                        'Accueil',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
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
                      child: Text(
                        'Voyages',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ),
                  SubmenuButton(
                    menuChildren: [
                      /* Submenu items */
                    ],
                    child: InkWell(
                      onTap: () {
                        AutoRouter.of(context).push(Contact() as PageRouteInfo);
                      },
                      child: Text(
                        'Contact',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ),
                  SubmenuButton(
                    menuChildren: [
                      /* Submenu items */
                    ],
                    child: InkWell(
                      onTap: () {
                        AutoRouter.of(context)
                            .push(Connexion() as PageRouteInfo);
                      },
                      child: Text(
                        'Connexion',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ),
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
                child: Column(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Html(
                        data: "</div class='page-content page-accueil'></div><h1>Bienvenue sur l'application Ecodrive!</h1> <br/>"
                            "<p>L'application qui souhaite réinventer la route afin de vous l'approprier et d'abolir les distances. Derrière Ecodrive se trouve une jeune équipe multitâche, présente pour vous apporter le meilleur du transport partagé. "
                            "Ici, tout est fait pour vous simplifier la vie</p>",
                        style: cssfile,
                      ),
                      SizedBox(height: 20),  // Add some space between text and image
                      Align(
                        alignment: Alignment.center, // You can change alignment as needed
                        child: SizedBox(
                          width: 800,

                          child: Image.asset(
                            'images/Entreprise/rennes-siege-sociale.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ],
                  ),


                  Padding(
                    padding: EdgeInsets.only(top: 40.0 , right:20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Html(
                            data: "<p>Nous développons nos services, et mettons à votre disposition partout en France des bornes de recharge à proximité de nos bureaux et aux endroits stratégiques tels que gares, gares maritimes, aéroports.</p>",
                            style: CSSParser().parseDeclarations(this._stylecss),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'images/Entreprise/bornes-recharge.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top:40.0),
                    child: Html(
                        data:
                            "<p>Vous souhaitez nous poser vos questions, vous avez des idées lumineuses et voulez rejoindre l'entreprise, un formulaire de contact est à votre disposition.</p></div>",
                        style: cssfile),
                  ),
                ]),
              ),
            ),
          ),

// Sticky footer
          // Sticky footer
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              color: Theme.of(context).colorScheme.secondary,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: InkWell(
                        onTap: () {
                          AutoRouter.of(context).pushNamed('/mentionslegales');
                        },
                        child: Text(
                          'Mentions légales',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Other footer content on the left
                        Text('', style: TextStyle(color: Colors.white)),

                        // Copyright text on the right
                        Text(
                          'Copyright 2025@Ecodrive',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
