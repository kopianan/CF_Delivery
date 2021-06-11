import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageWidget {
  static PreferredSizeWidget globalAppBar() {
    return AppBar(
      title: Text(
        "CF Delivery",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
