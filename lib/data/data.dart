import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transactionsData = [
  {
    'icon': FontAwesomeIcons.mugSaucer,
    'color': const Color(0xFF4B3C2A),
    'name': 'Café',
    'totalBalance': 'R\$ 79,99',
    'date': 'Hoje',
  },
   {
    'icon': FontAwesomeIcons.pizzaSlice,
    'color': const Color(0xFF4B3C2A),
    'name': 'Pizza',
    'totalBalance': 'R\$ 69,00',
    'date': 'Ontem',
  },
  {
    'icon': FontAwesomeIcons.tv,
    'color': const Color(0xFF4B3C2A),
    'name': 'Netflix',
    'totalBalance': 'R\$ 8,00',
    'date': 'Ontem',
  },
  {
    'icon': FontAwesomeIcons.car,
    'color': const Color(0xFF4B3C2A),
    'name': 'Uber',
    'totalBalance': '- R\$ 29,90',
    'date': 'Ontem',
  },
];