import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:namae_dogs/src/constants/app_info.dart';
import 'package:namae_dogs/src/constants/launch_mail.dart';
import 'package:namae_dogs/src/localization/string_hardcoded.dart';

class ThisAppInfoPage extends StatelessWidget {
  const ThisAppInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          elevation: .5,
          title: Text("このアプリについて".hardcoded),
          systemOverlayStyle:
              SystemUiOverlayStyle.dark, // status bar brightness
        ),
      ),
      body: ListView(
        children: <Widget>[
          const ListTile(
            leading: FlutterLogo(),
            title: Text(appName),
            subtitle: Text(appVersion),
          ),
          const ListTile(
            title: Text(appDescription),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.email),
            title: Text('Feedback by E-mail'.hardcoded),
            onTap: () {
              openMailApp();
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: Text("Using Web APIs".hardcoded),
            onTap: () {
              Navigator.of(context).pushNamed("/WebAPILicense");
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
