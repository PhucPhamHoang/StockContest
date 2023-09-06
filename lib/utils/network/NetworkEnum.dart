enum NetworkResponseErrorType {
  socket,
  exception,
  responseEmpty,
  didNotSucceed,
  errorCode,
}

enum CallBackParameterName {
  all,
}

extension CallbackParameterNameExtention on CallBackParameterName {
  dynamic getJson(json) {
    if (json == null) return null;
    switch (this) {
      case CallBackParameterName.all:
        return json;
    }
  }
}
