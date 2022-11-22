import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key, required this.onPush}) : super(key: key);

  final ValueChanged<int>? onPush;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("List page"),


            ElevatedButton(onPressed: () {
              onPush?.call(1);
            }, child: Text("Next page"))
          ],
        ),
      ),
    );
  }
}
