import 'package:flutter/material.dart';
import 'package:configura_tiles/configura_tiles.dart';

class TileHeaderDemo extends StatefulWidget {
  const TileHeaderDemo({Key? key}) : super(key: key);

  @override
  State<TileHeaderDemo> createState() => _TileHeaderDemoState();
}

class _TileHeaderDemoState extends State<TileHeaderDemo> {
  @override
  Widget build(BuildContext context) {
    return ConfiguraTileForge(
      appBarConfig: ConfiguraAppBar(
        enabled: true,
        title: 'Tile Header Demo',
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
          headerText: 'Header inside example',
          textAlignment: CrossAxisAlignment.start,
          headerSpacing: 10.0,
          tileColor: Colors.black,
          leading: const Icon(Icons.text_fields, color: Colors.white),
          title: 'Header Inside demo',
          subtitle: 'Example of header text inside',
          onTap: () {},
          iconColor: Colors.white,
          titleColor: Colors.white,
          subtitleColor: Colors.grey[300],
          headerTextColor: Colors.white, // Set the header text color
          headerPositionOutside: false, // Position header inside
          visibilityCondition: () => true, // Optional condition
        ),
        ConfiguraTile(
          headerText: 'Header example outside',
          textAlignment: CrossAxisAlignment.start,
          headerSpacing: 10.0,
          tileColor: Colors.black,
          leading: const Icon(Icons.text_fields, color: Colors.white),
          title: 'Header example outside',
          subtitle: 'Example of header text outside',
          onTap: () {},
          iconColor: Colors.white,
          titleColor: Colors.white,
          subtitleColor: Colors.grey[300],
          headerTextColor: Colors.black, // Set the header text color
          headerPositionOutside: true, // Position header outside
          visibilityCondition: () => true, // Optional condition
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
