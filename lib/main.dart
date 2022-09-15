import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:semester_project/layout/charity_app/cubit/cubit.dart';
import 'package:semester_project/layout/charity_app/cubit/states.dart';
import 'package:semester_project/modules/charity_ads/charity_ads_screen.dart';
import 'package:semester_project/modules/my_account/my_account_screen.dart';
import 'package:sizer/sizer.dart';

import 'bloc_observer.dart';
import 'layout/charity_app/home_layout.dart';
import 'modules/account_donations/account_donations_screen.dart';
import 'modules/charities/charities_screen.dart';
import 'modules/home/home_screen.dart';
import 'modules/notification_settings/notification_settings_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> AppCubit()),
      ],
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},
        builder: (context,state){
          return Sizer(
              builder: (context, orientation, deviceType) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: HomeLayout(),
                );
              }
          );
        },
      ),
    );
  }
}


