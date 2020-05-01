import 'dart:async';

import 'package:bloc/bloc.dart'; 
import 'package:covidflud/services/service.dart';
import 'package:equatable/equatable.dart';

part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  @override
  DataState get initialState => DataInitial();

  @override
  Stream<DataState> mapEventToState(
    DataEvent event,
  ) async* {
    if(event is EventLoadKasusProvinsi){
      ResultKasusProvinsi rs = await KasusService.getKasusPerprovinsi(event.kodeProvinsi);
      yield LoadKasusPerProvinsi(resultKasusProvinsi: rs);
    }else if(event is EventLoadProvinsi){
      ResultProvinsi kp = await ProvinsiService.getProvinsi();
      yield LoadProvinsi(resultProvinsi: kp);
    }
  }
}
