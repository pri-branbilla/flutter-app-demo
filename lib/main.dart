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
  final List<CatalogoItem> secoes = [
    CatalogoItem(
      titulo: 'Widgets de Conteúdo',
      icone: Icons.text_fields,
      descricao: 'Exemplos de widgets básicos como Text, Image, Icon...',
      destino: WidgetsConteudo(),
    ),
    CatalogoItem(
      titulo: 'Wigets de Layout',
      icone: Icons.view_agenda,
      descricao: 'Exemplos / demonstrações de padding, column, flexible...',
      destino: WidgetsLayout(),
    ),
  ];
  ListContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets de conteúdo')),
      body: Column(
        children: secoes
            .map(
              (item) => ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => item.destino),
                ),
                child: Text(item.titulo),
              ),
            )
            .toList(),
      ),
    );
  }
}

class CatalogoItem {
  final String titulo;
  final IconData icone;
  final String descricao;
  final Widget destino;

  CatalogoItem({
    required this.titulo,
    required this.icone,
    required this.descricao,
    required this.destino,
  });
}
