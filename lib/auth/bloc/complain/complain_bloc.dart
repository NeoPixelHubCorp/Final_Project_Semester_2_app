import 'package:bloc/bloc.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/response/complain_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'complain_event.dart';
part 'complain_state.dart';
part 'complain_bloc.freezed.dart';
class ComplainBloc extends Bloc<ComplainEvent, ComplainState> {
  ComplainBloc() : super(_Initial()) {
    on<ComplainEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
