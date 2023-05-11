import 'package:namae_dogs/src/constants/app_info.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<void> launchURL(String url) async {
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    final Error error = ArgumentError('Could not launch $url');
    throw error;
  }
}

void openMailApp() async {
  final title = Uri.encodeComponent('TimeTableへの問い合わせ');
  final body = Uri.encodeComponent('--この文より下へご記入ください--');
  const mailAddress = myMailAddress;

  return launchURL('mailto:$mailAddress?subject=$title&body=$body');
}
