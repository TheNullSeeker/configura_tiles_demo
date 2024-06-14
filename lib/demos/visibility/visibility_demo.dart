import 'package:flutter/material.dart';
import 'package:configura_tiles/configura_tiles.dart';

class VisibilityDemo extends StatefulWidget {
  const VisibilityDemo({Key? key}) : super(key: key);

  @override
  State<VisibilityDemo> createState() => _VisibilityDemoState();
}

class _VisibilityDemoState extends State<VisibilityDemo> {
  bool isTileVisible = true;

  @override
  Widget build(BuildContext context) {
    return ConfiguraTileForge(
      appBarConfig: ConfiguraAppBar(
        enabled: true,
        title: 'Visibility Demo',
        titleColor: Colors.white,
        backgroundColor: Colors.black,
        leadingIcon: Icons.arrow_back,
        leadingColor: Colors.white,
        onLeadingTap: () {
          Navigator.pop(context);
        },
      ),
      tiles: [
        ConfiguraTile(
          tileColor: Colors.black,
          leading: const Icon(Icons.visibility, color: Colors.white),
          title: 'Now you see me',
          subtitle: 'Now you don\'t',
          onTap: () {},
          iconColor: Colors.white,
          titleColor: Colors.white,
          subtitleColor: Colors.grey[300],
          visibilityEnabled: true,
          visibilityCondition: () => isTileVisible,
        ),
        ConfiguraTile(
          tileColor: Colors.black,
          leading: const Icon(Icons.visibility_off, color: Colors.white),
          title: 'Disappear',
          subtitle: 'Make it disappear',
          onTap: () {
            setState(() {
              isTileVisible = false;
            });
          },
          iconColor: Colors.white,
          titleColor: Colors.white,
          subtitleColor: Colors.grey[300],
        ),
        ConfiguraTile(
          tileColor: Colors.black,
          leading: const Icon(Icons.remove_red_eye, color: Colors.white),
          title: 'Reappear',
          subtitle: 'Make it reappear',
          onTap: () {
            setState(() {
              isTileVisible = true;
            });
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
        color: Colors.black,
        icon: Icons.arrow_back,
        iconColor: Colors.white,
        onFabTap: () {
          Navigator.pop(context);
        },
        snackbarColor: Colors.red,
        snackbarTextColor: Colors.white,
      ),
    );
  }
}
