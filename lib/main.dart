import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '«SuperTech»',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '«SuperTech»'),
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
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10), // Відстань між полями
                  Container(
                    width: 300,
                    child: TextFormField(
                      onChanged: (text) {},
                      maxLength: 60,
                      decoration: InputDecoration(hintText: 'Login'),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      onChanged: (text) {},
                      maxLength: 30,
                      obscureText: true,
                      decoration: InputDecoration(hintText: 'Type password here'),
                    ),
                  ),
                  Container(
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
                    child: Padding(
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
            ),
          ],
        ),
      ),
    );
  }
}
