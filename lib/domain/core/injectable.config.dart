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
import 'package:netflix/application/downloads/downloads_bloc.dart' as _i12;
import 'package:netflix/application/fastlaugh/fast_laugh_bloc.dart' as _i13;
import 'package:netflix/application/hotandnew/hotandnew_bloc.dart' as _i14;
import 'package:netflix/application/search/search_bloc.dart' as _i11;
import 'package:netflix/domain/downloads/fazardsORrepo/downloads__repo.dart'
    as _i3;
import 'package:netflix/domain/everyonewatching/everyonerepo/everyone_repo.dart'
    as _i5;
import 'package:netflix/domain/Hotandnew/fazad_or_repo/hotandnew_repo.dart'
    as _i7;
import 'package:netflix/domain/search/fazard%20or%20repo/search__repo.dart'
    as _i9;
import 'package:netflix/infrastructure/downloads/downloads_repository.dart'
    as _i4;
import 'package:netflix/infrastructure/everyonewatching.dart' as _i6;
import 'package:netflix/infrastructure/hotandnew/hotandnew_repository.dart'
    as _i8;
import 'package:netflix/infrastructure/searchitems/search_repository.dart'
    as _i10;

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
    gh.lazySingleton<_i5.Ieveryonerepo>(() => _i6.Everyonewatchingrepo());
    gh.lazySingleton<_i7.IhotandnewRepo>(() => _i8.Hotandnewrepo());
    gh.lazySingleton<_i9.IsearchRepo>(() => _i10.Search());
    gh.factory<_i11.SearchBloc>(() => _i11.SearchBloc(
          gh<_i3.IDownloadrepo>(),
          gh<_i9.IsearchRepo>(),
        ));
    gh.factory<_i12.DownloadsBloc>(
        () => _i12.DownloadsBloc(gh<_i3.IDownloadrepo>()));
    gh.factory<_i13.FastLaughBloc>(
        () => _i13.FastLaughBloc(gh<_i3.IDownloadrepo>()));
    gh.factory<_i14.HotandnewBloc>(() => _i14.HotandnewBloc(
          gh<_i7.IhotandnewRepo>(),
          gh<_i5.Ieveryonerepo>(),
        ));
    return this;
  }
}
