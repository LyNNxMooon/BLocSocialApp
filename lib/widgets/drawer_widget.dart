import 'package:bloc_social_app/screens/profile_screen.dart';
import 'package:bloc_social_app/utils/navigation_extension.dart';
import 'package:bloc_social_app/widgets/drawer_tile_widget.dart';
import 'package:flutter/material.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),
              CustomDrawerTileWidget(
                title: "H O M E",
                icon: Icons.home,
                function: () => context.navigateBack(),
              ),
              CustomDrawerTileWidget(
                title: "P R O F I L E",
                icon: Icons.person,
                function: () {
                  context.navigateBack();
                  context.navigateToNext(const ProfileScreen());
                },
              ),
              CustomDrawerTileWidget(
                title: "S E A R C H",
                icon: Icons.search,
                function: () {},
              ),
              CustomDrawerTileWidget(
                title: "S E T T I N G",
                icon: Icons.settings,
                function: () {},
              ),
              const Spacer(),
              CustomDrawerTileWidget(
                title: "L O G O U T",
                icon: Icons.logout,
                function: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
