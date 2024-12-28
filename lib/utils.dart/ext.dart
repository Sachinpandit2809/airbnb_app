import 'package:flutter/material.dart';

extension Num on num {
  SizedBox get heightBox => SizedBox(height: this.toDouble());
  SizedBox get widthBox => SizedBox(width: this.toDouble());
}

extension MedExt on BuildContext {
  double get mediaHeight => MediaQuery.of(this).size.height;
  double get mediaWidth => MediaQuery.of(this).size.width;
}
