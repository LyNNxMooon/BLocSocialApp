import 'package:flutter/material.dart';

class CustomDrawerTileWidget extends StatelessWidget {
  const CustomDrawerTileWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.function});

  final String title;
  final IconData icon;
  final void Function()? function;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
      ),
      leading: Icon(
        icon,
        color: Theme.of(context).colorScheme.primary,
      ),
      onTap: function,
    );
  }
}
