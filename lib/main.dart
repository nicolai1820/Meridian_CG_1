import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Conocimiento General 1',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conocimiento General 1'),
      ),
      body: Center(
        child: IterationList(),
      ),
    );
  }
}

class IterationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            final number = index + 1;
            String output = '';

            if (number % 3 == 0) {
              output += 'meridian';
            }
            if (number % 5 == 0) {
              output += 'group';
            }

            if (output.isEmpty) {
              output = number.toString();
            }

            return Center(
              child: Column(
                children: [
                  ListTile(
                    title: Text(output),
                  ),
                  Divider(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
