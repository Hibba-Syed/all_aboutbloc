import 'dart:async';

import 'package:bloc/src/cubit.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  Connectivity _connectivity = Connectivity();
  StreamSubscription? connectivitySubscription;

  InternetCubit() : super(InternetState.Initial) {
    connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((result) {
          if (result == ConnectivityResult.mobile ||
              result == ConnectivityResult.wifi){
            emit(InternetState.Gained);
          }else{
            emit(InternetState.Lost);
          }

        });
  }
  @override
  Future<void> close(){
    connectivitySubscription?.cancel();
    return super.close();
  }
}
