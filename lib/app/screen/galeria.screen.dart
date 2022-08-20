import 'package:flutter/material.dart';
import '../components/menu.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<GalleryScreen> createState() => _GalleryState();
}

class _GalleryState extends State<GalleryScreen> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          drawer: Menu(context),
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Column(children: [
            Image.network(
                'data:image/jpeg;base64,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'),
            Image.network(
                'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
          ])),
    );
  }
}