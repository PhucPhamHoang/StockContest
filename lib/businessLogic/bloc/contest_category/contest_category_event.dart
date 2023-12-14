part of 'contest_category_bloc.dart';

@freezed
class ContestCategoryEvent with _$ContestCategoryEvent {
  const factory ContestCategoryEvent.fetch({
    String? userid,
  }) = _FetchEvent;
}
