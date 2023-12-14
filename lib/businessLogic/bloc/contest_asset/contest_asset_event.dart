part of 'contest_asset_bloc.dart';

@freezed
class ContestAssetEvent with _$ContestAssetEvent {
  const factory ContestAssetEvent.fetch({
    String? userid,
  }) = _FetchEvent;
}
