import 'package:flutter/material.dart';
import 'package:projeto_exemplo/screens/widgets_conteudo.dart';
import 'package:projeto_exemplo/screens/widgets_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ListContents(),
    );
  }
}

class ListContents extends StatelessWidget {
  const ListContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets de conteúdo')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => WidgetsConteudo()),
            ),
            child: Text('Widgets de conteúdo'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => WidgetsLayout()),
            ),
            child: Text('Widgets de layout'),
          ),
        ],
      ),
    );
  }
}
