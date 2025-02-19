// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:ecodrive_client/src/Views/Accueil.dart' as _i1;
import 'package:ecodrive_client/src/Views/Connexion.dart' as _i2;
import 'package:ecodrive_client/src/Views/Contact.dart' as _i3;
import 'package:ecodrive_client/src/Views/Mentionslegales.dart' as _i4;
import 'package:ecodrive_client/src/Views/Voyages.dart' as _i5;
import 'package:flutter/material.dart' as _i7;

/// generated route for
/// [_i1.Accueil]
class Accueil extends _i6.PageRouteInfo<void> {
  const Accueil({List<_i6.PageRouteInfo>? children})
    : super(Accueil.name, initialChildren: children);

  static const String name = 'Accueil';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.Accueil();
    },
  );
}

/// generated route for
/// [_i2.Connexion]
class Connexion extends _i6.PageRouteInfo<void> {
  const Connexion({List<_i6.PageRouteInfo>? children})
    : super(Connexion.name, initialChildren: children);

  static const String name = 'Connexion';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.Connexion();
    },
  );
}

/// generated route for
/// [_i3.Contact]
class Contact extends _i6.PageRouteInfo<void> {
  const Contact({List<_i6.PageRouteInfo>? children})
    : super(Contact.name, initialChildren: children);

  static const String name = 'Contact';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.Contact();
    },
  );
}

/// generated route for
/// [_i4.Mentionslegales]
class Mentionslegales extends _i6.PageRouteInfo<MentionslegalesArgs> {
  Mentionslegales({_i7.Key? key, List<_i6.PageRouteInfo>? children})
    : super(
        Mentionslegales.name,
        args: MentionslegalesArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'Mentionslegales';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MentionslegalesArgs>(
        orElse: () => const MentionslegalesArgs(),
      );
      return _i4.Mentionslegales(key: args.key);
    },
  );
}

class MentionslegalesArgs {
  const MentionslegalesArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'MentionslegalesArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.Voyages]
class Voyages extends _i6.PageRouteInfo<void> {
  const Voyages({List<_i6.PageRouteInfo>? children})
    : super(Voyages.name, initialChildren: children);

  static const String name = 'Voyages';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.Voyages();
    },
  );
}
