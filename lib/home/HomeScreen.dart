import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  static const String route_Name = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePoint() {}

  @override
  Widget build(BuildContext context) {
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
                children: [
                  Text(
                    'Team A',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32.sp,
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
                          minimumSize: Size(150.w, 50.h)),
                      onPressed: () {
                        teamAPoints++;
                        setState(() {

                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 32.sp),
                      )),
                  SizedBox(
                    height: 16.h,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150.w, 50.h)),
                      onPressed: () {

                        setState(() {
                          teamAPoints+=teamAPoints=2;

                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 32.sp),
                      )),
                  SizedBox(
                    height: 16.h,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150.w, 50.h)),
                      onPressed: () {
                        setState(() {
                          teamAPoints+=teamAPoints=3;

                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 32.sp),
                      )),
                ],
              ),
              const SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  )),
              Column(
                children: [
                  Text(
                    'Team B',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    '$teamBPoints',
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
                          minimumSize: Size(150.w, 50.h)),
                      onPressed: () {
                       setState(() {
                         teamBPoints++;
                       });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 32.sp),
                      )),
                  SizedBox(
                    height: 16.h,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150.w, 50.h)),
                      onPressed: () {
                        setState(() {
                          teamBPoints+=teamBPoints=2;

                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 32.sp),
                      )),
                  SizedBox(
                    height: 16.h,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150.w, 50.h)),
                      onPressed: () {
                        setState(() {
                          teamBPoints+=teamBPoints=3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 32.sp),
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

               setState(() {
                 teamAPoints=0;
                 teamBPoints=0;
               });
              },
              child: Text(
                'Reset',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w400),
              ))
        ],
      ),
    );
  }
}
