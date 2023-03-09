import 'package:flutter/material.dart';

class Statistic {
  final int id;
  final String title, subtitle, image;
  final Color color;

  Statistic({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.color,
  });
}

List<Statistic> statistic = [
  Statistic(
    id: 1,
    title: "Completed Commission",
    subtitle: "750",
    image: "",
    color: Color.fromARGB(255, 217, 255, 252),
  ),
];
