import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:semester_project/layout/charity_app/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:semester_project/layout/charity_app/home_layout.dart';
import 'package:semester_project/modules/account_donations/account_donations_screen.dart';
import 'package:semester_project/modules/charities/charities_screen.dart';
import 'package:semester_project/modules/home/home_screen.dart';
import 'package:semester_project/modules/my_account/my_account_screen.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit():super(AppInitialState());

  static AppCubit get(context)=>BlocProvider.of(context);

  int currentIndex=3;

  List<Widget> screens =[
    CharitiesScreen(),
    HomeScreen(),
    const AccountDonationsScreen(),
    const MyAccountScreen(),


  ];

  void changeBottomNavBar(int index)
  {
    currentIndex=index;
    emit(AppChangeBottomNavBarState());

  }

   void sc()
   {}


}