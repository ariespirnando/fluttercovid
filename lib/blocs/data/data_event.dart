part of 'data_bloc.dart';

abstract class DataEvent extends Equatable {
  const DataEvent();
}

class EventLoadKasusProvinsi extends DataEvent {
  final String kodeProvinsi;
  EventLoadKasusProvinsi({this.kodeProvinsi});
  @override 
  List<Object> get props => [kodeProvinsi];
}
class EventLoadProvinsi extends DataEvent{
  @override 
  List<Object> get props => [];
}