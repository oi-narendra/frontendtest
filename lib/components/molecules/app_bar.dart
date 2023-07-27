import 'package:flutter/material.dart';

/// app bar for the app
class Appbar extends StatelessWidget implements PreferredSizeWidget {
  /// app bar constructor
  const Appbar({
    required this.title,
    this.implyLeading = true,
    this.actions,
    super.key,
  });

  /// imply leading boolean
  /// [implyLeading] is the boolean value to imply leading or not
  final bool implyLeading;

  /// title text
  /// [title] is the title text of the app bar
  final String title;

  /// app bar actions
  /// [actions] is the list of app bar actions
  final List<AppBarAction>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: implyLeading,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: actions?.map((action) {
        return IconButton(
          onPressed: () {
            action.onPressed?.call();
          },
          icon: Icon(
            action.icon,
            size: 24,
            color: const Color(0xFFD9D9D9),
          ),
        );
      }).toList(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}

/// app bar action class
class AppBarAction {
  /// app bar action constructor
  AppBarAction({required this.icon, this.onPressed});

  /// icon of the app bar action
  final IconData icon;

  /// on pressed callback
  final void Function()? onPressed;
}
