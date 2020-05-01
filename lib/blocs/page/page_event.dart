part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToHomePage extends PageEvent {  
  @override
  List<Object> get props => [];
}

class GoToListProvinsi extends PageEvent {
  List<Object> get props => [];
}
class GoToListKasus extends PageEvent {
  List<Object> get props => [];
}
