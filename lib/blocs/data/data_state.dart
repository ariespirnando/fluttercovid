part of 'data_bloc.dart';

abstract class DataState extends Equatable {
  const DataState();
}

class DataInitial extends DataState {
  @override
  List<Object> get props => [];
}

class LoadKasusPerProvinsi extends DataState {
  final ResultKasusProvinsi resultKasusProvinsi;
  LoadKasusPerProvinsi({this.resultKasusProvinsi});
  @override 
  List<Object> get props => [resultKasusProvinsi];
}
class LoadProvinsi extends DataState{
  final ResultProvinsi resultProvinsi;
  LoadProvinsi({this.resultProvinsi});
  @override 
  List<Object> get props => [resultProvinsi];
}
