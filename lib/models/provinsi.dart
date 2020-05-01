part of 'model.dart';
class Provinsi extends Equatable{
  final String kodeProvinsi;
  final String namaProvinsi;  

  Provinsi(
      {this.kodeProvinsi,
      this.namaProvinsi,});

  factory Provinsi.fromJson(Map<String, dynamic> json) => Provinsi(
    kodeProvinsi : json['kode_provinsi'],
    namaProvinsi : json['nama_provinsi'],
  );


  @override 
  List<Object> get props => [kodeProvinsi,namaProvinsi];
}
 