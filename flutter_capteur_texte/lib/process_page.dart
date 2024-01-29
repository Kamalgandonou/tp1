// process_page.dart

import 'dart:io';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_ml_kit/google_ml_kit.dart';

class ProcessPage extends StatelessWidget {
  final File image;
  final String extractedText;

  const ProcessPage({super.key, required this.image, required this.extractedText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Traitement d\'image'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.file(image),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      extractedText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
