import 'package:flutter/material.dart';
import 'package:responsive_ui_5/data/states.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allStates.length,
      itemBuilder: (context, index) {
        return index == 0 ? buildHeader() : buildMenuItem(index);
      },
    );
  }

  Widget buildHeader() => DrawerHeader(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/swat.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          alignment: AlignmentDirectional.bottomStart,
          child: const Text(
            'Pakistan',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
            ),
          ),
        ),
      );

  Widget buildMenuItem(int index) => ListTile(
        leading: const Icon(Icons.location_city),
        title: Text(
          allStates[index - 1],
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
      );
}
