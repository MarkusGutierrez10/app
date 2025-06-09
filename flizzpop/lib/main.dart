import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/data/models/producto.dart';
import 'feature/home/presentation/bloc/home_bloc.dart';
import 'feature/home/presentation/view/view_Sucess.dart';
import 'feature/home/presentation/view/view_failure.dart';
import 'feature/home/presentation/view/view_loading.dart';
import 'feature/home/presentation/view/view_initial.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
          home: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeLoadSuccess){
                Producto producto = state.producto;
                return Success(producto: producto);
              }else if (state is HomeLoadInProgress){
                return loading();
              }else if (state is HomeLoadFailure){
                return failure();
              }
              return Initial();
            },
          )),
    );
  }
}
