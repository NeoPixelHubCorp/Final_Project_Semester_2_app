import 'package:bloc/bloc.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/auth_remote_datasource.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/request/register_request_model.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/response/auth_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRemoteDatasource authRemoteDataSource;

  RegisterBloc(this.authRemoteDataSource) : super(_Initial()) {
    on<_Register>((event, emit) async {
      emit(const RegisterState.loading());

      try {
        if (event.password != event.passwordConfirmation) {
          emit(const RegisterState.error("Konfirmasi kata sandi tidak cocok"));
          return;
        }

        if (event.password.length < 8) {
          emit(const RegisterState.error("Password minimal 8 karakter"));
          return;
        }

        final dataRequest = RegisterRequestModel(
          name: event.name,
          email: event.email,
          password: event.password,
          phoneNumber: event.phoneNumber,
          passwordConfirmation: event.password,
        );

        final response = await authRemoteDataSource.register(dataRequest);

        response.fold(
          (error) => emit(_Error(error)),
          (success) => emit(_Success(success)),
        );
      } catch (e) {
        emit(RegisterState.error("Terjadi kesalahan: ${e.toString()}"));
      }
    });
  }
}
