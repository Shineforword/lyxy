import 'package:http/http.dart' as http;

class LyxyHttp {
  // var url = Uri.https(lyxyMockApiPostHost, '/lists', {'q': '{http}'});
  var url = Uri.https("console-mock.apipost.cn",
      '/mock/f5ea970a-6907-43da-9117-6a585433668e/lists');
  // Await the http get response, then decode the json-formatted response.
  Future<http.Response> fetchGet() async {
    var response = await http.get(url);
    return response;
  }
}
