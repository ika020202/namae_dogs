import 'dart:io' show Platform;
import 'package:flutter/material.dart';

const appVersion = 'v1.0';
const appName = 'NamaeDogs';
final kAppIcon = Image.asset('res/images/launcher_icon/icon-prod.png',
    height: 64.0, width: 64.0);
const appDescription =
    'このアプリケーションはFlutterを用いて個人開発されています。' '\n\nDeveloped by MKairi';
const googlePlayURL = '';
const appStoreURL = '';
const githubURL = 'https://github.com/ika020202';
const zennSite = 'https://zenn.dev/urasan';
const twitterSite = "https://twitter.com/urasan_edu";
const myMailAddress = "ika020202@gmail.com";

// Whether the app is running on mobile phones (Android/iOS)
final kIsOnMobile = Platform.isAndroid || Platform.isIOS;
