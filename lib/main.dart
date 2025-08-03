import 'package:flutter/material.dart';
import 'package:projeto_exemplo/screens/ciclo_stateful_parent.dart';
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
    CatalogoItem(
      titulo: 'Ciclo de Vida - Stateful',
      icone: Icons.sync,
      descricao: 'Entendendo o ciclo de vida de um StatefulWidget',
      destino: CicloStatefulParent(),
    ),
  ];
  ListContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets de conteúdo')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        crossAxisSpacing: 16,
        childAspectRatio: 0.85,
        children: secoes
            .map(
              (item) => GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => item.destino),
                ),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Icon(item.icone, size: 48, color: Colors.blue),
                        Text(
                          item.titulo,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          item.descricao,
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
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
