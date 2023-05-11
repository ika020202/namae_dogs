import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:namae_dogs/src/constants/launch_mail.dart';
import 'package:namae_dogs/src/localization/string_hardcoded.dart';
import 'package:namae_dogs/src/routing/app_router.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        elevation: .5,
        title: const Text("設定"),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('共通'.hardcoded),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.info),
                trailing: const Icon(Icons.arrow_forward_ios_rounded,
                    color: Colors.grey),
                title: Text('このアプリについて'.hardcoded),
                onPressed: (context) {
                  context.goNamed(AppRoute.thisAppInfo.name);
                },
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.list),
                trailing: const Icon(Icons.arrow_forward_ios_rounded,
                    color: Colors.grey),
                title: Text('更新予定リスト'.hardcoded),
                onPressed: (context) {
                  context.goNamed(AppRoute.updateSchedules.name);
                },
              ),
              SettingsTile.navigation(
                  leading: const Icon(Icons.email),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded,
                      color: Colors.grey),
                  title: Text('お問い合わせ'.hardcoded),
                  onPressed: (context) {
                    openMailApp();
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
