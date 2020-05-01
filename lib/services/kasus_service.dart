part of 'service.dart';

class ResultKasusProvinsi {
  Kasus kasusProvinsi;
  String message;
  ResultKasusProvinsi({this.kasusProvinsi,this.message});
}

class KasusService {
  static Future<ResultKasusProvinsi> getKasusPerprovinsi(String kodeprovinsi, {http.Client client}) async {
    String url = apiUrl + "kasusperprovinsi";
    client ??= http.Client();
    try {
      client ??= http.Client();
      var response = await client.post(url,
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode({"kode_provinsi": kodeprovinsi}));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return ResultKasusProvinsi(kasusProvinsi: Kasus.fromJson(data['data']));
      } else {
        return ResultKasusProvinsi(message: "Null");
      } 
    } catch (e) {
      return ResultKasusProvinsi(message: "Null");
    }

  }
}

