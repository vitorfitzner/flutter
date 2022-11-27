import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Flutter with Material Design', 
    home: SafeArea(
      child: MyScaffold()
    ))
  );
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
          MyAppBar(title: Text('Titulo de exemplo',style: Theme.of(context).primaryTextTheme.headline6)),
          const Expanded(child: Center(child: Text('Hello, World!')))
        ],
    ));
  }
}
