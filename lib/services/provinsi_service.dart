part of 'service.dart';

class ResultProvinsi {
  List<Provinsi> provinsi;
  String message;
  ResultProvinsi({this.provinsi,this.message});
}

class ProvinsiService {
  static Future<ResultProvinsi> getProvinsi({http.Client client}) async {
    String url = apiUrl + "allprovinsi";
    client ??= http.Client();
    try {
      client ??= http.Client();
      var response = await client.get(url);

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        List result = data['data'];
        return ResultProvinsi(provinsi: result.map((e) => Provinsi.fromJson(e)).toList());
      } else {
        return ResultProvinsi(message: "Null");
      } 
    } catch (e) {
      return ResultProvinsi(message: "Null");
    }

  }
}

