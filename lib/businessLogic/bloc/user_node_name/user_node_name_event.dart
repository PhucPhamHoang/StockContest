part of 'user_node_name_bloc.dart';

@freezed
class UserNodeNameEvent with _$UserNodeNameEvent {
  const factory UserNodeNameEvent.fetch() = _FetchEvent;
}
