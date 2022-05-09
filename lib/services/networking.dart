import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      // var jsonResponse =
      //     convert.jsonDecode(response.body) as Map<String, dynamic>;
      String data = response.body;
      return convert.jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}