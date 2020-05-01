part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();
}

class PageInitial extends PageState {
  @override
  List<Object> get props => [];
}

class HomePage extends PageState {
  List<Object> get props => [];
}
class ListProvinsi extends PageState {
  List<Object> get props => [];
}
class ListKasus extends PageState {
  List<Object> get props => [];
}
