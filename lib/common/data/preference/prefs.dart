import 'package:ttos_app/common/data/preference/item/nullable_preference_item.dart';
import 'package:ttos_app/common/data/preference/item/preference_item.dart';
import 'package:ttos_app/common/data/preference/item/rx_preference_item.dart';
import 'package:ttos_app/common/data/preference/item/rxn_preference_item.dart';
import 'package:ttos_app/common/theme/custom_theme.dart';

class Prefs {
  static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme');
  static final isPushOn = PreferenceItem<bool>('isPushOn', false);
  static final isPushOnRx = RxPreferenceItem<bool, RxBool>('isPushOnRx', false);
  static final sliderPosition =
      RxPreferenceItem<double, RxDouble>('sliderPosition', 0.0);
  static final birthday =
      RxnPreferenceItem<DateTime, Rxn<DateTime>>('birthday');
  static final number = RxPreferenceItem<int, RxInt>('number', 0);
}
