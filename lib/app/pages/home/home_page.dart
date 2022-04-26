import 'package:ap1_dsm/app/pages/home/widgets/card_aula.dart';
import 'package:ap1_dsm/app/pages/home/widgets/drawer_widget.dart';
import 'package:ap1_dsm/app/pages/home/widgets/drop_down_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).padding.top;
    var appBarHeight = kToolbarHeight;

    return Scaffold(
      drawerScrimColor: Colors.transparent,
      drawer: Padding(
        padding: EdgeInsets.only(top: statusBarHeight + appBarHeight + 1),
        child: const SizedBox(
          width: 250,
          child: DrawerWidget(),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 1,
        title: Image.network(
          'https://servicos.ulbra.br/login/57723f29cf333fdb62cd6f9459bb4f7c.png',
          height: 50,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Salas Virtuais',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Período:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 50,
              child: DropDownWidget(),
            ),
            const SizedBox(height: 10),
            const CardAula(
              thirthItem: 1,
              color: Colors.red,
              classNumber: '152103',
              
            ),
            const SizedBox(height: 15),
            CardAula(
              secondItem: 3,
              color: Colors.green[900],
              classNumber: '151116',
              
            ),
            const SizedBox(height: 15),
            const CardAula(
              firstItem: 1,
              thirthItem: 3,
              color: Color(0xff2084c3),
              classNumber: '151116',
            ),
          ],
        ),
      ),
    );
  }
}
