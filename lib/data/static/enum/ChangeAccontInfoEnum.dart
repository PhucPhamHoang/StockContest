enum ChangeInfoTypeEnum{gender,dateOfBirth,phoneNum,address,}
extension ChangeInfoTypeEnumEx on ChangeInfoTypeEnum{
  String get title{
    switch(this){
      case ChangeInfoTypeEnum.gender:
        return "Giới tính";
      case ChangeInfoTypeEnum.dateOfBirth:
        return "Ngày sinh";
      case ChangeInfoTypeEnum.phoneNum:
        return "Số điện thoại";
      case ChangeInfoTypeEnum.address:
        return "Địa chỉ";
    }
  }
  String get colName{
    switch(this){
      case ChangeInfoTypeEnum.gender:
        return "gender";
      case ChangeInfoTypeEnum.dateOfBirth:
        return "dateOfBirth";
      case ChangeInfoTypeEnum.phoneNum:
        return "phonenumber";
      case ChangeInfoTypeEnum.address:
        return "address";
    }
  }
}