part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();
  
  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}
final class HomeLoadInProgress extends HomeState{}
final class HomeLoadSuccess extends HomeState{
  Producto producto;
  HomeLoadSuccess(this.producto);
}
final class HomeLoadFailure extends HomeState{}
