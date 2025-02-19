import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../Interface/Service.dart';

class CSSParser implements Service {

  CSSParser();


  Map<String, Style> parseCss(String cssString) {
    Map<String, Style> styles = {};
    List<String> rules = cssString.split('}');

    for (String rule in rules) {
      rule = rule.trim();
      if (rule.isEmpty) continue;

      List<String> parts = rule.split('{');
      if (parts.length != 2) continue;

      String selector = parts[0].trim();
      String declarations = parts[1].trim();

      Style style = parseDeclarations(declarations);
      styles[selector] = style;
    }

    return styles;
  }

  Color parseColor(String colorString) {
    if (colorString.startsWith('#')) {
      String hexColor = colorString.replaceAll('#', '');
      if (hexColor.length == 6) {
        hexColor = 'FF' + hexColor;
      }
      if (hexColor.length == 8) {
        return Color(int.parse(hexColor, radix: 16));
      }
    }
    return Colors.black; // Default color
  }


  Style parseDeclarations(String declarations) {
    Style style = Style();
    List<String> properties = declarations.split(';');

    for (String property in properties) {
      property = property.trim();
      if (property.isEmpty) continue;

      List<String> parts = property.split(':');
      if (parts.length != 2) continue;

      String propertyName = parts[0].trim();
      String propertyValue = parts[1].trim();


      switch (propertyName) {
        case 'color':
          try {
            style = style.copyWith(color: parseColor(propertyValue));
          } catch (e) {
            print('Error parsing color: $propertyValue - $e');
          }
          break;
        case 'font-size':
          try {
            style = style.copyWith(fontSize: FontSize(
                double.parse(propertyValue.replaceAll('px', ''))));
          } catch (e) {
            print('Error parsing font-size: $propertyValue - $e');
          }
          break;
        case 'font-weight':
          if (propertyValue == 'bold') {
            style = style.copyWith(fontWeight: FontWeight.bold);
          } else if (propertyValue == 'normal') {
            style = style.copyWith(fontWeight: FontWeight.normal);
          }
          break;
        case 'text-align':
          if (propertyValue == 'center') {
            style = style.copyWith(textAlign: TextAlign.center);
          } else if (propertyValue == 'left') {
            style = style.copyWith(textAlign: TextAlign.left);
          } else if (propertyValue == 'right') {
            style = style.copyWith(textAlign: TextAlign.right);
          }
          break;
        case 'margin':
          try {
            double marginValue = double.parse(
                propertyValue.replaceAll('px', ''));
            style = style.copyWith(
                margin: Margins.all(marginValue)); // Use Margins.all
          } catch (e) {
            print('Error parsing margin: $propertyValue - $e');
          }
          break;
        case 'padding':
          try {
            double paddingValue = double.parse(
                propertyValue.replaceAll('px', ''));
            style = style.copyWith(padding: HtmlPaddings.all(
                paddingValue)); // Use HtmlPaddings.all
          } catch (e) {
            print('Error parsing padding: $propertyValue - $e');
          }
          break;
        case 'background-color':
          try {
            style = style.copyWith(backgroundColor: parseColor(propertyValue));
          } catch (e) {
            print('Error parsing background-color: $propertyValue - $e');
          }
          break;
      }


    }
    return style;  }

  @override
  int getId() {
    var random = Random();
    int randomNumber = random.nextInt(10^15);
    return randomNumber;
  }

}