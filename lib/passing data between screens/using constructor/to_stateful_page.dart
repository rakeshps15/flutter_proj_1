import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  int? phone;
  final String location;
  final String name;

  StatefulPage({super.key, required this.name, required this.location, this.phone});

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.name),
            Text(widget.location),
            Text('${widget.phone}'),
          ],
        ),
      ),
    );
  }
}
