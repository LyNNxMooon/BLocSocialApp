import 'package:bloc_social_app/utils/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ConfirmationWidget extends StatelessWidget {
  const ConfirmationWidget(
      {super.key, required this.message, required this.function});

  final String message;
  final void Function()? function;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => context.navigateBack(),
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.primary)),
                child: Text(
                  "Cancel",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ),
              const Gap(15),
              TextButton(
                onPressed: function,
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.inversePrimary)),
                child: Text(
                  "OK",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ],
          ),
        ],
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              color: Theme.of(context).colorScheme.primary,
            ),
            const Gap(15),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ],
        ));
  }
}
