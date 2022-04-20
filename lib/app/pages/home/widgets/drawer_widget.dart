import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff202020),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/originals/bb/3c/19/bb3c19263b23764389e40f1f3363b1bb.jpg',
                      scale: 50),
                  radius: 30,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Lucas',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'ALUNO',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff868e96),
                      ),
                    ),
                    Icon(
                      Icons.check_circle,
                      color: Color(0xff868e96),
                      size: 12,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  thickness: 1,
                  color: Color(0xff868e96),
                ),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(
                  Icons.computer,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Sala Virtual',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(
                  Icons.computer,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Sala Virtual',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(
                  Icons.computer,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Sala Virtual',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(
                  Icons.computer,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Sala Virtual',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(
                  Icons.computer,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Sala Virtual',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(
                  Icons.computer,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Sala Virtual',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
