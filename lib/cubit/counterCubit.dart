import 'package:bsketball/cubit/counterState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterAIncrementState());
  int teamAPoints = 0;

  int teamBPoints = 0;

  void TeamAIncrement(int buttonNumber){
   teamAPoints+=buttonNumber;
emit(CounterAIncrementState());
// emit  tal3ly Stste bta3ty
  }
  void TeamBIncrement(int buttonNumber){
   teamBPoints+=buttonNumber;
   emit(CounterBIncrementState());

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