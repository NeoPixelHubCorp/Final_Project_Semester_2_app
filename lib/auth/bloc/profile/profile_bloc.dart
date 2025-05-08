import 'package:bloc/bloc.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/dataSources/profile_remote_datasource.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/request/profile_request_model.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/response/profile_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRemoteDatasource profileRemoteDatasource;

  List<User> users = [];

  ProfileBloc(this.profileRemoteDatasource) : super(const _Initial()) {
    // Ambil data profil dari server
    on<_GetProfile>((event, emit) async {
      emit(const _Loading());
      final response = await profileRemoteDatasource.getProfile();

      response.fold(
        (error) => emit(ProfileState.error(error)),
        (data) {
          if (data.user != null) {
            users = [data.user!];
          } else {
            users = [];
          }
          emit(ProfileState.success(users));
        },
      );
    });

    // Update profil
    on<_UpdateProfile>((event, emit) async {
      emit(const _Loading());

      final requestData = ProfileRequestModel(
        name: event.model.name,
        email: event.model.email,
        password: event.model.password,
        passwordConfirmation: event.model.passwordConfirmation,
      );

      final response = await profileRemoteDatasource.updateProfile(
        requestData,
        event.model.id!,
      );

      response.fold(
        (error) => emit(ProfileState.error(error)),
        (data) {
          if (data.user != null) {
            users = [data.user!];
          } else {
            users = [];
          }
          emit(ProfileState.success(users));
        },
      );
    });

    // Kembalikan state terakhir
    on<_FetchAllFormState>((event, emit) async {
      emit(const _Loading());
      emit(ProfileState.success(users));
    });
  }
}
