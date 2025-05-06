import 'package:bloc/bloc.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRemoteDatasource datasource;

  RegisterBloc(this.datasource) : super(const RegisterState.initial()) {
    on<_Submitted>((event, emit) async {
      emit(const RegisterState.loading());

      try {
        if (event.password != event.confirmPassword) {
          emit(const RegisterState.error("Konfirmasi kata sandi tidak cocok"));
          return;
        }

        if (event.password.length < 8) {
          emit(const RegisterState.error("Password minimal 8 karakter"));
          return;
        }

        final result = await datasource.register(
          name: event.name,
          email: event.email,
          password: event.password,
          confirmPassword: event.confirmPassword
        );

        result.fold(
          (error) => emit(RegisterState.error(error)),
          (_) => emit(const RegisterState.success()),
        );
      } catch (e) {
        emit(RegisterState.error("Terjadi kesalahan: ${e.toString()}"));
      }
    });
  }
}
