import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/MainFailure/MainFailure.dart';
import 'package:netflix/domain/downloads/Model/Modeldownload.dart';
import 'package:netflix/domain/downloads/fazardsORrepo/downloads__repo.dart';
import 'package:netflix/domain/search/fazard%20or%20repo/search__repo.dart';
import 'package:netflix/domain/search/searchmodel/model.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  IDownloadrepo downloadrepo;
  IsearchRepo searchrepo;
  SearchBloc(this.downloadrepo, this.searchrepo)
      : super(SearchState.initial()) {
    on<Initialsearch>((event, emit) async {
      if (state.initdata.isNotEmpty) {
        SearchState(
            isloading: false,
            isError: false,
            searchModel: [],
            initdata: state.initdata);
        return;
      }
      emit(const SearchState(
          isloading: true, isError: false, searchModel: [], initdata: []));
      final result = await downloadrepo.getdownloadsdata();
      result.fold((l) {
        emit(const SearchState(
            isloading: false, isError: true, searchModel: [], initdata: []));
      }, (sucess) {
        emit(SearchState(
            isloading: false,
            isError: false,
            searchModel: [],
            initdata: sucess));
      });
    });
    on<Getsearchdata>((event, emit) {
      searchrepo.searchservice("query");
    });
  }
}
