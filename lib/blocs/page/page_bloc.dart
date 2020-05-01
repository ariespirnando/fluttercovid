import 'dart:async';

import 'package:bloc/bloc.dart'; 
import 'package:equatable/equatable.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  @override
  PageState get initialState => PageInitial();

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if(event is GoToHomePage){ 
      yield HomePage();
    }else if(event is GoToListProvinsi){
      yield ListProvinsi();
    }else if(event is GoToListKasus){
      yield ListKasus();
    }
  }
}
