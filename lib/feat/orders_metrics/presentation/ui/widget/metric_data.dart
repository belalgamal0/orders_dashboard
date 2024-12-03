import 'package:flutter/material.dart';
class MetricData {
  final String title;
  final String value;
  final double? trend;
  final IconData icon;

  const MetricData({
    required this.title,
    required this.value,
    this.trend,
    required this.icon,
  });
}
