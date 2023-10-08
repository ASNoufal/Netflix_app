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
import 'package:netflix/application/downloads/downloads_bloc.dart' as _i9;
import 'package:netflix/application/fastlaugh/fast_laugh_bloc.dart' as _i10;
import 'package:netflix/application/hotandnew/hotandnew_bloc.dart' as _i3;
import 'package:netflix/application/search/search_bloc.dart' as _i8;
import 'package:netflix/domain/downloads/fazardsORrepo/downloads__repo.dart'
    as _i4;
import 'package:netflix/domain/search/fazard%20or%20repo/search__repo.dart'
    as _i6;
import 'package:netflix/infrastructure/downloads/downloads_repository.dart'
    as _i5;
import 'package:netflix/infrastructure/searchitems/search_repository.dart'
    as _i7;

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
    gh.factory<_i3.HotandnewBloc>(() => _i3.HotandnewBloc(gh<InvalidType>()));
    gh.lazySingleton<_i4.IDownloadrepo>(() => _i5.Downloadrepostary());
    gh.lazySingleton<_i6.IsearchRepo>(() => _i7.Search());
    gh.factory<_i8.SearchBloc>(() => _i8.SearchBloc(
          gh<_i4.IDownloadrepo>(),
          gh<_i6.IsearchRepo>(),
        ));
    gh.factory<_i9.DownloadsBloc>(
        () => _i9.DownloadsBloc(gh<_i4.IDownloadrepo>()));
    gh.factory<_i10.FastLaughBloc>(
        () => _i10.FastLaughBloc(gh<_i4.IDownloadrepo>()));
    return this;
  }
}
