import 'package:flutter/material.dart';
import 'package:configura_tiles/configura_tiles.dart';

class ThemeDemo extends StatefulWidget {
  const ThemeDemo({Key? key}) : super(key: key);

  @override
  State<ThemeDemo> createState() => _ThemeDemoState();
}

class _ThemeDemoState extends State<ThemeDemo> {
  bool _isDarkMode = false;

  void _toggleTheme(bool isDark) {
    setState(() {
      _isDarkMode = isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ConfiguraTileForge(
      appBarConfig: ConfiguraAppBar(
        enabled: true,
        title: 'Theme Demo',
        titleColor: _isDarkMode ? Colors.white : Colors.black,
        backgroundColor: _isDarkMode ? Colors.black : Colors.white,
        leadingIcon: Icons.arrow_back,
        leadingColor: _isDarkMode ? Colors.white : Colors.black,
        onLeadingTap: () {
          Navigator.pop(context);
        },
      ),
      tiles: [
        ConfiguraTile(
          tileColor: _isDarkMode ? Colors.black : Colors.white,
          leading: const Icon(Icons.brightness_6, color: Colors.white),
          title: 'Focus on me',
          subtitle: 'To see if I change color',
          onTap: () {},
          iconColor: _isDarkMode ? Colors.white : Colors.black,
          titleColor: _isDarkMode ? Colors.white : Colors.black,
          subtitleColor: _isDarkMode ? Colors.grey[300] : Colors.grey[700],
          visibilityEnabled: true,
          visibilityCondition: () => true, // Optional condition
          themeEnabled: true,
          tileColorDark: Colors.black,
          titleColorDark: Colors.white,
          subtitleColorDark: Colors.grey[300],
        ),
        ConfiguraTile(
          tileColor: Colors.white,
          leading: const Icon(Icons.wb_sunny),
          title: 'Light Theme',
          subtitle: 'Switch to light theme',
          onTap: () {
            _toggleTheme(false);
          },
          iconColor: Colors.black,
          titleColor: Colors.black,
          subtitleColor: const Color.fromARGB(255, 68, 68, 68),
        ),
        ConfiguraTile(
          tileColor: Colors.black,
          leading: const Icon(Icons.nights_stay, color: Colors.white),
          title: 'Dark Theme',
          subtitle: 'Switch to dark theme',
          onTap: () {
            _toggleTheme(true);
          },
          iconColor: Colors.white,
          titleColor: Colors.white,
          subtitleColor: Colors.grey[300],
        ),
      ],
      debugMode: DebugMode.userFriendly,
      customErrorMessage: 'Oops! Something went wrong.',
      fabConfig: ConfiguraFab(
        visibility: false,
      ),
    );
  }
}
