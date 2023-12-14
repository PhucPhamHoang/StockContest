import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:oktoast/oktoast.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppStyle.dart';

enum AppTextFormFieldEnum {
  normal,
  select,
}

class AppTextFormField extends StatefulWidget {
  AppTextFormField(
      {Key? key,
      this.label,
      this.lowerCase = false,
      this.hint,
      this.prefix,
      this.isRequired = false,
      this.readOnly = false,
      this.controller,
      this.additionalInfo = '',
      this.paddingNone = true,
      this.autofocus = false,
      this.hasBorder = true,
      this.fillColor = Colors.white,
      this.textColor = AppColor.blackText,
      this.borderColor = AppColor.whiteTextDarkest,
      this.isPassword = false,
      this.canCopy = false,
      this.contentPadding = true,
      this.textInputAction = TextInputAction.done,
      this.keyboardType = TextInputType.text,
      this.minLines = 1,
      this.maxLines = 1,
      this.focusNode,
      this.onChanged,
      this.onSubmit,
      this.textAlign = TextAlign.start,
      this.initialValue,
      this.textStyle,
      this.onUnfocus,
      this.textDirection,
      this.inputFormatters,
      this.onTap,
      this.suffix,
      this.selectables,
      this.type = AppTextFormFieldEnum.normal,
      this.paddingRightSuffix,
      this.borderRadius,
      this.textCapitalization})
      : super(key: key);

  final String? label;
  final String? initialValue;
  final double? borderRadius;
  final String? hint;
  final bool isRequired;
  final bool readOnly;
  final TextEditingController? controller;
  final String additionalInfo;
  final bool paddingNone;
  final bool autofocus;
  final bool lowerCase;
  final bool contentPadding;
  final void Function()? onTap;
  final bool hasBorder;
  final Color fillColor;
  final Color textColor;
  final Color borderColor;
  final bool isPassword;
  final bool canCopy;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final int minLines;
  final int maxLines;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmit;
  final void Function()? onUnfocus;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  final TextDirection? textDirection;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffix;
  final Widget? prefix;
  final List<dynamic>? selectables;
  final AppTextFormFieldEnum type;
  final double? paddingRightSuffix;
  final TextCapitalization? textCapitalization;

  AppTextFormField.selectable({
    Key? key,
    this.label,
    this.hint,
    this.controller,
    this.initialValue,
    this.textStyle,
    this.selectables,
    this.suffix,
    this.prefix,
    this.onChanged,
    this.paddingRightSuffix,
    this.borderRadius,
    this.textCapitalization,
    this.onTap,
  })  : textInputAction = TextInputAction.done,
        keyboardType = TextInputType.text,
        textAlign = TextAlign.start,
        fillColor = AppColor.gray2Dark.withOpacity(0.2),
        textColor = AppColor.white,
        borderColor = AppColor.gray2Dark.withOpacity(0.2),
        focusNode = null,
        inputFormatters = [],
        maxLines = 1,
        minLines = 1,
        onSubmit = null,
        onUnfocus = null,
        lowerCase = false,
        paddingNone = true,
        autofocus = false,
        hasBorder = true,
        isPassword = false,
        canCopy = false,
        contentPadding = false,
        isRequired = false,
        readOnly = true,
        additionalInfo = '',
        textDirection = null,
        type = AppTextFormFieldEnum.select,
        super(key: key);

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool _isShow = false;

  bool toggleShowHidePassword() {
    setState(() {
      _isShow = !_isShow;
    });

    return _isShow;
  }

