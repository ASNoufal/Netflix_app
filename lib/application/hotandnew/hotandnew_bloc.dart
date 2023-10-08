import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/Hotandnew/fazad_or_repo/hotandnew_repo.dart';
import 'package:netflix/domain/Model/hotandnew.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part 'hotandnew_bloc.freezed.dart';

@Injectable()
class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  IhotandnewRepo hotandnewrepo;
  HotandnewBloc(this.hotandnewrepo) : super(HotandnewState.Initial()) {
    on<HotandnewEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
