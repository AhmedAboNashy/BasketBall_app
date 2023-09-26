import 'package:bsketball/cubit/counterCubit.dart';
import 'package:bsketball/cubit/counterState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  static const String route_Name = 'home';
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Points Counter '),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/ahmed.jpg',
                        height: 90.h,
                        width: 80.w,
                      ),
                      Text(
                        'Team A',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 40.h),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 90.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(30.w, 30.h)),
                          onPressed: () {
                            ' $teamAPoints';
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20.sp),
                          )),
                      SizedBox(
                        height: 16.h,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(30.w, 30.h)),
                          onPressed: () {
                            ' $teamAPoints';
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20.sp),
                          )),
                      SizedBox(
                        height: 16.h,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(30.w, 30.h)),
                          onPressed: () {
                            ' $teamAPoints';
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20.sp),
                          )),
                    ],
                  ),
                  const SizedBox(
                      height: 400,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/ahmed.jpg',
                        height: 90.h,
                        width: 80.w,
                      ),
                      Text(
                        'Team B',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(
                        ' $teamBPoints',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 90.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(30.w, 30.h)),
                          onPressed: () {
                            ' $teamBPoints';
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20.sp),
                          )),
                      SizedBox(
                        height: 16.h,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(30.w, 30.h)),
                          onPressed: () {
                            ' $teamBPoints';
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20.sp),
                          )),
                      SizedBox(
                        height: 16.h,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(30.w, 30.h)),
                          onPressed: () {
                            ' $teamBPoints';
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20.sp),
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {
                    ' $teamBPoints';
                  },
                  child: Text(
                    'Reset',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ))
            ],
          ),
        );
      },
      listener: (context, state) {
        if (state is CounterAIncrementState) {
          teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
        } else {
          teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
        }
      },
    );
  }
}
