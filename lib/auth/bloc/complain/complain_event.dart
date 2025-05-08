part of 'complain_bloc.dart';

@freezed
class ComplainEvent with _$ComplainEvent {
  const factory ComplainEvent.started() = _Started;
  const factory ComplainEvent.getLaporan() = _GetLaporan;
  const factory ComplainEvent.createLaporan(Complain model) = _CreateLaporan;
  const factory ComplainEvent.updateLaporan(Complain model) = _UpdateLaporan;
  const factory ComplainEvent.deleteLaporan(int id) = _DeleteLaporan;
  const factory ComplainEvent.getLocalCompalin() = _GetLocalCompalin;
  //  fetch form state
  const factory ComplainEvent.fetchAllFormState() = _FetchAllFormState;
}
