import 'package:bsketball/cubit/counterState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;
  int teamBPoints = 0;

  void TeamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
      // emit =>>> tal3ly State bta3ty

    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}


//
//  // tareee2a Tanya ---
// void TeamAIncrement({required String team, required int buttonNumber}){
// if (team =='A'){
//  teamAPoints+=buttonNumber;
//  emit(CounterAIncrementState());
// }else{
//  teamBPoints+=buttonNumber;
//  emit(CounterBIncrementState());
// }
//
// }
