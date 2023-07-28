import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      leading: implyLeading
          ? IconButton(
              onPressed: () {
                if (Navigator.canPop(context)) Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 24,
                color: Color(0xFF313B49),
              ),
            )
          : null,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: actions?.map((action) {
        return IconButton(
          onPressed: () {
            action.onPressed?.call();
          },
          icon: Icon(
            action.icon,
            size: 24,
            color: const Color(0xFFAFB9CA),
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
