// this function use for sizeBox size
import 'package:flutter/material.dart';

extension Size on  num{
  SizedBox get sHeight => SizedBox(height: toDouble(),);
  SizedBox get sw => SizedBox(width: toDouble(),);
}