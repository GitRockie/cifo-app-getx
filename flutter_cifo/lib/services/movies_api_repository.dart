import 'package:http/http.dart' as http;

class MoviesApiRepository {
  Future<http.Response> getReqResPopularMoivies() async {
    final Map<String, dynamic> queryParams = {
      'api-key': '7547421028b942292827ce3ae9ab08f6',
      'language': 'en-US',
      'page': '1'
    };

    var url = Uri.https("api.themoviedb.org", "/3/movie/popular", queryParams);
    return await http.get(
      url,
      headers: {},
    );
  }
}
