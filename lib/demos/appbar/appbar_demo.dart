import 'package:flutter/material.dart';
import 'package:configura_tiles/configura_tiles.dart';

class AppbarDemo extends StatefulWidget {
  const AppbarDemo({Key? key}) : super(key: key);

  @override
  State<AppbarDemo> createState() => _AppbarDemoState();
}

class _AppbarDemoState extends State<AppbarDemo> {
  bool _appBarEnabled = true;
  bool _implyLeading = true;
  bool _trailingEnabled = true;

  void _toggleAppBar() {
    setState(() {
      _appBarEnabled = !_appBarEnabled;
    });
  }

  void _toggleImplyLeading() {
    setState(() {
      _implyLeading = !_implyLeading;
    });
  }

  void _toggleTrailing() {
    setState(() {
      _trailingEnabled = !_trailingEnabled;
    });
  }

  void _showCustomFunctionality(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          title: const Text(
            'Custom Functionality',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Close',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConfiguraTileForge(
      appBarConfig: ConfiguraAppBar(
        enabled: _appBarEnabled,
        title: 'App Bar Demo',
        titleColor: Colors.white,
        backgroundColor: Colors.black,
        leadingIcon: _implyLeading ? Icons.menu : null,
        leadingColor: Colors.white,
        onLeadingTap:
            _implyLeading ? () => _showCustomFunctionality(context) : null,
        trailingIcon: _trailingEnabled ? Icons.more_vert : null,
        trailingIconColor: Colors.white,
        trailingIconEnabled: _trailingEnabled,
        onTrailingTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Colors.black,
                title: const Text(
                  'Test Successful',
                  style: TextStyle(color: Colors.white),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Close',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
      tiles: [
        ConfiguraTile(
          tileColor: Colors.black,
          leading: const Icon(
            Icons.app_registration,
          ),
          title: 'Toggle App Bar',
          subtitle: _appBarEnabled ? 'Enabled' : 'Disabled',
          onTap: _toggleAppBar,
          iconColor: Colors.white,
          titleColor: Colors.white,
          subtitleColor: Colors.white,
          trailing: const Icon(
            Icons.arrow_forward,
          ),
          trailingColor: Colors.white,
        ),
        ConfiguraTile(
          tileColor: Colors.black,
          leading: Icon(
            _implyLeading ? Icons.visibility : Icons.visibility_off,
            color: Colors.white,
          ),
          title: 'Toggle Leading',
          subtitle: _implyLeading ? 'On' : 'Off',
          onTap: _toggleImplyLeading,
          iconColor: Colors.white,
          titleColor: Colors.white,
          subtitleColor: Colors.white,
          trailing: const Icon(
            Icons.arrow_forward,
          ),
          trailingColor: Colors.white,
        ),
        ConfiguraTile(
          tileColor: Colors.black,
          leading: Icon(
            _trailingEnabled ? Icons.more_vert : Icons.close,
            color: Colors.white,
          ),
          title: 'Toggle Trailing',
          subtitle: _trailingEnabled ? 'On' : 'Off',
          onTap: _toggleTrailing,
          iconColor: Colors.white,
          titleColor: Colors.white,
          subtitleColor: Colors.white,
          trailing: const Icon(
            Icons.arrow_forward,
          ),
          trailingColor: Colors.white,
        ),
      ],
      debugMode: DebugMode.userFriendly,
      customErrorMessage: 'Oops! Something went wrong.',
    );
  }
}
