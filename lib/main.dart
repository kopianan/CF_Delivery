import 'package:cf_delivery/injection.dart';
import 'package:flutter/material.dart';

import 'presentation/app_widget.dart';

void main() {
  configureDependencies();

  runApp(AppWidget());
}
