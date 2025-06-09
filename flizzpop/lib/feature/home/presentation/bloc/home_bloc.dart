import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

import '../../../data/models/producto.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeSearchPressed>((event, emit) async{
      emit(HomeLoadInProgress());
      final url = Uri.parse('https://run.mocky.io/v3/e3a66ac6-9473-4a85-ab5b-ded8ea7f33f4');
      final response = await http.get(url);
      if (response.statusCode == 200){
        Map objectMap = jsonDecode(response.body);
        Producto producto = Producto(objectMap);
        emit(HomeLoadSuccess(producto));
      }else{
        emit(HomeLoadFailure());
      }

    });
  }
}
