import 'package:flutter/material.dart';
import 'package:namae_dogs/src/constants/app_colors.dart';

class UpdateSchedules extends StatelessWidget {
  const UpdateSchedules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: ColorList.black),
        backgroundColor: ColorList.defaultProp,
        title: const Text(
          "更新予定リスト",
          style: TextStyle(color: ColorList.black),
        ),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            title: Text("[更新予定内容]"),
            trailing: Text("[優先度]"),
          ),
          Divider(),
          ListTile(
            title: Text("複数ページの対応"),
            trailing: Text("高"),
          ),
          ListTile(
            title: Text("ユーザー自身がテーマやウィジェットをカスタマイズ可能に"),
            trailing: Text("高"),
          ),
          ListTile(
            title: Text("デザインの改良"),
            trailing: Text("中"),
          ),
          ListTile(
            title: Text("Periodsの時間表示"),
            trailing: Text("小"),
          ),
        ],
      ),
    );
  }
}
