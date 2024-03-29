import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hola flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Actividad #1 Grupal presentado por los estudiantes:',
            ),
            Text(
              'Cruz Vaquero Davis Michell 25-1462-2019',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Campos Montes Christian Manuel 25-5230-2017',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Guardado Caballero Jose David  25-0247-2018',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Rodriguez Ruballo Mario Enrique  17-1947-2019',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Méndez Vásquez Daniel Isaac 25-2510-2018',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
