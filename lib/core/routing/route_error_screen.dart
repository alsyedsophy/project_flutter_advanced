import 'package:flutter/material.dart';
import 'package:project_flutter_avanced/core/widgets/app_error_view.dart';

class RouteErrorScreen extends StatelessWidget {
  const RouteErrorScreen({this.message, super.key});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AppErrorView(message: message ?? "Error Not Found"),
    );
  }
}
