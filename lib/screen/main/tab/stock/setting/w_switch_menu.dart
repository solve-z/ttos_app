import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:ttos_app/common/common.dart';
import 'package:ttos_app/screen/main/tab/stock/setting/w_os_switch.dart';

class SwitchMenu extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const SwitchMenu(this.title, this.value,
      {required this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.bold.make(),
        emptyExpanded,
        OsSwitch(
          value: value,
          onChanged: onChanged,
        )
      ],
    ).pSymmetric(h: 20);
  }
}