  @override
  void initState() {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   FocusScope.of(context).focusedChild?.addListener(() {
    //     print('focus texftjfsdlkf');
    //   });
    // });
    widget.focusNode?.addListener(() {
      if (widget.focusNode?.hasFocus != true) {
        widget.onUnfocus?.call();
      } else {}
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      color: widget.textColor,
      fontWeight: FontWeight.w400,
      fontFamily: AppStyle.fontName,
      fontSize: 17,
    );

    OutlineInputBorder inputBorder = widget.hasBorder
        ? OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 5),
            borderSide: BorderSide(
              color: widget.borderColor,
            ),
          )
        : const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          );
    var label = widget.label;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (label != null)
          Text(
            label,
            style: const TextStyle(
              color: AppColor.whiteTextDarkest,
              fontWeight: FontWeight.w300,
              fontSize: 13,
            ),
          ),
        Container(
          alignment: Alignment.center,
          color: widget.hasBorder ? AppColor.transparent : widget.fillColor,
          child: Row(
            children: [
              Expanded(
                flex: widget.prefix != null ? 3 : 0,
                child: Container(
                  padding: widget.prefix != null
                      ? widget.contentPadding
                          ? (widget.readOnly
                              ? const EdgeInsets.only(
                                  left: 10, top: 10, bottom: 10)
                              : const EdgeInsets.fromLTRB(8, 10, 0, 10))
                          : const EdgeInsets.all(0)
                      : EdgeInsets.zero,
                  color: widget.fillColor,
                  child: widget.prefix ?? Container(),
                ),
              ),
              Expanded(
                flex: widget.prefix != null ? 4 : 1,
                child: TextFormField(

                  onTap:
                      // widget.type == AppTextFormFieldEnum.select
                      //     ? () async {
                      //         var data = await AppBottomSheet.showSelectableContest(
                      //           title: 'Chọn cuộc thi',
                      //           context: context,
                      //           listItems: widget.selectables ?? [],
                      //         );
                      //         if (data is String && data.isNotEmpty) {
                      //           widget.controller?.text = data;
                      //         }
                      //         if (data is SelectableDataContest) {
                      //           widget.controller?.text = data.name;
                      //           widget.onChanged?.call(data.id);
                      //         }
                      //       }
                      //     :
                      widget.onTap,
                  inputFormatters: widget.inputFormatters ??
                      [
                        TextInputFormatter.withFunction((oldValue, newValue) {
                          if (oldValue.text != newValue.text) {
                            return TextEditingValue(
                              text: newValue.text
                                  .split(' ')
                                  .map((word) => word.isNotEmpty
                                      ? '${!widget.lowerCase ? word[0].toUpperCase() : word[0]}${word.substring(1)}'
                                      : '')
                                  .join(' ')
                                  .split('.')
                                  .map((sentence) => sentence.isNotEmpty
                                      ? '${!widget.lowerCase ? sentence[0].toUpperCase() : sentence[0]}${sentence.substring(1)}'
                                      : '')
                                  .join('.'),
                              selection: newValue.selection,
                            );
                          } else {
                            return newValue;
                          }
                        })
                      ],
                  textDirection: widget.textDirection,
                  initialValue: widget.initialValue,
                  textAlign: widget.textAlign,
                  readOnly: widget.readOnly,
                  textAlignVertical: TextAlignVertical.center,
                  obscureText: widget.isPassword ? !_isShow : false,
                  enableSuggestions: !widget.isPassword,
                  autocorrect: !widget.isPassword,
                  controller: widget.controller,
                  focusNode: widget.focusNode,
                  autofocus: widget.autofocus,
                  textCapitalization:
                      widget.textCapitalization ?? TextCapitalization.none,
                  cursorColor: AppColor.blackText,
                  keyboardType: widget.keyboardType,
                  textInputAction: widget.textInputAction,
                  minLines: widget.minLines,
                  maxLines: widget.minLines > widget.maxLines
                      ? widget.minLines
                      : widget.maxLines,
                  style: widget.textStyle ?? textStyle,
                  validator: widget.isRequired
                      ? (value) {
                          if (value == null || value.isEmpty) {
                            return 'Vui lòng không để trống!';
                          }
                          return null;
                        }
                      : null,
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: widget.fillColor,
                    hintText: widget.hint,
                    hintStyle: textStyle,
                    // labelText: widget.label,
                    labelStyle: const TextStyle(
                      color: AppColor.whiteTextDarkest,
                      fontWeight: FontWeight.w300,
                      fontSize: 17,
                    ),
                    enabledBorder: inputBorder,
                    border: inputBorder,
                    focusedBorder: inputBorder,
                    errorBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(widget.borderRadius ?? 5),
                      borderSide: const BorderSide(
                        color: AppColor.red,
                      ),
                    ),
                    contentPadding: widget.contentPadding
                        ? (widget.readOnly
                            ? const EdgeInsets.all(10)
                            : const EdgeInsets.fromLTRB(8, 10, 8, 10))
                        : const EdgeInsets.all(5),

                    suffixIcon: widget.isPassword
                        ? SizedBox(
                            width: 28,
                            child: Material(
                              color: Colors.transparent,
                              type: MaterialType.circle,
                              clipBehavior: Clip.antiAlias,
                              borderOnForeground: true,
                              elevation: 0,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: toggleShowHidePassword,
                                icon: !_isShow
                                    ? const Icon(
                                        Icons.visibility,
                                        color: AppColor.orange,
                                      )
                                    : const Icon(
                                        Icons.visibility_off,
                                        color: AppColor.orange,
                                      ),
                              ),
                            ),
                          )
                        : widget.canCopy
                            ? SizedBox(
                                width: 28,
                                child: Material(
                                  color: Colors.transparent,
                                  type: MaterialType.circle,
                                  clipBehavior: Clip.antiAlias,
                                  borderOnForeground: true,
                                  elevation: 0,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      Clipboard.setData(
                                        ClipboardData(
                                          text: widget.readOnly
                                              ? widget.hint ?? ''
                                              : widget.controller?.text
                                                      .trim() ??
                                                  '',
                                        ),
                                      );
                                      showToastWidget(
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 24.0, vertical: 12.0),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            color: Colors.black45,
                                          ),
                                          child: const Text('Đã sao chép'),
                                        ),
                                        position: ToastPosition.bottom,
                                      );
                                    },
                                    icon: const ImageIcon(
                                      AssetImage("assets/icon/copy_icon.png"),
                                      color: AppColor.orange,
                                    ),
                                  ),
                                ),
                              )
                            : Padding(
                                padding: EdgeInsets.only(
                                    right: widget.paddingRightSuffix ?? 0),
                                child: widget.suffix ?? Container()),
                    suffixIconConstraints: BoxConstraints(
                      minHeight: 28,
                      maxHeight: 28,
                      minWidth: widget.isPassword ||
                              widget.canCopy ||
                              widget.suffix != null
                          ? 28 + (widget.paddingRightSuffix ?? 0)
                          : 0,
                      maxWidth: widget.isPassword ||
                              widget.canCopy ||
                              widget.suffix != null
                          ? 28 + (widget.paddingRightSuffix ?? 0)
                          : 0,
                    ),
                  ),
                  onChanged: widget.onChanged,
                  onFieldSubmitted: (value) {
                    widget.focusNode?.unfocus();
                    widget.onSubmit?.call(value);
                  },
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: widget.paddingNone
                ? 0
                : widget.additionalInfo.isNotEmpty
                    ? 26
                    : 36,
            top: widget.paddingNone
                ? 0
                : widget.additionalInfo.isNotEmpty
                    ? 4
                    : 0,
          ),
          child: widget.additionalInfo.isNotEmpty
              ? Text(
                  widget.additionalInfo,
                  style: const TextStyle(
                    color: Color(0xff6c6b71),
                    fontWeight: FontWeight.w400,
                    fontFamily: AppStyle.fontName,
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                )
              : Container(),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

// SizedBox(
//                         width: 20,
//                         child: Material(
//                           color: Colors.transparent,
//                           type: MaterialType.circle,
//                           clipBehavior: Clip.antiAlias,
//                           borderOnForeground: true,
//                           elevation: 0,
//                           child: IconButton(
//                             padding: EdgeInsets.zero,
//                             onPressed: () {
//                               Clipboard.setData(
//                                 ClipboardData(
//                                   text: copyText.isEmpty ? labelText : copyText,
//                                 ),
//                               );
//                               showToastWidget(
//                                 Container(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 24.0, vertical: 12.0),
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(25.0),
//                                     color: Colors.black45,
//                                   ),
//                                   child: const Text('Đã sao chép'),
//                                 ),
//                                 position: ToastPosition.bottom,
//                               );
//                             },
//                             icon: const ImageIcon(
//                               AssetImage("assets/icon/copy_icon.png"),
//                               color: Styles.orange,
//                             ),
//                           ),
//                         ),
//                       )caaaf
