import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaAppState extends State<PerguntaApp>
{
  var perguntaSelecionada = 0;
  
  void responder() {
    setState(() {      
    perguntaSelecionada++;
    });
    print('responder a pergunta');
  }
  Widget build(BuildContext context) {
    final List<String> perguntas = ['qual ?', 'quais?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('teste'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            TextButton(
              child: Text('resposta 1'),
              onPressed: responder,
            ),
            TextButton(
              child: Text('resposta 2'),
              onPressed: responder,
            ),
            TextButton(child: Text('resposta 3'), onPressed: responder)
          ],
        ),
      ),
    );
  }
}

@override
class PerguntaApp extends StatefulWidget {

  PerguntaAppState createState() {
    return PerguntaAppState();
  }

}
