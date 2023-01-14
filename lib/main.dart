import 'package:flutter/material.dart';
import 'package:spotlas/pages/feed.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Feed(),
    }
));