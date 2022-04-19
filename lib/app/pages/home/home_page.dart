import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1,
        title: Image.network(
          'https://servicos.ulbra.br/login/57723f29cf333fdb62cd6f9459bb4f7c.png',
          height: 50,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
