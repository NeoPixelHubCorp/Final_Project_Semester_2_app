part of 'complain_bloc.dart';

@freezed
class ComplainState with _$ComplainState {
  const factory ComplainState.initial() = _Initial;
  const factory ComplainState.loading() = _Loading;
  const factory ComplainState.success(ComplainResponseModel complainResponseModel) = _Success;
  const factory ComplainState.error(String message) = _Error;
}
