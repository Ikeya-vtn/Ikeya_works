import 'package:flutter/material.dart';

class Project {
  Project(
      {@required this.image,
      @required this.name,
      @required this.description,
      this.link});
  String image;
  String name;
  String description;
  String link;
}
