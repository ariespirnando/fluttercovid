part of 'model.dart';
class Kasus extends Equatable{
  final String kodeProvinsi;
  final String namaProvinsi;
  final String kasusPositif;
  final String kasusSembuh;
  final String kasusMeninggal; 

  Kasus(
      {this.kodeProvinsi,
      this.namaProvinsi,
      this.kasusPositif,
      this.kasusSembuh,
      this.kasusMeninggal,});

  factory Kasus.fromJson(Map<String, dynamic> json) => Kasus(
    kodeProvinsi : json['kode_provinsi'],
    namaProvinsi : json['nama_provinsi'],
    kasusPositif : json['kasus_positif'],
    kasusSembuh  :json['kasus_sembuh'],
    kasusMeninggal :  json['kasus_meninggal'], 
  );


  @override 
  List<Object> get props => [kodeProvinsi,namaProvinsi,kasusPositif,kasusSembuh,kasusMeninggal];
}
 