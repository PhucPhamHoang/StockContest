import 'NetworkEnum.dart';

typedef NetworkCallBack<R> = R Function(dynamic);
typedef NetworkOnFailureCallBackWithMessage<R> = R Function(
    NetworkResponseErrorType, String?, String? content);
