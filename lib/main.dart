import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: TopBoyDear()));

class TopBoyDear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Top Boy Dear")),
      body: Center(
        child: ElevatedButton(
          child: Text("Rate Our App"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("Rate Us"),
                content: Text("Do you like this app?"),
                actions: [
                  TextButton(child: Text("5 Stars"), onPressed: () => Navigator.pop(context)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

