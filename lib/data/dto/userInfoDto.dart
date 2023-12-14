class UserInfoDto{
  final String? gender;
  final String? dateOfBirth;
  final String? phoneNum;
  final String? address;
  final String? avatar;

  UserInfoDto(this.gender, this.dateOfBirth,
      this.phoneNum, this.address, this.avatar);
}

class UserInfoRepo{
  final String columnName;
  final dynamic dataField;

  UserInfoRepo(this.columnName, this.dataField);
}