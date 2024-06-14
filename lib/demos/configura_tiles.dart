import 'package:flutter/material.dart';
import 'package:configura_tiles/configura_tiles.dart';
import 'appbar/appbar_demo.dart';
import 'theme/theme_demo.dart';
import 'tile_header/tile_header.dart';
import 'visibility/visibility_demo.dart';

class TilesDemo extends StatefulWidget {
  const TilesDemo({Key? key}) : super(key: key);

  @override
  State<TilesDemo> createState() => _TilesDemoState();
}

class _TilesDemoState extends State<TilesDemo> {
  @override
  Widget build(BuildContext context) {
    return ConfiguraTileForge(
      appBarConfig: ConfiguraAppBar(
        enabled: true,
        title: 'ConfiguraTile Demo',
        titleColor: Colors.white,
        backgroundColor: Colors.black,
        leadingIcon: Icons.menu,
        leadingColor: Colors.white,
        onLeadingTap: () {
          // Add logic for leading icon tap
        },
        trailingIconEnabled: true,
        trailingIcon: Icons.help,
        trailingIconColor: Colors.white,
        onTrailingTap: () {
          // Add logic for trailing icon tap
        },
      ),
      tiles: [
        ConfiguraTile(
          tileColor: Colors.black,
          leading: const Icon(Icons.visibility, color: Colors.white),
          title: 'Visibility demo',
          subtitle: 'Turn tile on/off',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VisibilityDemo(),
              ),
            );
          },
          iconColor: Colors.white,
          titleColor: Colors.white,
          subtitleColor: Colors.grey[300],
          trailing: const Icon(
            Icons.arrow_forward,
          ),
          trailingColor: Colors.white,
          visibilityEnabled: false,
          visibilityCondition: () => true, // Define your condition here
        ),
        ConfiguraTile(
          tileColor: Colors.black,
          leading: const Icon(Icons.text_fields, color: Colors.white),
          title: 'Header-text demo',
          subtitle: 'View header text',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TileHeaderDemo(),
              ),
            );
          },
          iconColor: Colors.white,
          titleColor: Colors.white,
          subtitleColor: Colors.grey[300],
          trailing: const Icon(
            Icons.arrow_forward,
          ),
          trailingColor: Colors.white,

          //headerText: 'Header Text',
          headerTextColor: Colors.black, // Set the header text color
          headerSpacing: 10.0,
          textAlignment: CrossAxisAlignment.start,
          visibilityEnabled: false,
          visibilityCondition: () => true, // Define your condition here
        ),
        ConfiguraTile(
          tileColor: Colors.black,
          leading: const Icon(Icons.settings, color: Colors.white),
          title: 'Appbar demo',
          subtitle: 'Toggle appbar configs',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AppbarDemo(),
              ),
            );
          },
          iconColor: Colors.white,
          titleColor: Colors.white,
          subtitleColor: Colors.grey[300],
          trailing: const Icon(
            Icons.arrow_forward,
          ),
          trailingColor: Colors.white,

          visibilityEnabled: false,
          visibilityCondition: () => true, // Define your condition here
        ),
        ConfiguraTile(
          tileColor: Colors.black,
          leading: const Icon(Icons.dark_mode, color: Colors.white),
          title: 'Tile-theme demo',
          subtitle: 'Tile theme change demo',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ThemeDemo(),
              ),
            );
          },
          iconColor: Colors.white,
          titleColor: Colors.white,
          subtitleColor: Colors.grey[300],
          trailing: const Icon(
            Icons.arrow_forward,
          ),
          trailingColor: Colors.white,

          visibilityEnabled: false,
          visibilityCondition: () => true, // Define your condition here
        ),
      ],
      debugMode: DebugMode.userFriendly,
      customErrorMessage: 'Oops! Something went wrong.',
      fabConfig: ConfiguraFab(
        visibility: true,
        color: Colors.black,
        icon: Icons.home,
        iconColor: Colors.white,
        onFabTap: () {
          // Add logic for FAB tap
        },
        snackbarColor: Colors.red,
        snackbarTextColor: Colors.white,
      ),
    );
  }
}
