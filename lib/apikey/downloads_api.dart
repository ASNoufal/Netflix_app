import 'package:netflix/apikey/apikey.dart';

class Apiservice {
  static const downloads = "$baseurl/trending/all/day?api_key=$apikey";
  static const search = "$baseurl/search/movie?343611&api_key=$apikey";
  static const hotandnew = "$baseurl/movie/upcoming?api_key=$apikey";
  static const everyonewatchingservice =
      "$baseurl/movie/top_rated?api_key=$apikey";
}
//'https://api.themoviedb.org/3/search/movie?query=Jack+Reacher&api_key=0c894eaa01a14cd0f9517216f283455a';
// https://api.themoviedb.org/3/movie/upcoming?api_key=0c894eaa01a14cd0f9517216f283455a
// https://api.themoviedb.org/3/movie/top_rated?api_key=0c894eaa01a14cd0f9517216f283455a