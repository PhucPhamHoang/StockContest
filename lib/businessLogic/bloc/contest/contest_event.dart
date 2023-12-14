part of 'contest_bloc.dart';

@freezed
class ContestEvent with _$ContestEvent {
  const factory ContestEvent.fetch(
      {required int pageEnum,
      String? name,
      List<AttendStatusEnum>? listAttend,
      List<RegisteredStatusEnum>? listRegister,
      List<TransactionStatusEnum>? listTransaction,
      String? sortPrize,
      String? sortParticipant,
      int? recordPerPage,
      bool? isPublished,
      @Default(ContestModeEnum.all) ContestModeEnum type
      }) = _FetchEvent;
  const factory ContestEvent.filter() = _FilterEvent;
  const factory ContestEvent.update({required String code}) = _UpdateEvent;
}
