import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppStyle.dart';

class TextTimer extends StatefulWidget {
  final String? prefixText;
  final String? postfixText;
  final TextStyle? styleTime;
  final TextStyle? stylePrefix;
  final TextStyle? stylePostfix;
  final DateTime time;
  final Function? onFinished;
  final bool? onlyMS;

  const TextTimer({
    Key? key,
    this.postfixText,
    this.prefixText,
    required this.time,
    this.stylePostfix,
    this.stylePrefix,
    this.onFinished,
    this.styleTime,
    this.onlyMS,
  }) : super(key: key);

  @override
  State createState() => _TextTimerState();
}

class _TextTimerState extends State<TextTimer>
    with SingleTickerProviderStateMixin {
  // Timer? _timer;
  int countDown = 0;
  Ticker? _ticker;
  int get differentTime =>
      widget.time.difference(DateTime.now().toUtc()).inSeconds;

  @override
  void initState() {
    super.initState();
    startCountDown();
  }

  void startCountDown() {
    _ticker = createTicker((elapsed) {
      var _differenceTime = differentTime;
      if (_differenceTime < 0) {
        if (mounted) {
          setState(() {
            countDown = 0;
          });
        }
        widget.onFinished?.call();
        // _ticker?.dispose();
      } else {
        if (_differenceTime != countDown) {
          if (mounted) {
            setState(() {
              countDown = _differenceTime;
            });
          }
        }
      }
    });
    _ticker?.start();
  }

  @override
  void dispose() {
    _ticker?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String time = Duration(seconds: countDown)
        .toString()
        .split('.')
        .first
        .padLeft(8, "0");
    if (widget.onlyMS == true) {
      time = time.replaceFirst('00:', '');
    }

    return RichText(
      text: TextSpan(children: [
        if (widget.prefixText != null)
          TextSpan(
            text: widget.prefixText,
            style: widget.stylePrefix ?? AppStyle.medianRegular,
          ),
        TextSpan(
          text: time,
          // .padRight(2, '0'),
          style: widget.styleTime ??
              AppStyle.medianRegular.copyWith(color: AppColor.redDark),
        ),
        if (widget.postfixText != null)
          TextSpan(
            text: widget.postfixText,
            style: widget.stylePostfix ?? AppStyle.medianRegular,
          ),
      ]),
    );
  }
}
