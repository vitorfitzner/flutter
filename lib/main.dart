import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Flutter with Material Design',
    home: Scaffold(
      body: Center(
        child: MyButton()
      )
    )
  ));
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue[500]),
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation Menu',
              onPressed: null),
          Expanded(child: title),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'Search button',
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
      children: [
        MyAppBar(
            title: Text('Titulo de exemplo',
                style: Theme.of(context).primaryTextTheme.headline6)),
        const Expanded(child: Center(child: Text('Hello, World!')))
      ],
    ));
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { print('Botão acionado'); },
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
        child: const Center(child: Text('Engage'))
      )
    );
  }
}
