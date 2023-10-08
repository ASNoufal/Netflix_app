// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix/application/downloads/downloads_bloc.dart' as _i10;
import 'package:netflix/application/fastlaugh/fast_laugh_bloc.dart' as _i11;
import 'package:netflix/application/hotandnew/hotandnew_bloc.dart' as _i12;
import 'package:netflix/application/search/search_bloc.dart' as _i9;
import 'package:netflix/domain/downloads/fazardsORrepo/downloads__repo.dart'
    as _i3;
import 'package:netflix/domain/Hotandnew/fazad_or_repo/hotandnew_repo.dart'
    as _i5;
import 'package:netflix/domain/search/fazard%20or%20repo/search__repo.dart'
    as _i7;
import 'package:netflix/infrastructure/downloads/downloads_repository.dart'
    as _i4;
import 'package:netflix/infrastructure/hotandnew/hotandnew_repository.dart'
    as _i6;
import 'package:netflix/infrastructure/searchitems/search_repository.dart'
    as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IDownloadrepo>(() => _i4.Downloadrepostary());
    gh.lazySingleton<_i5.IhotandnewRepo>(() => _i6.Hotandnewrepo());
    gh.lazySingleton<_i7.IsearchRepo>(() => _i8.Search());
    gh.factory<_i9.SearchBloc>(() => _i9.SearchBloc(
          gh<_i3.IDownloadrepo>(),
          gh<_i7.IsearchRepo>(),
        ));
    gh.factory<_i10.DownloadsBloc>(
        () => _i10.DownloadsBloc(gh<_i3.IDownloadrepo>()));
    gh.factory<_i11.FastLaughBloc>(
        () => _i11.FastLaughBloc(gh<_i3.IDownloadrepo>()));
    gh.factory<_i12.HotandnewBloc>(
        () => _i12.HotandnewBloc(gh<_i5.IhotandnewRepo>()));
    return this;
  }
}
