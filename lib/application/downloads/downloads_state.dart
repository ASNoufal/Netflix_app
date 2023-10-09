part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isloading,
    required bool isError,
    required List<Downloads> downloads,
    required Option<Either<MainFailure, List<Downloads>>>
        optionforfailureorsuccess,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(
        isError: false,
        isloading: false,
        optionforfailureorsuccess: None(),
        downloads: []);
  }
}
