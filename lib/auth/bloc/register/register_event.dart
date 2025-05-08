part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.register({
    required String name,
    required String email,
    required String password,
    required String phoneNumber,
    required String passwordConfirmation,
  }) = _Register;
}
