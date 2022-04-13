import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class Templates extends StatelessWidget {
  const Templates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Templates'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          GestureDetector(
            onTap: () => context.push('/authentication'),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Expanded(child: Lottie.asset('assets/authentication.json')),
                  Text('Authentication', style: Theme.of(context).textTheme.headline6,),
                ],
              ),
              color: Colors.teal[100],
            ),
          ),
        ],
      ),
    );
  }
}
