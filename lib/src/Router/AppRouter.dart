import 'package:auto_route/auto_route.dart';

import '../Modules/Guard/AuthGuard.dart';
import './AppRouter.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/', page: Accueil.page, initial: true),
    AutoRoute(path: '/connexion', page: Connexion.page),
    AutoRoute(path: '/contact', page: Contact.page),
    AutoRoute(path: '/voyages', page: Voyages.page),
    AutoRoute(path: '/voyagesdetails', page: VoyagesDetails.page),  //TODO add ,guards: [AuthGuard]
    AutoRoute(path: '/mentionslegales', page: Mentionslegales.page),
  ];
}


