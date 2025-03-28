import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(AppLocalizations.of(context)!.helloWorld),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              width: 250,
              height: 70,
              child: 
              TextField(
                keyboardType: TextInputType.url,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'URL',
                ),
              ),
            ),
            SizedBox(
              width: 250,
              height: 70,
              child: 
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'API Key',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Save'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
