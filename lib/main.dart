import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Завдання №1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Завдання №1'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 10),
                const SizedBox(
                  width: 300,
                  child: Text(
                    '«SuperTech»',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    onChanged: (text) {},
                    maxLength: 60,
                    decoration: InputDecoration(hintText: 'Login'),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    onChanged: (text) {},
                    maxLength: 30,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Type password here'),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    onChanged: (text) {},
                    maxLength: 30,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Repeat password here'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(13),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.key),
                        SizedBox(width: 8),
                        Text("Register")
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
