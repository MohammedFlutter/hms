import 'package:flutter/material.dart';

class CustomSnakeBar {
  static void show(
      {required BuildContext context,
      required bool isError,
      required String message,
      Color? backgroundColor,
      Duration duration = const Duration(seconds: 2)}) {
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //     content: Row(
    //       children: [
    //         isError
    //             ? const Icon(Icons.error, color: Colors.white)
    //             : const Icon(
    //                 Icons.check,
    //                 color: Colors.white,
    //               ),
    //         const SizedBox(width: 8),
    //         Text(
    //           message,
    //           style: const TextStyle(color: Colors.white),
    //         ),
    //       ],
    //     ),
    //     backgroundColor: isError ? Colors.red : Colors.green,
    //     duration: duration,
    //   ),
    // );
    final theme = Theme.of(context); // Get current theme

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            isError
                ? Icon(Icons.error, color: theme.colorScheme.onError)
                : Icon(Icons.check, color: theme.colorScheme.onPrimary),
            const SizedBox(width: 8),
            Text(
              message,
              style: TextStyle(color: theme.colorScheme.onError), // Use onError for contrast
            ),
          ],
        ),
        backgroundColor: isError ? theme.colorScheme.error : theme.colorScheme.primary, // Use theme colors
        duration: duration,
      ),
    );
  }
}
