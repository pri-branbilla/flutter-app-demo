import 'package:flutter/material.dart';
import 'package:projeto_exemplo/screens/ciclo_stateful.dart';

class CicloStatefulParent extends StatefulWidget {
  const CicloStatefulParent({super.key});

  @override
  State<CicloStatefulParent> createState() => _CicloStatefulParentState();
}

class _CicloStatefulParentState extends State<CicloStatefulParent> {
  Color corAtual = Colors.blue;

  void trocarCor() {
    setState(() {
      corAtual = corAtual == Colors.blue ? Colors.purple : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ciclo de vida - StatefulWidget (Parent)')),
      body: Column(
        children: [
          Text(
            'Simulando os diferentes estágios do ciclo de vida de um StatefulWidget',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          CicloStateful(cor: corAtual),
          SizedBox(height: 20),
          ElevatedButton(onPressed: trocarCor, child: Text('Trocar cor')),
        ],
      ),
    );
  }
}
