import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppSwitch extends StatefulWidget {
  final void Function(bool)? onChanged;
  final bool? initValue;
  final bool? autoChange;
  const AppSwitch(
      {super.key, this.onChanged, this.initValue, this.autoChange = true});

  @override
  State<AppSwitch> createState() => AppSwitchState();
}

class AppSwitchState extends State<AppSwitch> {
  bool _valueSwitch = false;
  @override
  void initState() {
    super.initState();
    if (widget.initValue != null) {
      _valueSwitch = widget.initValue!;
    }
  }

  set valueSwitch(bool value) {
    _valueSwitch = value;
    if (widget.autoChange == true) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
        value: _valueSwitch,
        onChanged: (value) {
          _valueSwitch = value;
          widget.onChanged?.call(value);
          if (widget.autoChange == true) {
            setState(() {});
          }
        });
  }
}
