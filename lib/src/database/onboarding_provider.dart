import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_provider.g.dart';

final sharedPreferencesProvider =
    Provider<SharedPreferences>((_) => throw UnimplementedError());

@Riverpod(keepAlive: true)
bool showOnBoarding(ShowOnBoardingRef ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  // return prefs.getBool('showOnBoarding') ?? true;
  // ! デバッグのためにfalseにしている
  return prefs.getBool('showOnBoarding') ?? false;
}
